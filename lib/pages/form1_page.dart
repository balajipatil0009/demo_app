// lib/pages/form1_page.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // For TextInputFormatter
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui; // Import for ui.ImageByteFormat
import 'package:flutter/rendering.dart'; // Import for RenderRepaintBoundary

import 'package:flutter_desktop_app/models/form_data.dart'; // Using ApplicationData
import 'package:flutter_desktop_app/services/sqlite_service.dart';
import 'package:flutter_desktop_app/providers/form_provider.dart';
import 'package:flutter_desktop_app/utils/pdf_utils.dart';
import 'package:flutter_desktop_app/widgets/app_navigation_bar.dart';

class Form1Page extends StatefulWidget {
  final int? formId; // Optional ID for editing existing forms.

  const Form1Page({super.key, this.formId});

  @override
  State<Form1Page> createState() => _Form1PageState();
}

class _Form1PageState extends State<Form1Page> {
  // --- NEW: Add suggestion lists for Autocomplete fields ---
  final List<String> _relationSuggestions = const [
    'स्वतः',
    'पत्नी',
    'मुलगा',
    'मुलगी',
    'नातू',
    'नात',
    'वडील',
    'आई',
  ];
  final List<String> _purposeSuggestions = const [
    'शैक्षणिक',
  ];

  bool _isAddressSameAsApplicant = false;
  final _formKey = GlobalKey<FormState>();
  final GlobalKey _printKey = GlobalKey();
  final GlobalKey _printKey2 = GlobalKey();

  // Controllers for Application Data fields
  final TextEditingController _referenceNoController = TextEditingController();
  final TextEditingController _aadharNumberController = TextEditingController();
  final TextEditingController _fullNameApplicantController =
      TextEditingController();
  String? _genderApplicant = 'पुरुष'; // Default value
  final TextEditingController _pobApplicantController = TextEditingController();
  final TextEditingController _houseNoApplicantController =
      TextEditingController();
  final TextEditingController _buildingNameApplicantController =
      TextEditingController();
  final TextEditingController _societyComplexApplicantController =
      TextEditingController();
  final TextEditingController _streetNameApplicantController =
      TextEditingController();
  final TextEditingController _districtApplicantController =
      TextEditingController(text: 'सांगली');
  final TextEditingController _talukaApplicantController =
      TextEditingController(text: 'मिरज');
  final TextEditingController _pincodeApplicantController =
      TextEditingController(text: "416408");
  final TextEditingController _yearsAtAddressApplicantController =
      TextEditingController();
  final TextEditingController _mobileController = TextEditingController();

  final TextEditingController _fullNameBeneficiaryController =
      TextEditingController();
  final TextEditingController _relationshipBeneficiaryController =
      TextEditingController();
  final TextEditingController _pobBeneficiaryController =
      TextEditingController();
  final TextEditingController _houseNoBeneficiaryController =
      TextEditingController();
  final TextEditingController _buildingNameBeneficiaryController =
      TextEditingController();
  final TextEditingController _societyComplexBeneficiaryController =
      TextEditingController();
  final TextEditingController _streetNameBeneficiaryController =
      TextEditingController();
  final TextEditingController _districtBeneficiaryController =
      TextEditingController(text: 'सांगली');
  final TextEditingController _talukaBeneficiaryController =
      TextEditingController(text: 'मिरज');
  final TextEditingController _pincodeBeneficiaryController =
      TextEditingController(text: "416408");
  final TextEditingController _livingYearsBeneficiaryController =
      TextEditingController();
  final TextEditingController _maharashtraResidencePeriodController =
      TextEditingController();
  final TextEditingController _certificatePurposeController =
      TextEditingController();
  final TextEditingController _villageApplicantController =
      TextEditingController(text: 'आरग');

  // Controllers specifically for displaying Dates
  final TextEditingController _applicationDateController =
      TextEditingController();
  final TextEditingController _dobApplicantController = TextEditingController();
  final TextEditingController _dobBeneficiaryController =
      TextEditingController();

  DateTime? _applicationDate;
  DateTime? _dobApplicant;
  DateTime? _dobBeneficiary;

  ApplicationData? _currentForm;

  String _dynamicName = '';
  String _dynamicAddress = '';

  @override
  void initState() {
    super.initState();
    _fullNameApplicantController.addListener(_updateDynamicText);
    _houseNoApplicantController.addListener(_updateDynamicText);
    _buildingNameApplicantController.addListener(_updateDynamicText);
    _societyComplexApplicantController.addListener(_updateDynamicText);
    _streetNameApplicantController.addListener(_updateDynamicText);
    _districtApplicantController.addListener(_updateDynamicText);
    _talukaApplicantController.addListener(_updateDynamicText);
    _pincodeApplicantController.addListener(_updateDynamicText);
    _fullNameBeneficiaryController.addListener(_updateDynamicText);
    _relationshipBeneficiaryController.addListener(_updateDynamicText);
    _dobApplicantController.addListener(_updateDynamicText);

    if (widget.formId != null) {
      _loadFormData();
    } else {
      _applicationDate = DateTime.now();
      _applicationDateController.text = _formatDate(_applicationDate);
      _referenceNoController.text = _generateReferenceNo();
      _updateDynamicText();
    }
  }

