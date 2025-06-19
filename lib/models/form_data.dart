import 'package:isar/isar.dart';

// Part file for Isar code generation.
part 'form_data.g.dart';

// Enum for form types.
enum FormType {
  form1, // Now corresponds to ApplicationData
  form2,
}

// Enum for form status.
enum FormStatus {
  pending,
  waiting,
  done,
}

// Base class for form data, common fields across all forms.
// @Collection() // Isar collection annotation.
class BaseFormData {
  // Made abstract
  Id id = Isar.autoIncrement; // Auto-incrementing ID for Isar.
  @Enumerated(EnumType.name) // Store enum as string in Isar.
  late FormType formType; // Discriminator for form type.
  late DateTime submissionDate;
  @Enumerated(EnumType.name) // Store enum as string in Isar.
  late FormStatus status;
}

// Form 1 specific data, now with the detailed ApplicationData structure.
@Collection()
class ApplicationData extends BaseFormData {
  // Common fields (from BaseFormData): id, formType, submissionDate, status

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
  late String emailApplicant;

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
  late String
      pincodeBeneficiary; // This field was missing in the original, adding for consistency
  late String livingYearsBeneficiary;
  late String maharashtraResidencePeriod;
  late String certificatePurpose;
}

// Form 2 specific data (remains as is).
@Collection()
class Form2Data extends BaseFormData {
  late String name; // Keeping original simple fields
  late String phone;
  late String address;
  late String adharNo;
  late String registerId;
  late String schoolName; // Additional field for Form 2.
}
