// lib/pages/form1_page.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // For TextInputFormatter
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui; // Import for ui.ImageByteFormat
import 'package:flutter/rendering.dart'; // Import for RenderRepaintBoundary

import 'package:flutter_desktop_app/models/form_data.dart'; // Using ApplicationData
import 'package:flutter_desktop_app/services/isar_service.dart';
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
  bool _isAddressSameAsApplicant = false;
  final _formKey = GlobalKey<FormState>();
  // Key for the A4 preview form (will be page 1 of the PDF)
  final GlobalKey _printKey = GlobalKey();
  // Key for the dynamic text container (will be page 2 of the PDF)
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
      TextEditingController();
  final TextEditingController _talukaApplicantController =
      TextEditingController();
  final TextEditingController _pincodeApplicantController =
      TextEditingController();
  final TextEditingController _yearsAtAddressApplicantController =
      TextEditingController();
  final TextEditingController _emailApplicantController =
      TextEditingController();

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
      TextEditingController();
  final TextEditingController _livingYearsBeneficiaryController =
      TextEditingController();
  final TextEditingController _maharashtraResidencePeriodController =
      TextEditingController();
  final TextEditingController _certificatePurposeController =
      TextEditingController();
// Add this controller with your other Applicant controllers
  final TextEditingController _villageApplicantController =
      TextEditingController(text: 'कळंबा');

  // Controllers specifically for displaying Dates (will be updated by date picker)
  final TextEditingController _applicationDateController =
      TextEditingController();
  final TextEditingController _dobApplicantController = TextEditingController();
  final TextEditingController _dobBeneficiaryController =
      TextEditingController();

  DateTime? _applicationDate; // Keep internal DateTime for logic if needed
  DateTime? _dobApplicant;
  DateTime? _dobBeneficiary;

  ApplicationData? _currentForm;

  String _dynamicName = '';
  String _dynamicAddress = '';

  @override
  void initState() {
    super.initState();
    // Listen to changes to update UI in real-time (for dynamic text)
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
      // Initialize for new form
      _applicationDate = DateTime.now();
      _applicationDateController.text = _formatDate(_applicationDate);
      _referenceNoController.text = _generateReferenceNo();
      _updateDynamicText(); // Initial update for dynamic text
    }
  }

  @override
  void dispose() {
    // Dispose all controllers
    _referenceNoController.dispose();
    _aadharNumberController.dispose();
    _fullNameApplicantController
        .removeListener(_updateDynamicText); // Remove listeners
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
    _emailApplicantController.dispose();
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
    _villageApplicantController.dispose(); // Dispose the new controller
    _applicationDateController.dispose(); // Dispose date controllers
    _dobApplicantController.removeListener(_updateDynamicText);
    _dobApplicantController.dispose();
    _dobBeneficiaryController.dispose();

    super.dispose();
  }

  // Add this new method inside _Form1PageState
  void _syncBeneficiaryAddress() {
    // This function is safe to call from listeners because it only acts if the box is checked.
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
    // Adjust age if the birthday hasn't occurred yet this year
    if (now.month < birthDate.month ||
        (now.month == birthDate.month && now.day < birthDate.day)) {
      age--;
    }
    return age >= 0 ? age.toString() : ''; // Handle case where dob is in future
  }

  void _updateDynamicText() {
    // Call setState to trigger a rebuild and update the dynamic text section
    setState(() {
      _dynamicName = _fullNameApplicantController.text;
      _dynamicAddress =
          '${_houseNoApplicantController.text}, ${_societyComplexApplicantController.text}, '
          '${_streetNameApplicantController.text}, ${_talukaApplicantController.text}, '
          '${_districtApplicantController.text}, ${_pincodeApplicantController.text}';
      // Clean up multiple commas or leading/trailing commas from dynamic address
      _dynamicAddress = _dynamicAddress
          .replaceAll(
              RegExp(r',(\s*,)+'), ',') // Replace multiple commas with one
          .replaceAll(RegExp(r'^,\s*'), '') // Remove leading comma
          .replaceAll(RegExp(r',\s*$'), ''); // Remove trailing comma
    });
  }

  String _generateReferenceNo() {
    final now = DateTime.now();
    return 'REF${DateFormat('yyyyMMddHHmmss').format(now)}';
  }

  Future<void> _loadFormData() async {
    final service = IsarService();
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
        _emailApplicantController.text = formData.emailApplicant;
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
        _updateDynamicText(); // Update dynamic text after loading
      });
    }
  }

  // PDF Generation logic remains the same (captures RepaintBoundary)
  Future<void> _generateAndSavePdf({required bool forPrinting}) async {
    // Ensure dynamic text is updated just before capture
    _updateDynamicText();
    // Add a small delay to allow UI to update before capturing
    await Future.delayed(const Duration(milliseconds: 100));

    try {
      final boundary1 =
          _printKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
      final image1 = await boundary1.toImage(
          pixelRatio: 3.0); // Increased pixelRatio for better quality
      final byteData1 = await image1.toByteData(format: ui.ImageByteFormat.png);
      final pngBytes1 = byteData1!.buffer.asUint8List();

      final boundary2 = _printKey2.currentContext!.findRenderObject()
          as RenderRepaintBoundary;
      final image2 = await boundary2.toImage(
          pixelRatio: 3.0); // Increased pixelRatio for better quality
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
      print('PDF Generation Error: $e'); // Log the error
    }
  }

  Future<void> _downloadPdf() async => _generateAndSavePdf(forPrinting: false);
  Future<void> _printPdf() async => _generateAndSavePdf(forPrinting: true);

  // Form submission logic
  Future<void> _submitForm() async {
    // Validate all fields first
    if (_formKey.currentState!.validate()) {
      // No need for save() if using controllers directly

      final service = IsarService();
      final formProvider = Provider.of<FormProvider>(context, listen: false);

      final formData =
          _currentForm ?? ApplicationData(); // Create new or use existing

      // Populate data from controllers and internal DateTime variables
      formData.referenceNo = _referenceNoController.text;
      formData.applicationDate =
          _applicationDate ?? DateTime.now(); // Use the DateTime variable
      formData.aadharNumber = _aadharNumberController.text;
      formData.fullNameApplicant = _fullNameApplicantController.text;
      formData.gender = _genderApplicant ?? ''; // Use the state variable
      formData.dobApplicant =
          _dobApplicant ?? DateTime.now(); // Use the DateTime variable
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
      formData.emailApplicant = _emailApplicantController.text;
      formData.fullNameBeneficiary = _fullNameBeneficiaryController.text;
      formData.relationshipBeneficiary =
          _relationshipBeneficiaryController.text;
      formData.dobBeneficiary =
          _dobBeneficiary ?? DateTime.now(); // Use the DateTime variable
      formData.pobBeneficiary = _pobBeneficiaryController.text;
      formData.houseNoBeneficiary = _houseNoBeneficiaryController.text;
      formData.buildingNameBeneficiary =
          _buildingNameBeneficiaryController.text;
      formData.societyComplexBeneficiary =
          _societyComplexBeneficiaryController.text;
      formData.streetNameBeneficiary = _streetNameBeneficiaryController.text;
      formData.districtBeneficiary = _districtBeneficiaryController.text;
      formData.talukaBeneficiary = _talukaBeneficiaryController.text;
      // FIX 1: Corrected typo here
      formData.pincodeBeneficiary = _pincodeBeneficiaryController.text;
      formData.livingYearsBeneficiary = _livingYearsBeneficiaryController.text;
      formData.maharashtraResidencePeriod =
          _maharashtraResidencePeriodController.text;
      formData.certificatePurpose = _certificatePurposeController.text;
      formData.formType = FormType.form1; // Ensure correct FormType
      formData.submissionDate = DateTime.now();
      formData.status = FormStatus.pending; // Or whatever initial status

      if (_currentForm == null) {
        // Save new form
        await service.saveApplicationData(formData);
        formProvider.addForm(formData);
        _currentForm =
            formData; // Update state to reflect that it's now an existing form
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Form 1 submitted successfully!')),
        );
      } else {
        // Update existing form
        await service
            .saveApplicationData(formData); // Isar handles update if ID exists
        formProvider.updateForm(formData);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Form 1 updated successfully!')),
        );
      }
    } else {
      // If validation fails, show a message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill required fields correctly.')),
      );
    }
  }

  // Helper to show date picker and update state/controller
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
        onDateSelected(picked); // Update the internal DateTime variable
        controller.text =
            _formatDate(picked); // Update the controller text for display
        _updateDynamicText(); // Update dynamic text if DOB changes
      });
    }
  }

  // --- NEW BUILD METHOD ---
  @override
  Widget build(BuildContext context) {
    const double a4Width = 595.28; // Standard A4 width in points
    const double a4Height = 841.89; // Standard A4 height in points

    return Scaffold(
      appBar: const AppNavigationBar(),
      body: Form(
        // Wrap in Form widget for validation
        key: _formKey,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                // SECTION 1: The A4 Preview for Page 1 of PDF
                RepaintBoundary(
                  key: _printKey,
                  child: Container(
                    width: a4Width,
                    // Removed fixed height here, let the content define height
                    // height: a4Height, // This was causing overflow issues if content was tall
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
                      mainAxisSize: MainAxisSize
                          .min, // Make column size based on children
                      children: [
                        // Header Section
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
                                    // Use a non-editable field for reference number
                                    _buildStyledFormField(
                                        _referenceNoController, 'संदर्भ क्र.',
                                        readOnly: true,
                                        width: 80, // Explicit width
                                        height: 25,
                                        fontSize: 9,
                                        contentPadding: const EdgeInsets
                                            .symmetric(
                                            horizontal: 5,
                                            vertical:
                                                4) // Adjusted padding for smaller text
                                        ),
                                  ],
                                ),
                                const SizedBox(height: 2),
                                Row(
                                  children: [
                                    const Text('अर्जाचा दिनांक',
                                        style: TextStyle(fontSize: 9)),
                                    const SizedBox(width: 5),
                                    // Use a non-editable date field
                                    _buildStyledFormField(
                                        _applicationDateController,
                                        'अर्जाचा दिनांक',
                                        readOnly: true,
                                        onTap: () => _selectDate(
                                            context,
                                            _applicationDateController,
                                            (date) => _applicationDate = date,
                                            _applicationDate),
                                        width: 100, // Explicit width
                                        height: 25,
                                        fontSize: 9,
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 5,
                                                vertical: 4) // Adjusted padding
                                        ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 2),
                        Divider(color: Colors.grey.shade300, thickness: 1.0),
                        const SizedBox(height: 2),

                        // Form Title
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

                        // Applicant Details
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
                          // FIX 2: Use the refactored _buildFormRow
                          _buildFormRow(
                            'लिंग *',
                            Row(children: [
                              // Use GestureDetector or InkWell to make custom radios interactive
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
                              readOnly:
                                  true, // Make it read-only so keyboard doesn't pop up
                              onTap: () => _selectDate(
                                  context,
                                  _dobApplicantController,
                                  (date) => _dobApplicant = date,
                                  _dobApplicant), // Open date picker on tap
                              validator: (value) => value == null ||
                                      value.isEmpty ||
                                      value.contains(' / / ')
                                  ? 'Required'
                                  : null, // Check if date is picked
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
                            villageController:
                                _villageApplicantController, // Applicant has a village
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
                        ]),
                        const SizedBox(height: 5),

                        // Beneficiary Details
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
                              _buildStyledFormField(
                                _relationshipBeneficiaryController,
                                'नाते',
                                validator: (value) =>
                                    value == null || value.isEmpty
                                        ? 'Required'
                                        : null,
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
                            // Add some space before the address block

                            // ADD THIS CHECKBOX WIDGET AT THE TOP
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
                                    // If the box is just checked, immediately copy the address
                                    _syncBeneficiaryAddress();
                                  } else {
                                    // If unchecked, clear the beneficiary's address fields
                                    _houseNoBeneficiaryController.clear();
                                    _buildingNameBeneficiaryController.clear();
                                    _societyComplexBeneficiaryController
                                        .clear();
                                    _streetNameBeneficiaryController.clear();
                                    _districtBeneficiaryController.clear();
                                    _talukaBeneficiaryController.clear();
                                    _pincodeBeneficiaryController.clear();
                                  }
                                });
                              },
                              controlAffinity: ListTileControlAffinity
                                  .leading, // Checkbox on the left
                              dense: true, // Reduces vertical padding
                              contentPadding: EdgeInsets
                                  .zero, // Removes extra horizontal padding
                            ),
                            // A little space after the checkbox

                            _buildAddressGroup(
                              title:
                                  'लाभार्थ्याचा पत्ता', // A new title for clarity
                              houseNoController: _houseNoBeneficiaryController,
                              buildingNameController:
                                  _buildingNameBeneficiaryController,
                              societyComplexController:
                                  _societyComplexBeneficiaryController,
                              streetNameController:
                                  _streetNameBeneficiaryController,
                              // villageController is omitted here, as beneficiary has no village field
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
                                _buildStyledFormField(
                                  _certificatePurposeController,
                                  'प्रमाणपत्र उद्देश',
                                  maxLines:
                                      3, // Allow multiple lines for text area
                                )),
                          ],
                        ),
                        // const Spacer(), // Removed Spacer as height is no longer fixed

                        // Footer - Ensure it's placed at the bottom of the *content*
                        const SizedBox(height: 20), // Add space before footer
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
                                  child: _buildFooterItem(
                                      'अर्जदाराचे नाव:',
                                      _fullNameApplicantController
                                          .text)), // Still display controller text here
                              const SizedBox(width: 5),
                              Flexible(
                                  flex: 1,
                                  child: _buildFooterItem('अर्जदाराची सही:',
                                      '')), // Signature needs different handling (image or placeholder)
                            ],
                          ),
                        ),
                        const SizedBox(height: 10), // Space after footer
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // SECTION 2: The Blue Dynamic Text Box for Page 2 of PDF
                RepaintBoundary(
                  key: _printKey2,
                  child: Container(
                    width: a4Width,
                    // Removed fixed height, let content define size
                    // height: a4Height, // This was causing overflow issues
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
                      mainAxisSize: MainAxisSize
                          .min, // Make column size based on children
                      children: [
                        // --- MARATHI SECTION ---
                        _buildDeclarationTitle("स्वघोषणापत्र"),
                        Wrap(
                          spacing: 5.0,
                          runSpacing: 10.0,
                          crossAxisAlignment: WrapCrossAlignment.end,
                          children: [
                            _buildStaticText("मी"),
                            // These now use the state variables updated by controller listeners
                            _buildUnderlinedText(
                                "${_fullNameApplicantController.text}, ${_fullNameBeneficiaryController.text}",
                                minWidth: 150,
                                fontWeight: FontWeight.bold),
                            _buildStaticText("यांचा"),
                            _buildUnderlinedText(
                                _relationshipBeneficiaryController.text,
                                minWidth: 80),
                            _buildStaticText("वय"),
                            // Use the calculated age based on the DateTime variable
                            _buildUnderlinedText(_calculateAge(_dobApplicant),
                                minWidth: 40),
                            _buildStaticText("वर्षे, व्यवसाय"),
                            _buildUnderlinedText("",
                                minWidth: 100), // Occupation placeholder
                            _buildStaticText("राहणार"),
                            // Use the dynamic address state variable
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
                                _buildSignatureItem(
                                    "ठिकाण :", "आगर"), // Static location?
                                _buildSignatureItem(
                                    "दिनांक :",
                                    _formatDate(
                                        DateTime.now())), // Current date
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                _buildSignatureItemRight(
                                    "अर्जदाराची स्वाक्षरी :",
                                    ""), // Signature placeholder
                                _buildSignatureItemRight(
                                    "अर्जदाराचे नाव",
                                    _fullNameApplicantController
                                        .text), // Applicant name from controller
                              ],
                            ),
                          ],
                        ),

                        const SizedBox(height: 30),
                        const Divider(thickness: 1, color: Colors.grey),
                        const SizedBox(height: 20),

                        // --- ENGLISH SECTION ---
                        _buildDeclarationTitle("Self Declaration"),
                        Wrap(
                          spacing: 5.0,
                          runSpacing: 10.0,
                          crossAxisAlignment: WrapCrossAlignment.end,
                          children: [
                            _buildStaticText("I"),
                            // Use values from controllers/state
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
                            // Use the calculated age
                            _buildUnderlinedText(_calculateAge(_dobApplicant),
                                minWidth: 40),
                            _buildStaticText("occupation"),
                            _buildUnderlinedText("",
                                minWidth: 80), // Occupation placeholder
                            _buildStaticText("resident of Village"),
                            _buildUnderlinedText(
                                _villageApplicantController
                                    .text, // Using village controller here
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
                                _buildSignatureItem(
                                    "Place:", "आगर"), // Static location?
                                _buildSignatureItem(
                                    "Date:",
                                    _formatDate(
                                        DateTime.now())), // Current Date
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                _buildSignatureItemRight("Applicant Signature:",
                                    ""), // Signature placeholder
                                _buildSignatureItemRight(
                                    "Applicant Name:",
                                    _fullNameApplicantController
                                        .text), // Applicant name from controller
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Space after the second section
              ],
            ),
          ),
        ),
      ),
      // Use the original bottom navigation bar for actions
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
            // FIX 3: Removed trailing comma after the first SizedBox
            SizedBox(
              // Use SizedBox for consistent button size
              width: 150,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: _downloadPdf,
                icon: const Icon(Icons.download),
                label: const Text('Download PDF'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              ),
            ), // FIX 3: Removed trailing comma here as well
            const SizedBox(width: 20),
            SizedBox(
              // Use SizedBox for consistent button size
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

  // Removed _buildDateInputBox as we are using a TextFormField with a date picker now

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
              color: Colors.white, // Background to "cut out" border
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

  // FIX 2: Refactored _buildFormRow to take label and the right widget
  Widget _buildFormRow(String label, Widget rightSideWidget) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 150, // Adjusted width slightly for better alignment
              child: Text(label,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 10))),
          const SizedBox(width: 10),
          Expanded(
            child: rightSideWidget, // Use the provided widget directly
          ),
        ],
      ),
    );
  }

  Widget _buildCustomRadio(String label, bool isSelected) {
    // This widget is now passive, interaction is handled by GestureDetector in build()
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

  // Helper to build a styled TextFormField with the desired border and padding
  Widget _buildStyledFormField(TextEditingController controller,
      String labelText, // Used for validation error messages
      {TextInputType? keyboardType,
      List<TextInputFormatter>? inputFormatters,
      int maxLines = 1,
      String? Function(String?)? validator,
      bool readOnly = false,
      VoidCallback? onTap, // Used for date pickers etc.
      double height = 25, // Default height for single line
      double? width, // Optional fixed width
      double fontSize = 10, // Default font size
      EdgeInsets contentPadding = const EdgeInsets.symmetric(
          horizontal: 5, vertical: 8) // Default padding
      }) {
    return SizedBox(
      height: maxLines > 1
          ? null
          : height, // Use height for single line, null for multiline
      width: width, // Apply width if provided
      child: TextFormField(
        controller: controller,
        readOnly: readOnly,
        onTap: onTap,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        maxLines: maxLines,
        style: TextStyle(fontSize: fontSize),
        decoration: InputDecoration(
          isDense: true, // Makes the input area smaller
          contentPadding: contentPadding,
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.zero, // Sharp corners
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.zero,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1.5),
            borderRadius: BorderRadius.zero,
          ),
          errorStyle:
              const TextStyle(fontSize: 8, height: 0.5), // Smaller error text
          errorMaxLines: 2, // Allow error text to wrap
        ),
        validator: validator,
      ),
    );
  }