  @override
  void dispose() {
    // Dispose all controllers
    _referenceNoController.dispose();
    _aadharNumberController.dispose();
    _fullNameApplicantController.removeListener(_updateDynamicText);
    _fullNameApplicantController.dispose();
    _pobApplicantController.dispose();
    _houseNoApplicantController.removeListener(_updateDynamicText);
    _houseNoApplicantController.dispose();
    _buildingNameApplicantController.removeListener(_updateDynamicText);
    _buildingNameApplicantController.dispose();
    _societyComplexApplicantController.removeListener(_updateDynamicText);
    _societyComplexApplicantController.dispose();
    _streetNameApplicantController.removeListener(_updateDynamicText);
    _streetNameApplicantController.dispose();
    _districtApplicantController.removeListener(_updateDynamicText);
    _districtApplicantController.dispose();
    _talukaApplicantController.removeListener(_updateDynamicText);
    _talukaApplicantController.dispose();
    _pincodeApplicantController.removeListener(_updateDynamicText);
    _pincodeApplicantController.dispose();
    _yearsAtAddressApplicantController.dispose();
    _mobileController.dispose();
    _fullNameBeneficiaryController.removeListener(_updateDynamicText);
    _fullNameBeneficiaryController.dispose();
    _relationshipBeneficiaryController.removeListener(_updateDynamicText);
    _relationshipBeneficiaryController.dispose();
    _pobBeneficiaryController.dispose();
    _houseNoBeneficiaryController.dispose();
    _buildingNameBeneficiaryController.dispose();
    _societyComplexBeneficiaryController.dispose();
    _streetNameBeneficiaryController.dispose();
    _districtBeneficiaryController.dispose();
    _talukaBeneficiaryController.dispose();
    _pincodeBeneficiaryController.dispose();
    _livingYearsBeneficiaryController.dispose();
    _maharashtraResidencePeriodController.dispose();
    _certificatePurposeController.dispose();
    _villageApplicantController.dispose();
    _applicationDateController.dispose();
    _dobApplicantController.removeListener(_updateDynamicText);
    _dobApplicantController.dispose();
    _dobBeneficiaryController.dispose();

    super.dispose();
  }

  void _syncBeneficiaryAddress() {
    if (_isAddressSameAsApplicant) {
      setState(() {
        _houseNoBeneficiaryController.text = _houseNoApplicantController.text;
        _buildingNameBeneficiaryController.text =
            _buildingNameApplicantController.text;
        _societyComplexBeneficiaryController.text =
            _societyComplexApplicantController.text;
        _streetNameBeneficiaryController.text =
            _streetNameApplicantController.text;
        _districtBeneficiaryController.text = _districtApplicantController.text;
        _talukaBeneficiaryController.text = _talukaApplicantController.text;
        _pincodeBeneficiaryController.text = _pincodeApplicantController.text;
      });
    }
  }

  String _calculateAge(DateTime? birthDate) {
    if (birthDate == null) return '';
    final now = DateTime.now();
    int age = now.year - birthDate.year;
    if (now.month < birthDate.month ||
        (now.month == birthDate.month && now.day < birthDate.day)) {
      age--;
    }
    return age >= 0 ? age.toString() : '';
  }

  void _updateDynamicText() {
    setState(() {
      _dynamicName = _fullNameApplicantController.text;
      _dynamicAddress =
          '${_houseNoApplicantController.text}, ${_societyComplexApplicantController.text}, '
          '${_streetNameApplicantController.text}, ${_talukaApplicantController.text}, '
          '${_districtApplicantController.text}, ${_pincodeApplicantController.text}';
      _dynamicAddress = _dynamicAddress
          .replaceAll(RegExp(r',(\s*,)+'), ',')
          .replaceAll(RegExp(r'^,\s*'), '')
          .replaceAll(RegExp(r',\s*$'), '');
    });
  }

  String _generateReferenceNo() {
    final now = DateTime.now();
    return 'REF${DateFormat('yyyyMMddHHmmss').format(now)}';
  }

