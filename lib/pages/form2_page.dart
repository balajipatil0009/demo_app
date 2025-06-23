// lib/pages/form2_page.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;
import 'package:flutter/rendering.dart';

import 'package:flutter_desktop_app/models/form_data.dart';
import 'package:flutter_desktop_app/services/sqlite_service.dart';
import 'package:flutter_desktop_app/providers/form_provider.dart';
import 'package:flutter_desktop_app/utils/pdf_utils.dart';
import 'package:flutter_desktop_app/widgets/app_navigation_bar.dart';

// Helper class to manage controllers for each family member row
class FamilyMemberControllers {
  final TextEditingController nameController;
  final TextEditingController relationController;
  final TextEditingController ageController;
  final TextEditingController professionController;
  final TextEditingController incomeController;

  FamilyMemberControllers()
      : nameController = TextEditingController(),
        relationController = TextEditingController(),
        ageController = TextEditingController(),
        professionController = TextEditingController(),
        incomeController = TextEditingController();

  void dispose() {
    nameController.dispose();
    relationController.dispose();
    ageController.dispose();
    professionController.dispose();
    incomeController.dispose();
  }
}

class Form2Page extends StatefulWidget {
  final int? formId; // Optional ID for editing existing forms.

  const Form2Page({super.key, this.formId});

  @override
  State<Form2Page> createState() => _Form2PageState();
}

class _Form2PageState extends State<Form2Page> {
  // Suggestions for the relation field
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
  // Suggestions for the purpose field
  final List<String> _purposeSuggestions = const [
    'शैक्षणिक',
  ];

  // State for the checkbox
  bool _isBeneficiarySameAsApplicant = true;

  final _formKey = GlobalKey<FormState>();
  final GlobalKey _printKey = GlobalKey();
  final GlobalKey _printKey2 = GlobalKey();

  // --- All Controllers ---
  final TextEditingController _signatureNoController = TextEditingController();
  final TextEditingController _applicationDateController =
      TextEditingController();
  final TextEditingController _aadhaarController = TextEditingController();
  final TextEditingController _fullNameApplicantController =
      TextEditingController();
  String? _genderApplicant = 'पुरुष';
  final TextEditingController _dobApplicantController = TextEditingController();
  final TextEditingController _pobApplicantController = TextEditingController();
  final TextEditingController _houseNoController = TextEditingController();
  final TextEditingController _societyController = TextEditingController();
  final TextEditingController _roadController = TextEditingController();
  final TextEditingController _districtController =
      TextEditingController(text: 'सांगली');
  final TextEditingController _talukaController =
      TextEditingController(text: 'मिरज');
  final TextEditingController _villageController =
      TextEditingController(text: 'आरग');
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _professionController = TextEditingController();
  final TextEditingController _panController = TextEditingController();
  List<FamilyMemberControllers> _familyMemberControllers = [];
  final TextEditingController _fullNameBeneficiaryController =
      TextEditingController();
  final TextEditingController _relationshipBeneficiaryController =
      TextEditingController();
  final TextEditingController _certificatePurposeController =
      TextEditingController();

  DateTime? _applicationDate;
  DateTime? _dobApplicant;
  Form2Data? _currentForm;

  String _dynamicApplicantName = '';
  String _dynamicApplicantAddress = '';
  String _dynamicBeneficiaryName = '';
  String _dynamicRelationship = '';
  String _dynamicApplicantAge = '';
  String _dynamicApplicantProfession = '';

  @override
  void initState() {
    super.initState();
    // Add listeners to update dynamic text in real-time
    _fullNameApplicantController.addListener(_updateDynamicText);
    _dobApplicantController.addListener(_updateDynamicText);
    _professionController.addListener(_updateDynamicText);
    _houseNoController.addListener(_updateDynamicText);
    _societyController.addListener(_updateDynamicText);
    _roadController.addListener(_updateDynamicText);
    _villageController.addListener(_updateDynamicText);
    _talukaController.addListener(_updateDynamicText);
    _districtController.addListener(_updateDynamicText);

    _fullNameBeneficiaryController.addListener(_updateDynamicText);
    _relationshipBeneficiaryController.addListener(_updateDynamicText);

    if (widget.formId != null) {
      _loadFormData();
    } else {
      _applicationDate = DateTime.now();
      _applicationDateController.text = _formatDate(_applicationDate);
      _signatureNoController.text = _generateSignatureNo();
      _addFamilyMemberRow();
      _updateDynamicText();
    }
  }