// REPLACE the existing _buildAddressGroup with this one.
  Widget _buildAddressGroup({
    required String title,
    required TextEditingController houseNoController,
    required TextEditingController buildingNameController,
    required TextEditingController societyComplexController,
    required TextEditingController streetNameController,
    required TextEditingController talukaController,
    required TextEditingController districtController,
    required TextEditingController pincodeController,
    TextEditingController? villageController, // Optional for the village field
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
        const SizedBox(height: 5),
        // First Row of address fields
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: _buildAddressFormField('घर क्र.', houseNoController,
                    isRequired: true)),
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
                    'रस्त्याचे नाव', streetNameController,
                    isRequired: true)),
            const SizedBox(width: 8),
            // Conditionally add the Village field
            if (villageController != null)
              Expanded(
                  child: _buildAddressFormField('गांव', villageController,
                      isRequired: true))
            else
              Expanded(child: Container()), // Keep alignment if no village
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
            Expanded(child: Container()), // Empty space to balance the row
          ],
        ),
        const SizedBox(height: 5),
      ],
    );
  }

  // Helper widget specifically for the address fields (which are in a grid)
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
        const SizedBox(height: 3), // Space between label and field
        SizedBox(
          height:
              25, // A fixed height helps with vertical alignment in the grid
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
                borderRadius: BorderRadius.zero, // Makes it a sharp rectangle
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.zero,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.black,
                    width: 1.5), // Slightly thicker on focus
                borderRadius: BorderRadius.zero,
              ),
              errorStyle:
                  TextStyle(fontSize: 8, height: 0.5), // Smaller error text
              errorMaxLines: 2,
            ),
            validator: validator ??
                (value) {
                  // Use provided validator or default required
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
        const SizedBox(height: 15), // Space for signature
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(bottom: 2),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: Text(value,
              style: const TextStyle(
                  fontSize: 10)), // Still display text here for PDF capture
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
          width: 150, // Fixed width underline
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
      // Make column width fit its content
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment
            .stretch, // Stretch children to fill IntrinsicWidth
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Text(
              text,
              textAlign: align,
              style: TextStyle(fontSize: 12, fontWeight: fontWeight),
              softWrap: true, // Allow text to wrap if needed
            ),
          ),
          Container(
            height: 1,
            color: Colors.black,
            constraints: BoxConstraints(
                minWidth: minWidth), // Ensure minimum width for the underline
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

// buildSignatureItem and buildSignatureItemRight remain the same as they display static text for PDF capture
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