  Future<void> _loadFormData() async {
    final service = SQLiteService();
    final formData = await service.getApplicationData(widget.formId!);
    if (formData != null) {
      setState(() {
        _currentForm = formData;
        _referenceNoController.text = formData.referenceNo;
        _applicationDate = formData.applicationDate;
        _applicationDateController.text = _formatDate(_applicationDate);
        _aadharNumberController.text = formData.aadharNumber;
        _fullNameApplicantController.text = formData.fullNameApplicant;
        _genderApplicant = formData.gender;
        _dobApplicant = formData.dobApplicant;
        _dobApplicantController.text = _formatDate(_dobApplicant);
        _pobApplicantController.text = formData.pobApplicant;
        _houseNoApplicantController.text = formData.houseNoApplicant;
        _buildingNameApplicantController.text = formData.buildingNameApplicant;
        _societyComplexApplicantController.text =
            formData.societyComplexApplicant;
        _streetNameApplicantController.text = formData.streetNameApplicant;
        _districtApplicantController.text = formData.districtApplicant;
        _talukaApplicantController.text = formData.talukaApplicant;
        _pincodeApplicantController.text = formData.pincodeApplicant;
        _yearsAtAddressApplicantController.text =
            formData.yearsAtAddressApplicant;
        _mobileController.text = formData.mobile;
        _fullNameBeneficiaryController.text = formData.fullNameBeneficiary;
        _relationshipBeneficiaryController.text =
            formData.relationshipBeneficiary;
        _dobBeneficiary = formData.dobBeneficiary;
        _dobBeneficiaryController.text = _formatDate(_dobBeneficiary);
        _pobBeneficiaryController.text = formData.pobBeneficiary;
        _houseNoBeneficiaryController.text = formData.houseNoBeneficiary;
        _buildingNameBeneficiaryController.text =
            formData.buildingNameBeneficiary;
        _societyComplexBeneficiaryController.text =
            formData.societyComplexBeneficiary;
        _streetNameBeneficiaryController.text = formData.streetNameBeneficiary;
        _districtBeneficiaryController.text = formData.districtBeneficiary;
        _talukaBeneficiaryController.text = formData.talukaBeneficiary;
        _pincodeBeneficiaryController.text = formData.pincodeBeneficiary;
        _livingYearsBeneficiaryController.text =
            formData.livingYearsBeneficiary;
        _maharashtraResidencePeriodController.text =
            formData.maharashtraResidencePeriod;
        _certificatePurposeController.text = formData.certificatePurpose;
        _updateDynamicText();
      });
    }
  }