  @override
  void dispose() {
    _fullNameApplicantController.removeListener(_updateDynamicText);
    _dobApplicantController.removeListener(_updateDynamicText);
    _professionController.removeListener(_updateDynamicText);
    _houseNoController.removeListener(_updateDynamicText);
    _societyController.removeListener(_updateDynamicText);
    _roadController.removeListener(_updateDynamicText);
    _districtController.removeListener(_updateDynamicText);
    _talukaController.removeListener(_updateDynamicText);
    _villageController.removeListener(_updateDynamicText);
    _fullNameBeneficiaryController.removeListener(_updateDynamicText);
    _relationshipBeneficiaryController.removeListener(_updateDynamicText);

    _signatureNoController.dispose();
    _applicationDateController.dispose();
    _aadhaarController.dispose();
    _fullNameApplicantController.dispose();
    _dobApplicantController.dispose();
    _pobApplicantController.dispose();
    _houseNoController.dispose();
    _societyController.dispose();
    _roadController.dispose();
    _districtController.dispose();
    _talukaController.dispose();
    _villageController.dispose();
    _mobileController.dispose();
    _emailController.dispose();
    _professionController.dispose();
    _panController.dispose();
    _fullNameBeneficiaryController.dispose();
    _relationshipBeneficiaryController.dispose();
    _certificatePurposeController.dispose();

    for (var controllerSet in _familyMemberControllers) {
      controllerSet.dispose();
    }
    super.dispose();
  }

  void _addFamilyMemberRow() {
    setState(() {
      _familyMemberControllers.add(FamilyMemberControllers());
    });
  }

