import 'dart:convert';

// Enum for form types.
enum FormType {
  form1,
  form2,
}

// Enum for form status.
enum FormStatus {
  pending,
  waiting,
  done,
}

// Base class for form data, common fields across all forms.
abstract class BaseFormData {
  int? id; // SQLite will handle auto-incrementing. Nullable for new records.
  late FormType formType;
  late DateTime submissionDate;
  late FormStatus status;
}

// Form 1 specific data, now ready for SQLite.
class ApplicationData extends BaseFormData {
  // Application Information
  late String referenceNo;
  late DateTime applicationDate;
  late String aadharNumber;
  late String fullNameApplicant;
  late String gender;
  late DateTime dobApplicant;
  late String pobApplicant;
  late String houseNoApplicant;
  late String buildingNameApplicant;
  late String societyComplexApplicant;
  late String streetNameApplicant;
  late String districtApplicant;
  late String talukaApplicant;
  late String pincodeApplicant;
  late String yearsAtAddressApplicant;
  late String mobile;

  // Beneficiary Information
  late String fullNameBeneficiary;
  late String relationshipBeneficiary;
  late DateTime dobBeneficiary;
  late String pobBeneficiary;
  late String houseNoBeneficiary;
  late String buildingNameBeneficiary;
  late String societyComplexBeneficiary;
  late String streetNameBeneficiary;
  late String districtBeneficiary;
  late String talukaBeneficiary;
  late String pincodeBeneficiary;
  late String livingYearsBeneficiary;
  late String maharashtraResidencePeriod;
  late String certificatePurpose;

  // --- FIX: ADD THIS UNNAMED CONSTRUCTOR ---
  ApplicationData();

  // Method to convert object to a Map for SQLite
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'formType': formType.name,
      'submissionDate': submissionDate.toIso8601String(),
      'status': status.name,
      'referenceNo': referenceNo,
      'applicationDate': applicationDate.toIso8601String(),
      'aadharNumber': aadharNumber,
      'fullNameApplicant': fullNameApplicant,
      'gender': gender,
      'dobApplicant': dobApplicant.toIso8601String(),
      'pobApplicant': pobApplicant,
      'houseNoApplicant': houseNoApplicant,
      'buildingNameApplicant': buildingNameApplicant,
      'societyComplexApplicant': societyComplexApplicant,
      'streetNameApplicant': streetNameApplicant,
      'districtApplicant': districtApplicant,
      'talukaApplicant': talukaApplicant,
      'pincodeApplicant': pincodeApplicant,
      'yearsAtAddressApplicant': yearsAtAddressApplicant,
      'mobile': mobile,
      'fullNameBeneficiary': fullNameBeneficiary,
      'relationshipBeneficiary': relationshipBeneficiary,
      'dobBeneficiary': dobBeneficiary.toIso8601String(),
      'pobBeneficiary': pobBeneficiary,
      'houseNoBeneficiary': houseNoBeneficiary,
      'buildingNameBeneficiary': buildingNameBeneficiary,
      'societyComplexBeneficiary': societyComplexBeneficiary,
      'streetNameBeneficiary': streetNameBeneficiary,
      'districtBeneficiary': districtBeneficiary,
      'talukaBeneficiary': talukaBeneficiary,
      'pincodeBeneficiary': pincodeBeneficiary,
      'livingYearsBeneficiary': livingYearsBeneficiary,
      'maharashtraResidencePeriod': maharashtraResidencePeriod,
      'certificatePurpose': certificatePurpose,
    };
  }

  // Factory constructor to create an object from a Map
  factory ApplicationData.fromMap(Map<String, dynamic> map) {
    // This now works because ApplicationData() exists.
    return ApplicationData()
      ..id = map['id']
      ..formType = FormType.values.byName(map['formType'])
      ..submissionDate = DateTime.parse(map['submissionDate'])
      ..status = FormStatus.values.byName(map['status'])
      ..referenceNo = map['referenceNo']
      ..applicationDate = DateTime.parse(map['applicationDate'])
      ..aadharNumber = map['aadharNumber']
      ..fullNameApplicant = map['fullNameApplicant']
      ..gender = map['gender']
      ..dobApplicant = DateTime.parse(map['dobApplicant'])
      ..pobApplicant = map['pobApplicant']
      ..houseNoApplicant = map['houseNoApplicant']
      ..buildingNameApplicant = map['buildingNameApplicant']
      ..societyComplexApplicant = map['societyComplexApplicant']
      ..streetNameApplicant = map['streetNameApplicant']
      ..districtApplicant = map['districtApplicant']
      ..talukaApplicant = map['talukaApplicant']
      ..pincodeApplicant = map['pincodeApplicant']
      ..yearsAtAddressApplicant = map['yearsAtAddressApplicant']
      ..mobile = map['mobile'] ?? ''
      ..fullNameBeneficiary = map['fullNameBeneficiary']
      ..relationshipBeneficiary = map['relationshipBeneficiary']
      ..dobBeneficiary = DateTime.parse(map['dobBeneficiary'])
      ..pobBeneficiary = map['pobBeneficiary']
      ..houseNoBeneficiary = map['houseNoBeneficiary']
      ..buildingNameBeneficiary = map['buildingNameBeneficiary']
      ..societyComplexBeneficiary = map['societyComplexBeneficiary']
      ..streetNameBeneficiary = map['streetNameBeneficiary']
      ..districtBeneficiary = map['districtBeneficiary']
      ..talukaBeneficiary = map['talukaBeneficiary']
      ..pincodeBeneficiary = map['pincodeBeneficiary']
      ..livingYearsBeneficiary = map['livingYearsBeneficiary']
      ..maharashtraResidencePeriod = map['maharashtraResidencePeriod']
      ..certificatePurpose = map['certificatePurpose'];
  }
}

