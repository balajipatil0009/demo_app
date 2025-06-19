// lib/pages/form2_page.dart
// This page will be very similar to Form1Page but with an additional field.
// For brevity, I'm providing a simplified version.
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter_desktop_app/models/form_data.dart';
import 'package:flutter_desktop_app/services/isar_service.dart';
import 'package:flutter_desktop_app/providers/form_provider.dart';
import 'package:flutter_desktop_app/utils/pdf_utils.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui; // Import for ui.ImageByteFormat
import 'package:flutter/rendering.dart'; // Import for RenderRepaintBoundary

import 'package:flutter_desktop_app/widgets/app_navigation_bar.dart';

class Form2Page extends StatefulWidget {
  final int? formId;

  const Form2Page({super.key, this.formId});

  @override
  State<Form2Page> createState() => _Form2PageState();
}

class _Form2PageState extends State<Form2Page> {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey _printKey = GlobalKey(); // GlobalKey for capturing the widget

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _adharNoController = TextEditingController();
  final TextEditingController _registerIdController = TextEditingController();
  final TextEditingController _schoolNameController =
      TextEditingController(); // New field for Form 2.

  String _dynamicName = '';
  String _dynamicAddress = '';

  Form2Data? _currentForm;

  @override
  void initState() {
    super.initState();
    if (widget.formId != null) {
      _loadFormData();
    }
    _nameController.addListener(_updateDynamicText);
    _addressController.addListener(_updateDynamicText);
  }

  Future<void> _loadFormData() async {
    final service = IsarService();
    final formData = await service.getForm2Data(widget.formId!);
    if (formData != null) {
      setState(() {
        _currentForm = formData;
        _nameController.text = formData.name;
        _phoneController.text = formData.phone;
        _addressController.text = formData.address;
        _adharNoController.text = formData.adharNo;
        _registerIdController.text = formData.registerId;
        _schoolNameController.text = formData.schoolName;
        _updateDynamicText();
      });
    }
  }

  void _updateDynamicText() {
    setState(() {
      _dynamicName = _nameController.text;
      _dynamicAddress = _addressController.text;
    });
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final service = IsarService();
      final formProvider = Provider.of<FormProvider>(context, listen: false);

      if (_currentForm == null) {
        final newForm = Form2Data()
          ..name = _nameController.text
          ..phone = _phoneController.text
          ..address = _addressController.text
          ..adharNo = _adharNoController.text
          ..registerId = _registerIdController.text
          ..schoolName = _schoolNameController.text // Assign new field.
          ..formType = FormType.form2
          ..submissionDate = DateTime.now()
          ..status = FormStatus.pending;

        await service.saveForm2Data(newForm);
        formProvider.addForm(newForm);
        _currentForm = newForm;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Form 2 submitted successfully!')),
        );
      } else {
        _currentForm!
          ..name = _nameController.text
          ..phone = _phoneController.text
          ..address = _addressController.text
          ..adharNo = _adharNoController.text
          ..registerId = _registerIdController.text
          ..schoolName = _schoolNameController.text // Update new field.
          ..submissionDate = DateTime.now();

        await service.saveForm2Data(_currentForm!);
        formProvider.updateForm(_currentForm!);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Form 2 updated successfully!')),
        );
      }
    }
  }

  Future<void> _downloadPdf() async {
    if (_formKey.currentState == null || !_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content:
                Text('Please fill all required fields before generating PDF.')),
      );
      return;
    }

    final boundary =
        _printKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    final image = await boundary.toImage(pixelRatio: 3.0);
    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    final pngBytes = byteData!.buffer.asUint8List();

    final pdfBytes = await PdfUtils.generateMultiPagePdfFromImages(
      imageBytesList: [pngBytes],
      // dynamicText: "My name is $_dynamicName, I am from $_dynamicAddress.",
    );
    await PdfUtils.savePdf(pdfBytes,
        'form2_data_${DateFormat('yyyyMMdd_HHmmss').format(DateTime.now())}.pdf');
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('PDF downloaded successfully!')),
    );
  }

  Future<void> _printPdf() async {
    if (_formKey.currentState == null || !_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content:
                Text('Please fill all required fields before printing PDF.')),
      );
      return;
    }

    final boundary =
        _printKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    final image = await boundary.toImage(pixelRatio: 3.0);
    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    final pngBytes = byteData!.buffer.asUint8List();

    final pdfBytes = await PdfUtils.generateMultiPagePdfFromImages(
      imageBytesList: [pngBytes],
      // dynamicText: "My name is $_dynamicName, I am from $_dynamicAddress.",
    );
    await PdfUtils.printPdf(pdfBytes);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Printing PDF...')),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    _adharNoController.dispose();
    _registerIdController.dispose();
    _schoolNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppNavigationBar(),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: RepaintBoundary(
            // Wrap the content to be captured with RepaintBoundary
            key: _printKey,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      _currentForm == null ? 'Fill Form 2' : 'Edit Form 2',
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: Colors.blue.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      controller: _nameController,
                      decoration: const InputDecoration(labelText: 'Name'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _phoneController,
                      decoration: const InputDecoration(labelText: 'Phone No.'),
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your phone number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _addressController,
                      decoration: const InputDecoration(labelText: 'Address'),
                      maxLines: 3,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your address';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _adharNoController,
                      decoration:
                          const InputDecoration(labelText: 'Aadhar No.'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Aadhar number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _registerIdController,
                      decoration:
                          const InputDecoration(labelText: 'Register ID'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Register ID';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _schoolNameController,
                      decoration:
                          const InputDecoration(labelText: 'School Name'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your School Name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 30),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.blue.shade200),
                      ),
                      child: Text(
                        _dynamicName.isNotEmpty || _dynamicAddress.isNotEmpty
                            ? "My name is $_dynamicName, I am from $_dynamicAddress."
                            : "Enter your name and address to see a preview here.",
                        style: const TextStyle(
                            fontSize: 16, color: Colors.blueGrey),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        // Added a bottom navigation bar for action buttons
        padding: const EdgeInsets.all(24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _submitForm,
              child: Text(_currentForm == null ? 'Submit Form' : 'Update Form'),
            ),
            const SizedBox(width: 20),
            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: _downloadPdf,
                icon: const Icon(Icons.download),
                label: const Text('Download PDF'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
              ),
            ),
            const SizedBox(width: 20),
            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: _printPdf,
                icon: const Icon(Icons.print),
                label: const Text('Print PDF'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