  Future<void> _generateAndSavePdf({required bool forPrinting}) async {
    _updateDynamicText();
    await Future.delayed(const Duration(milliseconds: 100));

    try {
      final boundary1 =
          _printKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
      final image1 = await boundary1.toImage(pixelRatio: 3.0);
      final byteData1 = await image1.toByteData(format: ui.ImageByteFormat.png);
      final pngBytes1 = byteData1!.buffer.asUint8List();

      final boundary2 = _printKey2.currentContext!.findRenderObject()
          as RenderRepaintBoundary;
      final image2 = await boundary2.toImage(pixelRatio: 3.0);
      final byteData2 = await image2.toByteData(format: ui.ImageByteFormat.png);
      final pngBytes2 = byteData2!.buffer.asUint8List();

      final pdfBytes = await PdfUtils.generateMultiPagePdfFromImages(
        imageBytesList: [pngBytes1, pngBytes2],
      );

      if (forPrinting) {
        await PdfUtils.printPdf(pdfBytes);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Printing PDF...')),
        );
      } else {
        await PdfUtils.savePdf(pdfBytes,
            'residency_application_${DateFormat('yyyyMMdd_HHmmss').format(DateTime.now())}.pdf');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('PDF downloaded successfully!')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error generating PDF: $e')),
      );
    }
  }

  Future<void> _downloadPdf() async => _generateAndSavePdf(forPrinting: false);
  Future<void> _printPdf() async => _generateAndSavePdf(forPrinting: true);

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      final service = SQLiteService();
      final formProvider = Provider.of<FormProvider>(context, listen: false);
      final formData = _currentForm ?? ApplicationData();

      formData.referenceNo = _referenceNoController.text;
      formData.applicationDate = _applicationDate ?? DateTime.now();
      formData.aadharNumber = _aadharNumberController.text;
      formData.fullNameApplicant = _fullNameApplicantController.text;
      formData.gender = _genderApplicant ?? '';
      formData.dobApplicant = _dobApplicant ?? DateTime.now();
      formData.pobApplicant = _pobApplicantController.text;
      formData.houseNoApplicant = _houseNoApplicantController.text;
      formData.buildingNameApplicant = _buildingNameApplicantController.text;
      formData.societyComplexApplicant =
          _societyComplexApplicantController.text;
      formData.streetNameApplicant = _streetNameApplicantController.text;
      formData.districtApplicant = _districtApplicantController.text;
      formData.talukaApplicant = _talukaApplicantController.text;
      formData.pincodeApplicant = _pincodeApplicantController.text;
      formData.yearsAtAddressApplicant =
          _yearsAtAddressApplicantController.text;
      formData.mobile = _mobileController.text;
      formData.fullNameBeneficiary = _fullNameBeneficiaryController.text;
      formData.relationshipBeneficiary =
          _relationshipBeneficiaryController.text;
      formData.dobBeneficiary = _dobBeneficiary ?? DateTime.now();
      formData.pobBeneficiary = _pobBeneficiaryController.text;
      formData.houseNoBeneficiary = _houseNoBeneficiaryController.text;
      formData.buildingNameBeneficiary =
          _buildingNameBeneficiaryController.text;
      formData.societyComplexBeneficiary =
          _societyComplexBeneficiaryController.text;
      formData.streetNameBeneficiary = _streetNameBeneficiaryController.text;
      formData.districtBeneficiary = _districtBeneficiaryController.text;
      formData.talukaBeneficiary = _talukaBeneficiaryController.text;
      formData.pincodeBeneficiary = _pincodeBeneficiaryController.text;
      formData.livingYearsBeneficiary = _livingYearsBeneficiaryController.text;
      formData.maharashtraResidencePeriod =
          _maharashtraResidencePeriodController.text;
      formData.certificatePurpose = _certificatePurposeController.text;
      formData.formType = FormType.form1;
      formData.submissionDate = DateTime.now();
      formData.status = _currentForm?.status ?? FormStatus.pending;

      if (_currentForm == null) {
        await service.saveApplicationData(formData);
        formProvider.addForm(formData);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Form 1 submitted successfully!')),
        );
        context.go('/forms-list');
      } else {
        await service.saveApplicationData(formData);
        formProvider.updateForm(formData);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Form 1 updated successfully!')),
        );
      }
      setState(() {
        _currentForm = formData;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill required fields correctly.')),
      );
    }
  }

  Future<void> _selectDate(
      BuildContext context,
      TextEditingController controller,
      ValueChanged<DateTime?> onDateSelected,
      DateTime? currentDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: currentDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != currentDate) {
      setState(() {
        onDateSelected(picked);
        controller.text = _formatDate(picked);
        _updateDynamicText();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    const double a4Width = 595.28;

    return Scaffold(
      appBar: const AppNavigationBar(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                RepaintBoundary(
                  key: _printKey,
                  child: Container(
                    width: a4Width,
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 1.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/logo.webp',
                                width: 60, height: 50, fit: BoxFit.cover),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    const Text('संदर्भ क्र.',
                                        style: TextStyle(fontSize: 9)),
                                    const SizedBox(width: 5),
                                    _buildStyledFormField(
                                        _referenceNoController, 'संदर्भ क्र.',
                                        readOnly: true,
                                        width: 80,
                                        height: 25,
                                        fontSize: 9,
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 4)),
                                  ],
                                ),
                                const SizedBox(height: 2),
                                Row(
                                  children: [
                                    const Text('अर्जाचा दिनांक',
                                        style: TextStyle(fontSize: 9)),
                                    const SizedBox(width: 5),
                                    _buildStyledFormField(
                                        _applicationDateController,
                                        'अर्जाचा दिनांक',
                                        readOnly: true,
                                        onTap: () => _selectDate(
                                            context,
                                            _applicationDateController,
                                            (date) => _applicationDate = date,
                                            _applicationDate),
                                        width: 100,
                                        height: 25,
                                        fontSize: 9,
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 4)),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey.shade300, thickness: 1.0),
                        const SizedBox(height: 2),
                        Center(
                          child: Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.black, width: 2.0))),
                            child: const Text('रहिवास दाखल्यासाठी अर्ज',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ),
                        ),
                        const SizedBox(height: 10),
                        _buildFieldset(legend: 'अर्जदाराचा तपशील', children: [
                          _buildFormRow(
                            'आधार कार्ड क्रमांक',
                            _buildStyledFormField(
                                _aadharNumberController, 'आधार कार्ड क्रमांक',
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly
                                ], validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Required';
                              if (value.length != 12)
                                return '12 digits required';
                              return null;
                            }),
                          ),
                          _buildFormRow(
                            'संपूर्ण नाव *',
                            _buildStyledFormField(
                              _fullNameApplicantController,
                              'संपूर्ण नाव',
                              validator: (value) =>
                                  value == null || value.isEmpty
                                      ? 'Required'
                                      : null,
                            ),
                          ),
                          _buildFormRow(
                            'लिंग *',
                            Row(children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _genderApplicant = 'पुरुष';
                                  });
                                },
                                child: _buildCustomRadio(
                                    'पुरुष', _genderApplicant == 'पुरुष'),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _genderApplicant = 'स्त्री';
                                  });
                                },
                                child: _buildCustomRadio(
                                    'स्त्री', _genderApplicant == 'स्त्री'),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _genderApplicant = 'इतर';
                                  });
                                },
                                child: _buildCustomRadio(
                                    'इतर', _genderApplicant == 'इतर'),
                              ),
                            ]),
                          ),
                          _buildFormRow(
                            'जन्मतारीख *',
                            _buildStyledFormField(
                              _dobApplicantController,
                              'जन्मतारीख',
                              readOnly: true,
                              onTap: () => _selectDate(
                                  context,
                                  _dobApplicantController,
                                  (date) => _dobApplicant = date,
                                  _dobApplicant),
                              validator: (value) => value == null ||
                                      value.isEmpty ||
                                      value.contains(' / / ')
                                  ? 'Required'
                                  : null,
                            ),
                          ),
                          _buildFormRow(
                            'जन्माचे ठिकाण *',
                            _buildStyledFormField(
                              _pobApplicantController,
                              'जन्माचे ठिकाण',
                              validator: (value) =>
                                  value == null || value.isEmpty
                                      ? 'Required'
                                      : null,
                            ),
                          ),
                          _buildAddressGroup(
                            title:
                                'सध्याचा कायमचा/माहिती सोबतच्या तपशील प्रमाणे',
                            houseNoController: _houseNoApplicantController,
                            buildingNameController:
                                _buildingNameApplicantController,
                            societyComplexController:
                                _societyComplexApplicantController,
                            streetNameController:
                                _streetNameApplicantController,
                            villageController: _villageApplicantController,
                            talukaController: _talukaApplicantController,
                            districtController: _districtApplicantController,
                            pincodeController: _pincodeApplicantController,
                          ),
                          _buildFormRow(
                            'या पत्त्यावर कोणत्या वर्षापासून राहतात?',
                            _buildStyledFormField(
                              _yearsAtAddressApplicantController,
                              'वर्षापासून',
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          _buildFormRow(
                            'Mobile NO *',
                            _buildStyledFormField(
                              _mobileController,
                              'Mobile NO.',
                              validator: (value) =>
                                  value == null || value.isEmpty
                                      ? 'Required'
                                      : null,
                            ),
                          ),
                        ]),
                        const SizedBox(height: 5),
                        _buildFieldset(
                          legend: 'लाभार्थ्याचे तपशील',
                          children: [
                            _buildFormRow(
                              'संपूर्ण नाव *',
                              _buildStyledFormField(
                                _fullNameBeneficiaryController,
                                'संपूर्ण नाव',
                                validator: (value) =>
                                    value == null || value.isEmpty
                                        ? 'Required'
                                        : null,
                              ),
                            ),
                            _buildFormRow(
                              'अर्जदाराशी नाते *',
                              _buildRelationAutocompleteField(
                                _relationshipBeneficiaryController,
                              ),
                            ),
                            _buildFormRow(
                              'जन्मतारीख *',
                              _buildStyledFormField(
                                _dobBeneficiaryController,
                                'जन्मतारीख',
                                readOnly: true,
                                onTap: () => _selectDate(
                                    context,
                                    _dobBeneficiaryController,
                                    (date) => _dobBeneficiary = date,
                                    _dobBeneficiary),
                                validator: (value) => value == null ||
                                        value.isEmpty ||
                                        value.contains(' / / ')
                                    ? 'Required'
                                    : null,
                              ),
                            ),
                            _buildFormRow(
                                'जन्माचे ठिकाण',
                                _buildStyledFormField(
                                  _pobBeneficiaryController,
                                  'जन्माचे ठिकाण',
                                )),
                            CheckboxListTile(
                              title: const Text(
                                'लाभार्थ्याचा पत्ता अर्जदाराप्रमाणेच आहे',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              value: _isAddressSameAsApplicant,
                              onChanged: (bool? value) {
                                setState(() {
                                  _isAddressSameAsApplicant = value ?? false;
                                  if (_isAddressSameAsApplicant) {
                                    _syncBeneficiaryAddress();
                                  } else {
                                    _houseNoBeneficiaryController.clear();
                                    _buildingNameBeneficiaryController.clear();
                                    _societyComplexBeneficiaryController
                                        .clear();
                                    _streetNameBeneficiaryController.clear();
                                    _districtBeneficiaryController.text =
                                        'सांगली';
                                    _talukaBeneficiaryController.text = 'मिरज';
                                    _pincodeBeneficiaryController.text =
                                        '416408';
                                  }
                                });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                            ),
                            _buildAddressGroup(
                              title: 'लाभार्थ्याचा पत्ता',
                              houseNoController: _houseNoBeneficiaryController,
                              buildingNameController:
                                  _buildingNameBeneficiaryController,
                              societyComplexController:
                                  _societyComplexBeneficiaryController,
                              streetNameController:
                                  _streetNameBeneficiaryController,
                              talukaController: _talukaBeneficiaryController,
                              districtController:
                                  _districtBeneficiaryController,
                              pincodeController: _pincodeBeneficiaryController,
                            ),
                            _buildFormRow(
                              'महाराष्ट्रातील रहिवास कालावधी(१५आवश्यक)',
                              _buildStyledFormField(
                                _maharashtraResidencePeriodController,
                                'कालावधी',
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                validator: (value) {
                                  if (value == null || value.isEmpty)
                                    return 'Required (15 years)';
                                  final years = int.tryParse(value);
                                  if (years == null || years < 15)
                                    return 'Minimum 15 years required';
                                  return null;
                                },
                              ),
                            ),
                            _buildFormRow(
                                'प्रमाणपत्र कशासाठी हवे, त्याचा तपशील',
                                _buildPurposeAutocompleteField(
                                  _certificatePurposeController,
                                )),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          padding: const EdgeInsets.only(top: 5),
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.black, width: 1.0))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: _buildFooterItem('अर्जदाराचे नाव:',
                                      _fullNameApplicantController.text)),
                              const SizedBox(width: 5),
                              Flexible(
                                  flex: 1,
                                  child:
                                      _buildFooterItem('अर्जदाराची सही:', '')),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                RepaintBoundary(
                  key: _printKey2,
                  child: Container(
                    width: a4Width,
                    padding: const EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 1.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildDeclarationTitle("स्वघोषणापत्र"),
                        Wrap(
                          spacing: 5.0,
                          runSpacing: 10.0,
                          crossAxisAlignment: WrapCrossAlignment.end,
                          children: [
                            _buildStaticText("मी"),
                            _buildUnderlinedText(
                                "${_fullNameApplicantController.text}, ${_fullNameBeneficiaryController.text}",
                                minWidth: 150,
                                fontWeight: FontWeight.bold),
                            _buildStaticText("यांचा"),
                            _buildUnderlinedText(
                                _relationshipBeneficiaryController.text,
                                minWidth: 80),
                            _buildStaticText("वय"),
                            _buildUnderlinedText(_calculateAge(_dobApplicant),
                                minWidth: 40),
                            _buildStaticText("वर्षे, व्यवसाय"),
                            _buildUnderlinedText("", minWidth: 100),
                            _buildStaticText("राहणार"),
                            _buildUnderlinedText(_dynamicAddress,
                                minWidth: 200),
                          ],
                        ),
                        _buildParagraph(
                          'घोषित / करतो की वरील सर्व माहिती माझ्या व्यक्तिगत माहिती व समजुतीनुसार खरी आहे. सदर माहिती खोटी आढळून आल्यास, भारतीय दंड संहिता 1960 कलम 199 व 200 व अन्य / संबंधित कायद्यानुसार माझ्यावर खटला भरला जाईल व त्यानुसार मी शिक्षेस पात्र राहीन, याची मला पूर्ण जाणीव आहे.',
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildSignatureItem("ठिकाण :", "आगर"),
                                _buildSignatureItem(
                                    "दिनांक :", _formatDate(DateTime.now())),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                _buildSignatureItemRight(
                                    "अर्जदाराची स्वाक्षरी :", ""),
                                _buildSignatureItemRight("अर्जदाराचे नाव",
                                    _fullNameApplicantController.text),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        const Divider(thickness: 1, color: Colors.grey),
                        const SizedBox(height: 20),
                        _buildDeclarationTitle("Self Declaration"),
                        Wrap(
                          spacing: 5.0,
                          runSpacing: 10.0,
                          crossAxisAlignment: WrapCrossAlignment.end,
                          children: [
                            _buildStaticText("I"),
                            _buildUnderlinedText(
                                _fullNameApplicantController.text,
                                minWidth: 150,
                                fontWeight: FontWeight.bold),
                            _buildStaticText(
                                ", ${(_relationshipBeneficiaryController.text).toLowerCase()}, of Shri."),
                            _buildUnderlinedText(
                                _fullNameBeneficiaryController.text,
                                minWidth: 150),
                            _buildStaticText("aged"),
                            _buildUnderlinedText(_calculateAge(_dobApplicant),
                                minWidth: 40),
                            _buildStaticText("occupation"),
                            _buildUnderlinedText("", minWidth: 80),
                            _buildStaticText("resident of Village"),
                            _buildUnderlinedText(
                                _villageApplicantController.text,
                                minWidth: 80),
                            _buildStaticText("Taluka"),
                            _buildUnderlinedText(
                                _talukaApplicantController.text,
                                minWidth: 80),
                            _buildStaticText("District"),
                            _buildUnderlinedText(
                                _districtApplicantController.text,
                                minWidth: 80),
                            _buildStaticText(
                                "hereby declare that the information provide above is true and correct to the best of my personal knowledge, information and belief."),
                          ],
                        ),
                        _buildParagraph(
                            "I fully understand the consequences of giving false information. If the information as given above is found to be false, I shall be liable for prosecution and punishment under section 199 and 200 of IPC 1960 and / or any other law applicable thereto.",
                            padding: const EdgeInsets.only(top: 15)),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildSignatureItem("Place:", "आगर"),
                                _buildSignatureItem(
                                    "Date:", _formatDate(DateTime.now())),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                _buildSignatureItemRight(
                                    "Applicant Signature:", ""),
                                _buildSignatureItemRight("Applicant Name:",
                                    _fullNameApplicantController.text),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
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
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
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
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- HELPER WIDGETS ---

  String _formatDate(DateTime? date) {
    if (date == null) return ' / / ';
    return DateFormat('dd/MM/yyyy').format(date);
  }

  Widget _buildFieldset(
      {required String legend, required List<Widget> children}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.fromLTRB(8, 12, 8, 8),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 1.0)),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -22,
            left: 5,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(legend,
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ),
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start, children: children),
        ],
      ),
    );
  }

  Widget _buildFormRow(String label, Widget rightSideWidget) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 150,
              child: Text(label,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 10))),
          const SizedBox(width: 10),
          Expanded(
            child: rightSideWidget,
          ),
        ],
      ),
    );
  }

  Widget _buildCustomRadio(String label, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.0)),
            child: isSelected
                ? Center(
                    child: Container(width: 8, height: 8, color: Colors.black))
                : null,
          ),
          const SizedBox(width: 5),
          Text(label, style: const TextStyle(fontSize: 10)),
        ],
      ),
    );
  }

  Widget _buildStyledFormField(
      TextEditingController controller, String labelText,
      {TextInputType? keyboardType,
      List<TextInputFormatter>? inputFormatters,
      int maxLines = 1,
      String? Function(String?)? validator,
      bool readOnly = false,
      VoidCallback? onTap,
      double height = 25,
      double? width,
      double fontSize = 10,
      EdgeInsets contentPadding =
          const EdgeInsets.symmetric(horizontal: 5, vertical: 8)}) {
    return SizedBox(
      height: maxLines > 1 ? null : height,
      width: width,
      child: TextFormField(
        controller: controller,
        readOnly: readOnly,
        onTap: onTap,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        maxLines: maxLines,
        style: TextStyle(fontSize: fontSize),
        decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding,
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.zero,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.zero,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1.5),
            borderRadius: BorderRadius.zero,
          ),
          errorStyle: const TextStyle(fontSize: 8, height: 0.5),
          errorMaxLines: 2,
        ),
        validator: validator,
      ),
    );
  }

  Widget _buildRelationAutocompleteField(TextEditingController controller) {
    return Autocomplete<String>(
      initialValue: TextEditingValue(text: controller.text),
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text.isEmpty) {
          return const Iterable<String>.empty();
        }
        return _relationSuggestions.where((String option) {
          return option
              .toLowerCase()
              .contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String selection) {
        controller.text = selection;
      },
      fieldViewBuilder: (
        BuildContext context,
        TextEditingController fieldTextEditingController,
        FocusNode fieldFocusNode,
        VoidCallback onFieldSubmitted,
      ) {
        return SizedBox(
          height: 32,
          child: TextFormField(
            controller: fieldTextEditingController,
            focusNode: fieldFocusNode,
            onChanged: (text) {
              controller.text = text;
            },
            style: const TextStyle(fontSize: 13),
            decoration: const InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.zero),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.zero),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1.5),
                  borderRadius: BorderRadius.zero),
            ),
          ),
        );
      },
      optionsViewBuilder: (
        BuildContext context,
        AutocompleteOnSelected<String> onSelected,
        Iterable<String> options,
      ) {
        return Align(
          alignment: Alignment.topLeft,
          child: Material(
            elevation: 4.0,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 200, maxWidth: 150),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: options.length,
                itemBuilder: (BuildContext context, int index) {
                  final String option = options.elementAt(index);
                  return InkWell(
                    onTap: () {
                      onSelected(option);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(option),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildPurposeAutocompleteField(TextEditingController controller) {
    return Autocomplete<String>(
      initialValue: TextEditingValue(text: controller.text),
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text.isEmpty) {
          return _purposeSuggestions;
        }
        return _purposeSuggestions.where((String option) {
          return option.contains(textEditingValue.text);
        });
      },
      onSelected: (String selection) {
        controller.text = selection;
      },
      fieldViewBuilder: (
        BuildContext context,
        TextEditingController fieldTextEditingController,
        FocusNode fieldFocusNode,
        VoidCallback onFieldSubmitted,
      ) {
        return TextFormField(
          controller: fieldTextEditingController,
          focusNode: fieldFocusNode,
          onChanged: (text) {
            controller.text = text;
          },
          maxLines: 3,
          keyboardType: TextInputType.multiline,
          style: const TextStyle(fontSize: 13),
          decoration: const InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.zero),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.zero),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.zero),
          ),
        );
      },
      optionsViewBuilder: (
        BuildContext context,
        AutocompleteOnSelected<String> onSelected,
        Iterable<String> options,
      ) {
        return Align(
          alignment: Alignment.topLeft,
          child: Material(
            elevation: 4.0,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 50, maxWidth: 300),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: options.length,
                itemBuilder: (BuildContext context, int index) {
                  final String option = options.elementAt(index);
                  return InkWell(
                    onTap: () {
                      onSelected(option);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(option),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildAddressGroup({
    required String title,
    required TextEditingController houseNoController,
    required TextEditingController buildingNameController,
    required TextEditingController societyComplexController,
    required TextEditingController streetNameController,
    required TextEditingController talukaController,
    required TextEditingController districtController,
    required TextEditingController pincodeController,
    TextEditingController? villageController,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
        const SizedBox(height: 5),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: _buildAddressFormField('घर क्र.', houseNoController)),
            const SizedBox(width: 8),
            Expanded(
                child: _buildAddressFormField(
                    'इमारत/नाव', buildingNameController)),
            const SizedBox(width: 8),
            Expanded(
                child: _buildAddressFormField(
                    'संस्था/संकुल', societyComplexController)),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: _buildAddressFormField(
                    'रस्त्याचे नाव', streetNameController)),
            const SizedBox(width: 8),
            if (villageController != null)
              Expanded(
                  child: _buildAddressFormField('गांव', villageController,
                      isRequired: true))
            else
              Expanded(child: Container()),
            const SizedBox(width: 8),
            Expanded(
                child: _buildAddressFormField('तालुका', talukaController,
                    isRequired: true)),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: _buildAddressFormField('जिल्हा', districtController,
                    isRequired: true)),
            const SizedBox(width: 8),
            Expanded(
                child: _buildAddressFormField('पिन कोड', pincodeController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    validator: (value) {
              if (value == null || value.isEmpty) return 'Required';
              if (value.length != 6) return '6 digits required';
              return null;
            }, isRequired: true)),
            const SizedBox(width: 8),
            Expanded(child: Container()),
          ],
        ),
        const SizedBox(height: 5),
      ],
    );
  }

  Widget _buildAddressFormField(
    String label,
    TextEditingController controller, {
    TextInputType? keyboardType,
    List<TextInputFormatter>? inputFormatters,
    String? Function(String?)? validator,
    bool isRequired = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
        const SizedBox(height: 3),
        SizedBox(
          height: 25,
          child: TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            inputFormatters: inputFormatters,
            style: const TextStyle(fontSize: 10),
            decoration: const InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.zero,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.zero,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.zero,
              ),
              errorStyle: TextStyle(fontSize: 8, height: 0.5),
              errorMaxLines: 2,
            ),
            validator: validator ??
                (value) {
                  if (isRequired && (value == null || value.isEmpty)) {
                    return 'Required';
                  }
                  return null;
                },
          ),
        ),
      ],
    );
  }

  Widget _buildFooterItem(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
        const SizedBox(height: 15),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(bottom: 2),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: Text(value, style: const TextStyle(fontSize: 10)),
        )
      ],
    );
  }

  Widget _buildDeclarationTitle(String text) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Container(
          height: 1.5,
          color: Colors.black,
          width: 150,
        ),
        const SizedBox(height: 25),
      ],
    );
  }

  Widget _buildUnderlinedText(String text,
      {double minWidth = 100,
      FontWeight fontWeight = FontWeight.normal,
      TextAlign align = TextAlign.center}) {
    return IntrinsicWidth(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Text(
              text,
              textAlign: align,
              style: TextStyle(fontSize: 12, fontWeight: fontWeight),
              softWrap: true,
            ),
          ),
          Container(
            height: 1,
            color: Colors.black,
            constraints: BoxConstraints(minWidth: minWidth),
          ),
        ],
      ),
    );
  }

  Widget _buildStaticText(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
      child: Text(text, style: const TextStyle(fontSize: 12)),
    );
  }

  Widget _buildParagraph(String text, {EdgeInsets? padding}) {
    return Padding(
      padding: padding ??
          const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
      child: Text(
        text,
        textAlign: TextAlign.justify,
        style: const TextStyle(fontSize: 12, height: 1.6),
      ),
    );
  }

  Widget _buildSignatureItem(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(label, style: const TextStyle(fontSize: 12)),
            const SizedBox(width: 5),
            _buildUnderlinedText(value, minWidth: 120, align: TextAlign.left),
          ],
        ),
        const SizedBox(height: 15),
      ],
    );
  }

  Widget _buildSignatureItemRight(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 12)),
        const SizedBox(height: 20),
        _buildUnderlinedText(value, minWidth: 150, align: TextAlign.center),
      ],
    );
  }
}