// Helper class for the family members table in Form2Data. Not stored directly in DB.
class FamilyMember {
  String name;
  String relation;
  String age;
  String profession;
  String income;

  FamilyMember({
    this.name = '',
    this.relation = '',
    this.age = '',
    this.profession = '',
    this.income = '',
  });

  // Convert a FamilyMember object into a Map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'relation': relation,
      'age': age,
      'profession': profession,
      'income': income,
    };
  }

  // Create a FamilyMember object from a Map
  factory FamilyMember.fromMap(Map<String, dynamic> map) {
    return FamilyMember(
      name: map['name'] ?? '',
      relation: map['relation'] ?? '',
      age: map['age'] ?? '',
      profession: map['profession'] ?? '',
      income: map['income'] ?? '',
    );
  }
}

// Form 2 specific data, now structured for the Income Certificate.
class Form2Data extends BaseFormData {
  // --- Header ---
  late String signatureNo;
  late DateTime applicationDate;

  // --- Applicant Details ---
  late String aadhaarNumber;
  late String fullNameApplicant;
  late String gender;
  late DateTime dobApplicant;
  late String pobApplicant; // Place of Birth
  late String houseNo;
  late String society;
  late String road;
  late String district;
  late String taluka;
  late String village;
  late String mobile;
  late String email;

  // --- Income Details ---
  late String profession;
  late String panNumber;
  // This will store a JSON string of the family members list.
  late String familyMembersJson;

  // --- Beneficiary Details ---
  late String fullNameBeneficiary;
  late String relationshipBeneficiary;
  late String certificatePurpose;

  Form2Data();

  // Method to get family members as a list of objects
  List<FamilyMember> getFamilyMembers() {
    if (familyMembersJson.isEmpty) return [];
    final List<dynamic> decoded = jsonDecode(familyMembersJson);
    return decoded.map((item) => FamilyMember.fromMap(item)).toList();
  }

  // Method to set family members from a list of objects
  void setFamilyMembers(List<FamilyMember> members) {
    final List<Map<String, dynamic>> memberMaps =
        members.map((m) => m.toMap()).toList();
    familyMembersJson = jsonEncode(memberMaps);
  }

  // Method to convert object to a Map for SQLite
  @override
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'formType': formType.name,
      'submissionDate': submissionDate.toIso8601String(),
      'status': status.name,
      'signatureNo': signatureNo,
      'applicationDate': applicationDate.toIso8601String(),
      'aadhaarNumber': aadhaarNumber,
      'fullNameApplicant': fullNameApplicant,
      'gender': gender,
      'dobApplicant': dobApplicant.toIso8601String(),
      'pobApplicant': pobApplicant,
      'houseNo': houseNo,
      'society': society,
      'road': road,
      'district': district,
      'taluka': taluka,
      'village': village,
      'mobile': mobile,
      'email': email,
      'profession': profession,
      'panNumber': panNumber,
      'familyMembersJson': familyMembersJson,
      'fullNameBeneficiary': fullNameBeneficiary,
      'relationshipBeneficiary': relationshipBeneficiary,
      'certificatePurpose': certificatePurpose,
    };
  }

  // Factory constructor to create an object from a Map
  factory Form2Data.fromMap(Map<String, dynamic> map) {
    return Form2Data()
      ..id = map['id']
      ..formType = FormType.values.byName(map['formType'])
      ..submissionDate = DateTime.parse(map['submissionDate'])
      ..status = FormStatus.values.byName(map['status'])
      ..signatureNo = map['signatureNo']
      ..applicationDate = DateTime.parse(map['applicationDate'])
      ..aadhaarNumber = map['aadhaarNumber']
      ..fullNameApplicant = map['fullNameApplicant']
      ..gender = map['gender']
      ..dobApplicant = DateTime.parse(map['dobApplicant'])
      ..pobApplicant = map['pobApplicant']
      ..houseNo = map['houseNo']
      ..society = map['society']
      ..road = map['road']
      ..district = map['district']
      ..taluka = map['taluka']
      ..village = map['village']
      ..mobile = map['mobile']
      ..email = map['email']
      ..profession = map['profession']
      ..panNumber = map['panNumber']
      ..familyMembersJson = map['familyMembersJson']
      ..fullNameBeneficiary = map['fullNameBeneficiary']
      ..relationshipBeneficiary = map['relationshipBeneficiary']
      ..certificatePurpose = map['certificatePurpose'];
  }
}