  void _removeFamilyMemberRow(int index) {
    if (index == 0) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Cannot remove the applicant's row."),
        backgroundColor: Colors.red,
      ));
      return;
    }
    setState(() {
      _familyMemberControllers[index].dispose();
      _familyMemberControllers.removeAt(index);
    });
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

  void _syncApplicantData() {
    if (_isBeneficiarySameAsApplicant) {
      _fullNameBeneficiaryController.text = _fullNameApplicantController.text;
      _relationshipBeneficiaryController.text = 'स्वतः';
    }

    if (_familyMemberControllers.isNotEmpty) {
      final firstMember = _familyMemberControllers[0];
      firstMember.nameController.text = _fullNameApplicantController.text;
      firstMember.ageController.text = _calculateAge(_dobApplicant);
      firstMember.relationController.text = 'स्वतः';
      firstMember.professionController.text = _professionController.text;
    }
  }

  void _updateDynamicText() {
    _syncApplicantData();

    setState(() {
      _dynamicApplicantName = _fullNameApplicantController.text;
      _dynamicApplicantAddress =
          '${_houseNoController.text}, ${_societyController.text}, ${_roadController.text}, ${_villageController.text}, ता. ${_talukaController.text}, जि. ${_districtController.text}';
      _dynamicApplicantAddress = _dynamicApplicantAddress
          .replaceAll(RegExp(r',(\s*,)+'), ',')
          .replaceAll(RegExp(r'^\s*[, ]+\s*'), '')
          .replaceAll(RegExp(r'\s*[, ]+\s*$'), '');

      _dynamicBeneficiaryName = _fullNameBeneficiaryController.text;
      _dynamicRelationship = _relationshipBeneficiaryController.text;
      _dynamicApplicantAge = _calculateAge(_dobApplicant);
      _dynamicApplicantProfession = _professionController.text;
    });
  }

  String _generateSignatureNo() {
    final now = DateTime.now();
    return 'SIG${DateFormat('yyyyMMddHHmmss').format(now)}';
  }

  Future<void> _loadFormData() async {
    final service = SQLiteService();
    final formData = await service.getForm2Data(widget.formId!);
    if (formData != null) {
      setState(() {
        _currentForm = formData;
        _signatureNoController.text = formData.signatureNo;
        _applicationDate = formData.applicationDate;
        _applicationDateController.text = _formatDate(_applicationDate);
        _aadhaarController.text = formData.aadhaarNumber;
        _fullNameApplicantController.text = formData.fullNameApplicant;
        _genderApplicant = formData.gender;
        _dobApplicant = formData.dobApplicant;
        _dobApplicantController.text = _formatDate(_dobApplicant);
        _pobApplicantController.text = formData.pobApplicant;
        _houseNoController.text = formData.houseNo;
        _societyController.text = formData.society;
        _roadController.text = formData.road;
        _districtController.text = formData.district;
        _talukaController.text = formData.taluka;
        _villageController.text = formData.village;
        _mobileController.text = formData.mobile;
        _emailController.text = formData.email;
        _professionController.text = formData.profession;
        _panController.text = formData.panNumber;
        _fullNameBeneficiaryController.text = formData.fullNameBeneficiary;
        _relationshipBeneficiaryController.text =
            formData.relationshipBeneficiary;
        _certificatePurposeController.text = formData.certificatePurpose;

        final familyMembers = formData.getFamilyMembers();
        _familyMemberControllers.clear();
        for (var member in familyMembers) {
          final controllers = FamilyMemberControllers();
          controllers.nameController.text = member.name;
          controllers.relationController.text = member.relation;
          controllers.ageController.text = member.age;
          controllers.professionController.text = member.profession;
          controllers.incomeController.text = member.income;
          _familyMemberControllers.add(controllers);
        }

        if (_familyMemberControllers.isEmpty) {
          _addFamilyMemberRow();
        }

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
          imageBytesList: [pngBytes1, pngBytes2]);

      if (forPrinting) {
        await PdfUtils.printPdf(pdfBytes);
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Printing PDF...')));
      } else {
        await PdfUtils.savePdf(pdfBytes,
            'income_certificate_${DateFormat('yyyyMMdd_HHmmss').format(DateTime.now())}.pdf');
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('PDF downloaded successfully!')));
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Error generating PDF: $e')));
    }
  }

  Future<void> _downloadPdf() async => _generateAndSavePdf(forPrinting: false);
  Future<void> _printPdf() async => _generateAndSavePdf(forPrinting: true);

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      final service = SQLiteService();
      final formProvider = Provider.of<FormProvider>(context, listen: false);
      final formData = _currentForm ?? Form2Data();

      formData.signatureNo = _signatureNoController.text;
      formData.applicationDate = _applicationDate ?? DateTime.now();
      formData.aadhaarNumber = _aadhaarController.text;
      formData.fullNameApplicant = _fullNameApplicantController.text;
      formData.gender = _genderApplicant ?? '';
      formData.dobApplicant = _dobApplicant ?? DateTime.now();
      formData.pobApplicant = _pobApplicantController.text;
      formData.houseNo = _houseNoController.text;
      formData.society = _societyController.text;
      formData.road = _roadController.text;
      formData.district = _districtController.text;
      formData.taluka = _talukaController.text;
      formData.village = _villageController.text;
      formData.mobile = _mobileController.text;
      formData.email = _emailController.text;
      formData.profession = _professionController.text;
      formData.panNumber = _panController.text;
      formData.fullNameBeneficiary = _fullNameBeneficiaryController.text;
      formData.relationshipBeneficiary =
          _relationshipBeneficiaryController.text;
      formData.certificatePurpose = _certificatePurposeController.text;

      formData.formType = FormType.form2;
      formData.submissionDate = DateTime.now();
      formData.status = _currentForm?.status ?? FormStatus.pending;

      final familyMembers = _familyMemberControllers.map((c) {
        return FamilyMember(
          name: c.nameController.text,
          relation: c.relationController.text,
          age: c.ageController.text,
          profession: c.professionController.text,
          income: c.incomeController.text,
        );
      }).toList();
      formData.setFamilyMembers(familyMembers);

      if (_currentForm == null) {
        formData.status = FormStatus.pending;
        await service.saveForm2Data(formData);
        formProvider.addForm(formData);
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Form 2 submitted successfully!')));
        context.go('/forms-list');
      } else {
        await service.saveForm2Data(formData);
        formProvider.updateForm(formData);
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Form 2 updated successfully!')));
      }
      setState(() {
        _currentForm = formData;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Please fill all required fields correctly.')));
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
    const double a4Width = 794;

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
                    padding: const EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 1.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: const Offset(0, 1))
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildHeader(),
                        const SizedBox(height: 20),
                        Center(
                          child: Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.black, width: 2.0))),
                            child: const Text(
                                'उत्पन्नाचा दाखल्यासाठी अर्ज (वर्ष/वर्षे)',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ),
                        ),
                        const SizedBox(height: 20),
                        _buildFieldset(legend: 'अर्जदाराचा तपशील', children: [
                          _buildFormRow(
                              'आधार क्रमांक',
                              _buildStyledFormField(
                                  _aadhaarController, 'आधार क्रमांक',
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  validator: (v) => v != null && v.length != 12
                                      ? '12 digits required'
                                      : null)),
                          _buildFormRow(
                              'संपूर्ण नाव *',
                              _buildStyledFormField(
                                  _fullNameApplicantController, 'संपूर्ण नाव',
                                  validator: (v) => v == null || v.isEmpty
                                      ? 'Required'
                                      : null)),
                          _buildFormRow('लिंग *', _buildGenderSelector()),
                          _buildFormRow(
                              'जन्मतारीख *',
                              _buildStyledFormField(
                                  _dobApplicantController, 'जन्मतारीख',
                                  readOnly: true,
                                  onTap: () => _selectDate(
                                      context,
                                      _dobApplicantController,
                                      (date) => _dobApplicant = date,
                                      _dobApplicant),
                                  validator: (v) => v == null || v.isEmpty
                                      ? 'Required'
                                      : null)),
                          _buildFormRow(
                              'जन्माचे ठिकाण *',
                              _buildStyledFormField(
                                  _pobApplicantController, 'जन्माचे ठिकाण',
                                  validator: (v) => v == null || v.isEmpty
                                      ? 'Required'
                                      : null)),
                          _buildAddressGroup(),
                          _buildFormRow(
                              'भ्रमणध्वनी क्र.',
                              _buildStyledFormField(
                                  _mobileController, 'मोबाईल नंबर',
                                  keyboardType: TextInputType.phone,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ])),
                          _buildFormRow(
                              'ई-मेल',
                              _buildStyledFormField(
                                  _emailController, 'ई-मेल पत्ता',
                                  keyboardType: TextInputType.emailAddress)),
                        ]),
                        _buildFieldset(legend: 'उत्पन्नाचा तपशील', children: [
                          _buildFormRow(
                              'अर्जदाराचा व्यवसाय:',
                              _buildStyledFormField(
                                  _professionController, 'व्यवसाय')),
                          _buildFormRow(
                              'अर्जदाराचा पॅन कार्ड क्रमांक',
                              _buildStyledFormField(
                                  _panController, 'पॅन कार्ड नंबर')),
                          const SizedBox(height: 10),
                          const Text('कुटुंबातील सज्ञान व्यक्तींची माहिती',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          _buildFamilyMembersTable(),
                          const SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerRight,
                            child: ElevatedButton.icon(
                              icon: const Icon(Icons.add),
                              label: const Text('Add Row'),
                              onPressed: _addFamilyMemberRow,
                            ),
                          )
                        ]),
                        _buildFieldset(legend: 'लाभार्थ्याचा तपशील', children: [
                          CheckboxListTile(
                            title: const Text(
                              'लाभार्थी अर्जदाराप्रमाणेच आहे',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                            value: _isBeneficiarySameAsApplicant,
                            onChanged: (bool? value) {
                              setState(() {
                                _isBeneficiarySameAsApplicant = value ?? false;
                                if (_isBeneficiarySameAsApplicant) {
                                  _syncApplicantData();
                                }
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                            contentPadding: EdgeInsets.zero,
                            dense: true,
                          ),
                          const SizedBox(height: 5),
                          _buildFormRow(
                            'लाभार्थ्याचे संपूर्ण नाव',
                            _buildStyledFormField(
                              _fullNameBeneficiaryController,
                              'लाभार्थ्याचे नाव',
                              readOnly: _isBeneficiarySameAsApplicant,
                            ),
                          ),
                          _buildFormRow(
                            'लाभार्थ्याचे नाते',
                            _buildStyledFormField(
                              _relationshipBeneficiaryController,
                              'नाते',
                              readOnly: _isBeneficiarySameAsApplicant,
                            ),
                          ),
                          _buildFormRow(
                              'प्रमाणपत्र कशासाठी हवे आहे',
                              _buildPurposeAutocompleteField(
                                  _certificatePurposeController)),
                        ]),
                        _buildFooter(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                RepaintBoundary(
                    key: _printKey2,
                    child: Container(
                      width: a4Width,
                      padding: const EdgeInsets.all(40.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 1.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: const Offset(0, 1))
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Builder(builder: (context) {
                            final String combinedName = [
                              _dynamicBeneficiaryName,
                              _dynamicApplicantName
                            ].where((s) => s.isNotEmpty).join(', ');

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildDeclarationTitle('स्वघोषणापत्र'),
                                Wrap(
                                  spacing: 5.0,
                                  runSpacing: 10.0,
                                  crossAxisAlignment: WrapCrossAlignment.end,
                                  children: [
                                    _buildStaticText("मी"),
                                    _buildUnderlinedText(combinedName,
                                        minWidth: 150,
                                        fontWeight: FontWeight.bold),
                                    _buildStaticText("यांचा"),
                                    _buildUnderlinedText(_dynamicRelationship,
                                        minWidth: 80),
                                    _buildStaticText("वय"),
                                    _buildUnderlinedText(_dynamicApplicantAge,
                                        minWidth: 40),
                                    _buildStaticText("वर्षे, व्यवसाय"),
                                    _buildUnderlinedText(
                                        _dynamicApplicantProfession,
                                        minWidth: 100),
                                    _buildStaticText("राहणार"),
                                    _buildUnderlinedText(
                                        _dynamicApplicantAddress,
                                        minWidth: 200,
                                        align: TextAlign.left),
                                  ],
                                ),
                                _buildParagraph(
                                    'घोषित / करतो की वरील सर्व माहिती माझ्या व्यक्तिगत माहिती व समजुतीनुसार खरी आहे. सदर माहिती खोटी आढळून आल्यास, भारतीय दंड संहिता 1960 कलम 199 व 200 व अन्य / संबंधित कायद्यानुसार माझ्यावर खटला भरला जाईल व त्यानुसार मी शिक्षेस पात्र राहीन, याची मला पूर्ण जाणीव आहे.'),
                                _buildSignatureSection(_dynamicApplicantName),
                                const SizedBox(height: 30),
                                const Divider(),
                                const SizedBox(height: 20),
                                _buildDeclarationTitle(
                                    'स्वयंसाक्षांकनासाठीचे स्वंयघोषणापत्र'),
                                Wrap(
                                  spacing: 5.0,
                                  runSpacing: 10.0,
                                  crossAxisAlignment: WrapCrossAlignment.end,
                                  children: [
                                    _buildStaticText("मी श्री."),
                                    _buildUnderlinedText(combinedName,
                                        minWidth: 150,
                                        fontWeight: FontWeight.bold),
                                    _buildStaticText("यांचा"),
                                    _buildUnderlinedText(_dynamicRelationship,
                                        minWidth: 80),
                                    _buildStaticText("वय"),
                                    _buildUnderlinedText(_dynamicApplicantAge,
                                        minWidth: 40),
                                    _buildStaticText("वर्षे व्यवसाय"),
                                    _buildUnderlinedText(
                                        _dynamicApplicantProfession,
                                        minWidth: 100),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                _buildStaticText(
                                    "राहणार ता. मिरज जि. सांगली घोषित करतो की,वरील सर्व माहिती माझे व्यक्तिगत माहिती व समजुतीनुसार खरी आहे."),
                                _buildParagraph(
                                    'मी स्वयंसाक्षांकीत केलेल्या प्रती व मुळकागदपत्रांच्या सत्यप्रती आहेत. त्या खोट्या आढळून आल्यास भारतीय दंड संहिता १९६० कलम १९९ व २०० व अन्य माझ्यावर खटला कायद्यानुसार संबधित /जाईल व त्यानुसार मी शिक्षेस पात्र राहीन, याची मला पुर्ण जाणीव आहे.'),
                                _buildSignatureSection(_dynamicApplicantName),
                              ],
                            );
                          }),
                        ],
                      ),
                    )),
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
                child:
                    Text(_currentForm == null ? 'Submit Form' : 'Update Form')),
            const SizedBox(width: 20),
            SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton.icon(
                    onPressed: _downloadPdf,
                    icon: const Icon(Icons.download),
                    label: const Text('Download PDF'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green))),
            const SizedBox(width: 20),
            SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton.icon(
                    onPressed: _printPdf,
                    icon: const Icon(Icons.print),
                    label: const Text('Print PDF'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange))),
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime? date) =>
      date == null ? '' : DateFormat('dd/MM/yyyy').format(date);

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/images/logo.webp',
            width: 80, height: 70, fit: BoxFit.cover),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(children: [
              const Text('सही क.', style: TextStyle(fontSize: 12)),
              const SizedBox(width: 5),
              _buildStyledFormField(_signatureNoController, 'सही क.',
                  readOnly: true, width: 120, height: 28, fontSize: 12),
            ]),
            const SizedBox(height: 4),
            Row(children: [
              const Text('अर्जाचा दिनांक', style: TextStyle(fontSize: 12)),
              const SizedBox(width: 5),
              _buildStyledFormField(
                  _applicationDateController, 'अर्जाचा दिनांक',
                  readOnly: true,
                  width: 120,
                  height: 28,
                  fontSize: 12,
                  onTap: () => _selectDate(context, _applicationDateController,
                      (date) => _applicationDate = date, _applicationDate)),
            ]),
          ],
        )
      ],
    );
  }

  Widget _buildFieldset(
      {required String legend, required List<Widget> children}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 1.0)),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -12,
            left: 15,
            child: Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(legend,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold))),
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start, children: children),
        ],
      ),
    );
  }

  Widget _buildFormRow(String label, Widget rightSideWidget) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              width: 180,
              child: Text(label,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 13))),
          const SizedBox(width: 10),
          Expanded(child: rightSideWidget),
        ],
      ),
    );
  }

  Widget _buildStyledFormField(
    TextEditingController controller,
    String labelText, {
    TextInputType? keyboardType,
    List<TextInputFormatter>? inputFormatters,
    int maxLines = 1,
    String? Function(String?)? validator,
    bool readOnly = false,
    VoidCallback? onTap,
    double height = 32,
    double? width,
    double fontSize = 13,
  }) {
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
        style: TextStyle(
            fontSize: fontSize,
            backgroundColor: readOnly ? Colors.grey[200] : null),
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
          errorStyle: TextStyle(fontSize: 9, height: 0.8),
          errorMaxLines: 2,
        ),
        validator: validator,
      ),
    );
  }

  Widget _buildGenderSelector() {
    return Row(children: [
      _buildCustomRadio(
          'पुरुष', 'पुरुष', (val) => setState(() => _genderApplicant = val)),
      _buildCustomRadio(
          'स्त्री', 'स्त्री', (val) => setState(() => _genderApplicant = val)),
      _buildCustomRadio(
          'इतर', 'इतर', (val) => setState(() => _genderApplicant = val)),
    ]);
  }

  Widget _buildCustomRadio(
      String label, String value, ValueChanged<String> onChanged) {
    return GestureDetector(
      onTap: () => onChanged(value),
      child: Padding(
        padding: const EdgeInsets.only(right: 25.0),
        child: Row(
          children: [
            Container(
              width: 18,
              height: 18,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: _genderApplicant == value
                  ? Center(
                      child:
                          Container(width: 10, height: 10, color: Colors.black))
                  : null,
            ),
            const SizedBox(width: 5),
            Text(label, style: const TextStyle(fontSize: 13)),
          ],
        ),
      ),
    );
  }

  Widget _buildAddressGroup() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, style: BorderStyle.solid)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('(सध्याचा कायमचा/माहिती सोबतच्या तपशील प्रमाणे)',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                    child: _buildAddressFormField(
                        'घर क्रमांक / इमारतीचे नाव', _houseNoController)),
                const SizedBox(width: 12),
                Expanded(
                    child: _buildAddressFormField(
                        'संस्था / संकुल', _societyController)),
                const SizedBox(width: 12),
                Expanded(
                    child: _buildAddressFormField(
                        'रस्त्याचे नाव', _roadController)),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                    child: _buildAddressFormField('जिल्हा', _districtController,
                        isRequired: true)),
                const SizedBox(width: 12),
                Expanded(
                    child: _buildAddressFormField('तालुका', _talukaController,
                        isRequired: true)),
                const SizedBox(width: 12),
                Expanded(
                    child: _buildAddressFormField('गाव', _villageController,
                        isRequired: true)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddressFormField(String label, TextEditingController controller,
      {bool isRequired = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 12)),
        const SizedBox(height: 3),
        _buildStyledFormField(controller, label,
            validator: (v) =>
                isRequired && (v == null || v.isEmpty) ? 'Required' : null),
      ],
    );
  }

  Widget _buildFamilyMembersTable() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 3),
          color: Colors.grey.shade200,
          child: Row(
            children: [
              _buildTableHeaderCell('अ. क्र.', flex: 1),
              _buildTableHeaderCell('कुटुंबातील व्यक्तींचे नाव', flex: 4),
              _buildTableHeaderCell('नाते', flex: 2),
              _buildTableHeaderCell('वय', flex: 1),
              _buildTableHeaderCell('व्यवसाय', flex: 2),
              _buildTableHeaderCell('उत्पन्न', flex: 2),
              const SizedBox(width: 50),
            ],
          ),
        ),
        if (_familyMemberControllers.isEmpty)
          const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                  "Please add a family member using the 'Add Row' button."))
        else
          ...List.generate(_familyMemberControllers.length, (index) {
            return _buildFamilyMemberRow(
                index, _familyMemberControllers[index]);
          }),
      ],
    );
  }

  Widget _buildFamilyMemberRow(int index, FamilyMemberControllers controllers) {
    final bool isApplicantRow = index == 0;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTableCell(
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text('${index + 1}.', textAlign: TextAlign.center),
              ),
              flex: 1),
          _buildTableCell(
              _buildStyledFormField(controllers.nameController, 'Name',
                  readOnly: isApplicantRow),
              flex: 4),
          _buildTableCell(
              _buildRelationAutocompleteField(
                controllers.relationController,
              ),
              flex: 2),
          _buildTableCell(
              _buildStyledFormField(controllers.ageController, 'Age',
                  keyboardType: TextInputType.number, readOnly: isApplicantRow),
              flex: 1),
          _buildTableCell(
              _buildStyledFormField(
                  controllers.professionController, 'Profession',
                  readOnly: isApplicantRow),
              flex: 2),
          _buildTableCell(
              _buildStyledFormField(controllers.incomeController, 'Income',
                  keyboardType: TextInputType.number),
              flex: 2),
          SizedBox(
            width: 50,
            child: IconButton(
              icon: Icon(Icons.remove_circle_outline,
                  color: isApplicantRow ? Colors.grey : Colors.red),
              onPressed: () => _removeFamilyMemberRow(index),
              tooltip: 'Remove Row',
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTableHeaderCell(String text, {int flex = 1}) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Text(text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11)),
      ),
    );
  }

  Widget _buildTableCell(Widget child, {int flex = 1}) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: child,
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

  Widget _buildFooter() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(top: 15),
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.black, width: 1.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: _buildFormRow(
                  'अर्जदाराचे नाव:',
                  Text(_fullNameApplicantController.text,
                      style: const TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold)))),
          Expanded(
              child:
                  _buildFormRow('अर्जदाराची सही:', const SizedBox(height: 20))),
        ],
      ),
    );
  }

  Widget _buildDeclarationTitle(String text) => Column(children: [
        Text(text,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 5),
        Container(height: 1.5, color: Colors.black, width: 150),
        const SizedBox(height: 25)
      ]);
  Widget _buildStaticText(String text) => Padding(
      padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
      child: Text(text, style: const TextStyle(fontSize: 12)));
  Widget _buildUnderlinedText(String text,
          {double minWidth = 100,
          FontWeight fontWeight = FontWeight.normal,
          TextAlign align = TextAlign.center}) =>
      IntrinsicWidth(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Text(text.isEmpty ? ' ' : text,
                    textAlign: align,
                    style: TextStyle(fontSize: 12, fontWeight: fontWeight),
                    softWrap: true)),
            Container(
                height: 1,
                color: Colors.black,
                constraints: BoxConstraints(minWidth: minWidth))
          ]));
  Widget _buildParagraph(String text) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
      child: Text(text,
          textAlign: TextAlign.justify,
          style: const TextStyle(fontSize: 12, height: 1.6)));
  Widget _buildSignatureSection(String applicantName) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              const Text('ठिकाण :', style: TextStyle(fontSize: 12)),
              const SizedBox(width: 5),
              _buildUnderlinedText('आगर', minWidth: 100, align: TextAlign.left)
            ]),
            const SizedBox(height: 15),
            Row(children: [
              const Text('दिनांक :', style: TextStyle(fontSize: 12)),
              const SizedBox(width: 5),
              _buildUnderlinedText(_formatDate(DateTime.now()),
                  minWidth: 100, align: TextAlign.left)
            ]),
          ]),
          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const Text('अर्जदाराची स्वाक्षरी :',
                style: TextStyle(fontSize: 12)),
            const SizedBox(height: 20),
            _buildUnderlinedText('', minWidth: 150),
            const Text('अर्जदाराचे नाव', style: TextStyle(fontSize: 12)),
            _buildUnderlinedText(applicantName, minWidth: 150),
          ]),
        ],
      ),
    );
  }
}
