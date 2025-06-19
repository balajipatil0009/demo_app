// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetApplicationDataCollection on Isar {
  IsarCollection<ApplicationData> get applicationDatas => this.collection();
}

const ApplicationDataSchema = CollectionSchema(
  name: r'ApplicationData',
  id: -247301493185890184,
  properties: {
    r'aadharNumber': PropertySchema(
      id: 0,
      name: r'aadharNumber',
      type: IsarType.string,
    ),
    r'applicationDate': PropertySchema(
      id: 1,
      name: r'applicationDate',
      type: IsarType.dateTime,
    ),
    r'buildingNameApplicant': PropertySchema(
      id: 2,
      name: r'buildingNameApplicant',
      type: IsarType.string,
    ),
    r'buildingNameBeneficiary': PropertySchema(
      id: 3,
      name: r'buildingNameBeneficiary',
      type: IsarType.string,
    ),
    r'certificatePurpose': PropertySchema(
      id: 4,
      name: r'certificatePurpose',
      type: IsarType.string,
    ),
    r'districtApplicant': PropertySchema(
      id: 5,
      name: r'districtApplicant',
      type: IsarType.string,
    ),
    r'districtBeneficiary': PropertySchema(
      id: 6,
      name: r'districtBeneficiary',
      type: IsarType.string,
    ),
    r'dobApplicant': PropertySchema(
      id: 7,
      name: r'dobApplicant',
      type: IsarType.dateTime,
    ),
    r'dobBeneficiary': PropertySchema(
      id: 8,
      name: r'dobBeneficiary',
      type: IsarType.dateTime,
    ),
    r'emailApplicant': PropertySchema(
      id: 9,
      name: r'emailApplicant',
      type: IsarType.string,
    ),
    r'formType': PropertySchema(
      id: 10,
      name: r'formType',
      type: IsarType.string,
      enumMap: _ApplicationDataformTypeEnumValueMap,
    ),
    r'fullNameApplicant': PropertySchema(
      id: 11,
      name: r'fullNameApplicant',
      type: IsarType.string,
    ),
    r'fullNameBeneficiary': PropertySchema(
      id: 12,
      name: r'fullNameBeneficiary',
      type: IsarType.string,
    ),
    r'gender': PropertySchema(
      id: 13,
      name: r'gender',
      type: IsarType.string,
    ),
    r'houseNoApplicant': PropertySchema(
      id: 14,
      name: r'houseNoApplicant',
      type: IsarType.string,
    ),
    r'houseNoBeneficiary': PropertySchema(
      id: 15,
      name: r'houseNoBeneficiary',
      type: IsarType.string,
    ),
    r'livingYearsBeneficiary': PropertySchema(
      id: 16,
      name: r'livingYearsBeneficiary',
      type: IsarType.string,
    ),
    r'maharashtraResidencePeriod': PropertySchema(
      id: 17,
      name: r'maharashtraResidencePeriod',
      type: IsarType.string,
    ),
    r'pincodeApplicant': PropertySchema(
      id: 18,
      name: r'pincodeApplicant',
      type: IsarType.string,
    ),
    r'pincodeBeneficiary': PropertySchema(
      id: 19,
      name: r'pincodeBeneficiary',
      type: IsarType.string,
    ),
    r'pobApplicant': PropertySchema(
      id: 20,
      name: r'pobApplicant',
      type: IsarType.string,
    ),
    r'pobBeneficiary': PropertySchema(
      id: 21,
      name: r'pobBeneficiary',
      type: IsarType.string,
    ),
    r'referenceNo': PropertySchema(
      id: 22,
      name: r'referenceNo',
      type: IsarType.string,
    ),
    r'relationshipBeneficiary': PropertySchema(
      id: 23,
      name: r'relationshipBeneficiary',
      type: IsarType.string,
    ),
    r'societyComplexApplicant': PropertySchema(
      id: 24,
      name: r'societyComplexApplicant',
      type: IsarType.string,
    ),
    r'societyComplexBeneficiary': PropertySchema(
      id: 25,
      name: r'societyComplexBeneficiary',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 26,
      name: r'status',
      type: IsarType.string,
      enumMap: _ApplicationDatastatusEnumValueMap,
    ),
    r'streetNameApplicant': PropertySchema(
      id: 27,
      name: r'streetNameApplicant',
      type: IsarType.string,
    ),
    r'streetNameBeneficiary': PropertySchema(
      id: 28,
      name: r'streetNameBeneficiary',
      type: IsarType.string,
    ),
    r'submissionDate': PropertySchema(
      id: 29,
      name: r'submissionDate',
      type: IsarType.dateTime,
    ),
    r'talukaApplicant': PropertySchema(
      id: 30,
      name: r'talukaApplicant',
      type: IsarType.string,
    ),
    r'talukaBeneficiary': PropertySchema(
      id: 31,
      name: r'talukaBeneficiary',
      type: IsarType.string,
    ),
    r'yearsAtAddressApplicant': PropertySchema(
      id: 32,
      name: r'yearsAtAddressApplicant',
      type: IsarType.string,
    )
  },
  estimateSize: _applicationDataEstimateSize,
  serialize: _applicationDataSerialize,
  deserialize: _applicationDataDeserialize,
  deserializeProp: _applicationDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _applicationDataGetId,
  getLinks: _applicationDataGetLinks,
  attach: _applicationDataAttach,
  version: '3.1.0+1',
);

int _applicationDataEstimateSize(
  ApplicationData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.aadharNumber.length * 3;
  bytesCount += 3 + object.buildingNameApplicant.length * 3;
  bytesCount += 3 + object.buildingNameBeneficiary.length * 3;
  bytesCount += 3 + object.certificatePurpose.length * 3;
  bytesCount += 3 + object.districtApplicant.length * 3;
  bytesCount += 3 + object.districtBeneficiary.length * 3;
  bytesCount += 3 + object.emailApplicant.length * 3;
  bytesCount += 3 + object.formType.name.length * 3;
  bytesCount += 3 + object.fullNameApplicant.length * 3;
  bytesCount += 3 + object.fullNameBeneficiary.length * 3;
  bytesCount += 3 + object.gender.length * 3;
  bytesCount += 3 + object.houseNoApplicant.length * 3;
  bytesCount += 3 + object.houseNoBeneficiary.length * 3;
  bytesCount += 3 + object.livingYearsBeneficiary.length * 3;
  bytesCount += 3 + object.maharashtraResidencePeriod.length * 3;
  bytesCount += 3 + object.pincodeApplicant.length * 3;
  bytesCount += 3 + object.pincodeBeneficiary.length * 3;
  bytesCount += 3 + object.pobApplicant.length * 3;
  bytesCount += 3 + object.pobBeneficiary.length * 3;
  bytesCount += 3 + object.referenceNo.length * 3;
  bytesCount += 3 + object.relationshipBeneficiary.length * 3;
  bytesCount += 3 + object.societyComplexApplicant.length * 3;
  bytesCount += 3 + object.societyComplexBeneficiary.length * 3;
  bytesCount += 3 + object.status.name.length * 3;
  bytesCount += 3 + object.streetNameApplicant.length * 3;
  bytesCount += 3 + object.streetNameBeneficiary.length * 3;
  bytesCount += 3 + object.talukaApplicant.length * 3;
  bytesCount += 3 + object.talukaBeneficiary.length * 3;
  bytesCount += 3 + object.yearsAtAddressApplicant.length * 3;
  return bytesCount;
}

void _applicationDataSerialize(
  ApplicationData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.aadharNumber);
  writer.writeDateTime(offsets[1], object.applicationDate);
  writer.writeString(offsets[2], object.buildingNameApplicant);
  writer.writeString(offsets[3], object.buildingNameBeneficiary);
  writer.writeString(offsets[4], object.certificatePurpose);
  writer.writeString(offsets[5], object.districtApplicant);
  writer.writeString(offsets[6], object.districtBeneficiary);
  writer.writeDateTime(offsets[7], object.dobApplicant);
  writer.writeDateTime(offsets[8], object.dobBeneficiary);
  writer.writeString(offsets[9], object.emailApplicant);
  writer.writeString(offsets[10], object.formType.name);
  writer.writeString(offsets[11], object.fullNameApplicant);
  writer.writeString(offsets[12], object.fullNameBeneficiary);
  writer.writeString(offsets[13], object.gender);
  writer.writeString(offsets[14], object.houseNoApplicant);
  writer.writeString(offsets[15], object.houseNoBeneficiary);
  writer.writeString(offsets[16], object.livingYearsBeneficiary);
  writer.writeString(offsets[17], object.maharashtraResidencePeriod);
  writer.writeString(offsets[18], object.pincodeApplicant);
  writer.writeString(offsets[19], object.pincodeBeneficiary);
  writer.writeString(offsets[20], object.pobApplicant);
  writer.writeString(offsets[21], object.pobBeneficiary);
  writer.writeString(offsets[22], object.referenceNo);
  writer.writeString(offsets[23], object.relationshipBeneficiary);
  writer.writeString(offsets[24], object.societyComplexApplicant);
  writer.writeString(offsets[25], object.societyComplexBeneficiary);
  writer.writeString(offsets[26], object.status.name);
  writer.writeString(offsets[27], object.streetNameApplicant);
  writer.writeString(offsets[28], object.streetNameBeneficiary);
  writer.writeDateTime(offsets[29], object.submissionDate);
  writer.writeString(offsets[30], object.talukaApplicant);
  writer.writeString(offsets[31], object.talukaBeneficiary);
  writer.writeString(offsets[32], object.yearsAtAddressApplicant);
}

ApplicationData _applicationDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ApplicationData();
  object.aadharNumber = reader.readString(offsets[0]);
  object.applicationDate = reader.readDateTime(offsets[1]);
  object.buildingNameApplicant = reader.readString(offsets[2]);
  object.buildingNameBeneficiary = reader.readString(offsets[3]);
  object.certificatePurpose = reader.readString(offsets[4]);
  object.districtApplicant = reader.readString(offsets[5]);
  object.districtBeneficiary = reader.readString(offsets[6]);
  object.dobApplicant = reader.readDateTime(offsets[7]);
  object.dobBeneficiary = reader.readDateTime(offsets[8]);
  object.emailApplicant = reader.readString(offsets[9]);
  object.formType = _ApplicationDataformTypeValueEnumMap[
          reader.readStringOrNull(offsets[10])] ??
      FormType.form1;
  object.fullNameApplicant = reader.readString(offsets[11]);
  object.fullNameBeneficiary = reader.readString(offsets[12]);
  object.gender = reader.readString(offsets[13]);
  object.houseNoApplicant = reader.readString(offsets[14]);
  object.houseNoBeneficiary = reader.readString(offsets[15]);
  object.id = id;
  object.livingYearsBeneficiary = reader.readString(offsets[16]);
  object.maharashtraResidencePeriod = reader.readString(offsets[17]);
  object.pincodeApplicant = reader.readString(offsets[18]);
  object.pincodeBeneficiary = reader.readString(offsets[19]);
  object.pobApplicant = reader.readString(offsets[20]);
  object.pobBeneficiary = reader.readString(offsets[21]);
  object.referenceNo = reader.readString(offsets[22]);
  object.relationshipBeneficiary = reader.readString(offsets[23]);
  object.societyComplexApplicant = reader.readString(offsets[24]);
  object.societyComplexBeneficiary = reader.readString(offsets[25]);
  object.status = _ApplicationDatastatusValueEnumMap[
          reader.readStringOrNull(offsets[26])] ??
      FormStatus.pending;
  object.streetNameApplicant = reader.readString(offsets[27]);
  object.streetNameBeneficiary = reader.readString(offsets[28]);
  object.submissionDate = reader.readDateTime(offsets[29]);
  object.talukaApplicant = reader.readString(offsets[30]);
  object.talukaBeneficiary = reader.readString(offsets[31]);
  object.yearsAtAddressApplicant = reader.readString(offsets[32]);
  return object;
}

P _applicationDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readDateTime(offset)) as P;
    case 8:
      return (reader.readDateTime(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (_ApplicationDataformTypeValueEnumMap[
              reader.readStringOrNull(offset)] ??
          FormType.form1) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readString(offset)) as P;
    case 19:
      return (reader.readString(offset)) as P;
    case 20:
      return (reader.readString(offset)) as P;
    case 21:
      return (reader.readString(offset)) as P;
    case 22:
      return (reader.readString(offset)) as P;
    case 23:
      return (reader.readString(offset)) as P;
    case 24:
      return (reader.readString(offset)) as P;
    case 25:
      return (reader.readString(offset)) as P;
    case 26:
      return (_ApplicationDatastatusValueEnumMap[
              reader.readStringOrNull(offset)] ??
          FormStatus.pending) as P;
    case 27:
      return (reader.readString(offset)) as P;
    case 28:
      return (reader.readString(offset)) as P;
    case 29:
      return (reader.readDateTime(offset)) as P;
    case 30:
      return (reader.readString(offset)) as P;
    case 31:
      return (reader.readString(offset)) as P;
    case 32:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ApplicationDataformTypeEnumValueMap = {
  r'form1': r'form1',
  r'form2': r'form2',
};
const _ApplicationDataformTypeValueEnumMap = {
  r'form1': FormType.form1,
  r'form2': FormType.form2,
};
const _ApplicationDatastatusEnumValueMap = {
  r'pending': r'pending',
  r'waiting': r'waiting',
  r'done': r'done',
};
const _ApplicationDatastatusValueEnumMap = {
  r'pending': FormStatus.pending,
  r'waiting': FormStatus.waiting,
  r'done': FormStatus.done,
};

Id _applicationDataGetId(ApplicationData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _applicationDataGetLinks(ApplicationData object) {
  return [];
}

void _applicationDataAttach(
    IsarCollection<dynamic> col, Id id, ApplicationData object) {
  object.id = id;
}

extension ApplicationDataQueryWhereSort
    on QueryBuilder<ApplicationData, ApplicationData, QWhere> {
  QueryBuilder<ApplicationData, ApplicationData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ApplicationDataQueryWhere
    on QueryBuilder<ApplicationData, ApplicationData, QWhereClause> {
  QueryBuilder<ApplicationData, ApplicationData, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ApplicationDataQueryFilter
    on QueryBuilder<ApplicationData, ApplicationData, QFilterCondition> {
  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      aadharNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aadharNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      aadharNumberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'aadharNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      aadharNumberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'aadharNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      aadharNumberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'aadharNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      aadharNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'aadharNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      aadharNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'aadharNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      aadharNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'aadharNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      aadharNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'aadharNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      aadharNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aadharNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      aadharNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'aadharNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      applicationDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'applicationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      applicationDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'applicationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      applicationDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'applicationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      applicationDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'applicationDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      buildingNameApplicantEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'buildingNameApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      buildingNameApplicantGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'buildingNameApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      buildingNameApplicantLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'buildingNameApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      buildingNameApplicantBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'buildingNameApplicant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      buildingNameApplicantStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'buildingNameApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      buildingNameApplicantEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'buildingNameApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      buildingNameApplicantContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'buildingNameApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      buildingNameApplicantMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'buildingNameApplicant',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      buildingNameApplicantIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'buildingNameApplicant',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      buildingNameApplicantIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'buildingNameApplicant',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      buildingNameBeneficiaryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'buildingNameBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      buildingNameBeneficiaryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'buildingNameBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      buildingNameBeneficiaryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'buildingNameBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      buildingNameBeneficiaryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'buildingNameBeneficiary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      buildingNameBeneficiaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'buildingNameBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      buildingNameBeneficiaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'buildingNameBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      buildingNameBeneficiaryContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'buildingNameBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      buildingNameBeneficiaryMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'buildingNameBeneficiary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      buildingNameBeneficiaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'buildingNameBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      buildingNameBeneficiaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'buildingNameBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      certificatePurposeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'certificatePurpose',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      certificatePurposeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'certificatePurpose',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      certificatePurposeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'certificatePurpose',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      certificatePurposeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'certificatePurpose',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      certificatePurposeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'certificatePurpose',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      certificatePurposeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'certificatePurpose',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      certificatePurposeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'certificatePurpose',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      certificatePurposeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'certificatePurpose',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      certificatePurposeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'certificatePurpose',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      certificatePurposeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'certificatePurpose',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      districtApplicantEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'districtApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      districtApplicantGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'districtApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      districtApplicantLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'districtApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      districtApplicantBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'districtApplicant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      districtApplicantStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'districtApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      districtApplicantEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'districtApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      districtApplicantContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'districtApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      districtApplicantMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'districtApplicant',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      districtApplicantIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'districtApplicant',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      districtApplicantIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'districtApplicant',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      districtBeneficiaryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'districtBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      districtBeneficiaryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'districtBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      districtBeneficiaryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'districtBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      districtBeneficiaryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'districtBeneficiary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      districtBeneficiaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'districtBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      districtBeneficiaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'districtBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      districtBeneficiaryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'districtBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      districtBeneficiaryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'districtBeneficiary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      districtBeneficiaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'districtBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      districtBeneficiaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'districtBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      dobApplicantEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dobApplicant',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      dobApplicantGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dobApplicant',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      dobApplicantLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dobApplicant',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      dobApplicantBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dobApplicant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      dobBeneficiaryEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dobBeneficiary',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      dobBeneficiaryGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dobBeneficiary',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      dobBeneficiaryLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dobBeneficiary',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      dobBeneficiaryBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dobBeneficiary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      emailApplicantEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'emailApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      emailApplicantGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'emailApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      emailApplicantLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'emailApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      emailApplicantBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'emailApplicant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      emailApplicantStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'emailApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      emailApplicantEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'emailApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      emailApplicantContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'emailApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      emailApplicantMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'emailApplicant',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      emailApplicantIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'emailApplicant',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      emailApplicantIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'emailApplicant',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      formTypeEqualTo(
    FormType value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      formTypeGreaterThan(
    FormType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'formType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      formTypeLessThan(
    FormType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'formType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      formTypeBetween(
    FormType lower,
    FormType upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'formType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      formTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'formType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      formTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'formType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      formTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'formType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      formTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'formType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      formTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formType',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      formTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'formType',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      fullNameApplicantEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullNameApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      fullNameApplicantGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fullNameApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      fullNameApplicantLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fullNameApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      fullNameApplicantBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fullNameApplicant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      fullNameApplicantStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fullNameApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      fullNameApplicantEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fullNameApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      fullNameApplicantContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fullNameApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      fullNameApplicantMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fullNameApplicant',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      fullNameApplicantIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullNameApplicant',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      fullNameApplicantIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fullNameApplicant',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      fullNameBeneficiaryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullNameBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      fullNameBeneficiaryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fullNameBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      fullNameBeneficiaryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fullNameBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      fullNameBeneficiaryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fullNameBeneficiary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      fullNameBeneficiaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fullNameBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      fullNameBeneficiaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fullNameBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      fullNameBeneficiaryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fullNameBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      fullNameBeneficiaryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fullNameBeneficiary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      fullNameBeneficiaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullNameBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      fullNameBeneficiaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fullNameBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      genderEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      genderGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      genderLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      genderBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gender',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      genderStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      genderEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      genderContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      genderMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gender',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      genderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gender',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      genderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gender',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      houseNoApplicantEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'houseNoApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      houseNoApplicantGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'houseNoApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      houseNoApplicantLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'houseNoApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      houseNoApplicantBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'houseNoApplicant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      houseNoApplicantStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'houseNoApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      houseNoApplicantEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'houseNoApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      houseNoApplicantContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'houseNoApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      houseNoApplicantMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'houseNoApplicant',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      houseNoApplicantIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'houseNoApplicant',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      houseNoApplicantIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'houseNoApplicant',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      houseNoBeneficiaryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'houseNoBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      houseNoBeneficiaryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'houseNoBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      houseNoBeneficiaryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'houseNoBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      houseNoBeneficiaryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'houseNoBeneficiary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      houseNoBeneficiaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'houseNoBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      houseNoBeneficiaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'houseNoBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      houseNoBeneficiaryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'houseNoBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      houseNoBeneficiaryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'houseNoBeneficiary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      houseNoBeneficiaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'houseNoBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      houseNoBeneficiaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'houseNoBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      livingYearsBeneficiaryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'livingYearsBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      livingYearsBeneficiaryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'livingYearsBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      livingYearsBeneficiaryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'livingYearsBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      livingYearsBeneficiaryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'livingYearsBeneficiary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      livingYearsBeneficiaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'livingYearsBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      livingYearsBeneficiaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'livingYearsBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      livingYearsBeneficiaryContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'livingYearsBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      livingYearsBeneficiaryMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'livingYearsBeneficiary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      livingYearsBeneficiaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'livingYearsBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      livingYearsBeneficiaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'livingYearsBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      maharashtraResidencePeriodEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maharashtraResidencePeriod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      maharashtraResidencePeriodGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maharashtraResidencePeriod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      maharashtraResidencePeriodLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maharashtraResidencePeriod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      maharashtraResidencePeriodBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maharashtraResidencePeriod',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      maharashtraResidencePeriodStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'maharashtraResidencePeriod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      maharashtraResidencePeriodEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'maharashtraResidencePeriod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      maharashtraResidencePeriodContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'maharashtraResidencePeriod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      maharashtraResidencePeriodMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'maharashtraResidencePeriod',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      maharashtraResidencePeriodIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maharashtraResidencePeriod',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      maharashtraResidencePeriodIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'maharashtraResidencePeriod',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pincodeApplicantEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pincodeApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pincodeApplicantGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pincodeApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pincodeApplicantLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pincodeApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pincodeApplicantBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pincodeApplicant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pincodeApplicantStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pincodeApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pincodeApplicantEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pincodeApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pincodeApplicantContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pincodeApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pincodeApplicantMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pincodeApplicant',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pincodeApplicantIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pincodeApplicant',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pincodeApplicantIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pincodeApplicant',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pincodeBeneficiaryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pincodeBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pincodeBeneficiaryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pincodeBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pincodeBeneficiaryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pincodeBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pincodeBeneficiaryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pincodeBeneficiary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pincodeBeneficiaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pincodeBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pincodeBeneficiaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pincodeBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pincodeBeneficiaryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pincodeBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pincodeBeneficiaryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pincodeBeneficiary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pincodeBeneficiaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pincodeBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pincodeBeneficiaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pincodeBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pobApplicantEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pobApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pobApplicantGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pobApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pobApplicantLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pobApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pobApplicantBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pobApplicant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pobApplicantStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pobApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pobApplicantEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pobApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pobApplicantContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pobApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pobApplicantMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pobApplicant',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pobApplicantIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pobApplicant',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pobApplicantIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pobApplicant',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pobBeneficiaryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pobBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pobBeneficiaryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pobBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pobBeneficiaryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pobBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pobBeneficiaryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pobBeneficiary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pobBeneficiaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pobBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pobBeneficiaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pobBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pobBeneficiaryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pobBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pobBeneficiaryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pobBeneficiary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pobBeneficiaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pobBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      pobBeneficiaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pobBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      referenceNoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'referenceNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      referenceNoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'referenceNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      referenceNoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'referenceNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      referenceNoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'referenceNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      referenceNoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'referenceNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      referenceNoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'referenceNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      referenceNoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'referenceNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      referenceNoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'referenceNo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      referenceNoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'referenceNo',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      referenceNoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'referenceNo',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      relationshipBeneficiaryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'relationshipBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      relationshipBeneficiaryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'relationshipBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      relationshipBeneficiaryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'relationshipBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      relationshipBeneficiaryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'relationshipBeneficiary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      relationshipBeneficiaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'relationshipBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      relationshipBeneficiaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'relationshipBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      relationshipBeneficiaryContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'relationshipBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      relationshipBeneficiaryMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'relationshipBeneficiary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      relationshipBeneficiaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'relationshipBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      relationshipBeneficiaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'relationshipBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      societyComplexApplicantEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'societyComplexApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      societyComplexApplicantGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'societyComplexApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      societyComplexApplicantLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'societyComplexApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      societyComplexApplicantBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'societyComplexApplicant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      societyComplexApplicantStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'societyComplexApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      societyComplexApplicantEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'societyComplexApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      societyComplexApplicantContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'societyComplexApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      societyComplexApplicantMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'societyComplexApplicant',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      societyComplexApplicantIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'societyComplexApplicant',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      societyComplexApplicantIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'societyComplexApplicant',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      societyComplexBeneficiaryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'societyComplexBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      societyComplexBeneficiaryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'societyComplexBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      societyComplexBeneficiaryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'societyComplexBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      societyComplexBeneficiaryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'societyComplexBeneficiary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      societyComplexBeneficiaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'societyComplexBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      societyComplexBeneficiaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'societyComplexBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      societyComplexBeneficiaryContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'societyComplexBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      societyComplexBeneficiaryMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'societyComplexBeneficiary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      societyComplexBeneficiaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'societyComplexBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      societyComplexBeneficiaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'societyComplexBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      statusEqualTo(
    FormStatus value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      statusGreaterThan(
    FormStatus value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      statusLessThan(
    FormStatus value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      statusBetween(
    FormStatus lower,
    FormStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      statusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      streetNameApplicantEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streetNameApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      streetNameApplicantGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'streetNameApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      streetNameApplicantLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'streetNameApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      streetNameApplicantBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'streetNameApplicant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      streetNameApplicantStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'streetNameApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      streetNameApplicantEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'streetNameApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      streetNameApplicantContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'streetNameApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      streetNameApplicantMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'streetNameApplicant',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      streetNameApplicantIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streetNameApplicant',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      streetNameApplicantIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'streetNameApplicant',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      streetNameBeneficiaryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streetNameBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      streetNameBeneficiaryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'streetNameBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      streetNameBeneficiaryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'streetNameBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      streetNameBeneficiaryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'streetNameBeneficiary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      streetNameBeneficiaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'streetNameBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      streetNameBeneficiaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'streetNameBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      streetNameBeneficiaryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'streetNameBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      streetNameBeneficiaryMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'streetNameBeneficiary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      streetNameBeneficiaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streetNameBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      streetNameBeneficiaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'streetNameBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      submissionDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'submissionDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      submissionDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'submissionDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      submissionDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'submissionDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      submissionDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'submissionDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      talukaApplicantEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'talukaApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      talukaApplicantGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'talukaApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      talukaApplicantLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'talukaApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      talukaApplicantBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'talukaApplicant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      talukaApplicantStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'talukaApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      talukaApplicantEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'talukaApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      talukaApplicantContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'talukaApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      talukaApplicantMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'talukaApplicant',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      talukaApplicantIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'talukaApplicant',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      talukaApplicantIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'talukaApplicant',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      talukaBeneficiaryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'talukaBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      talukaBeneficiaryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'talukaBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      talukaBeneficiaryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'talukaBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      talukaBeneficiaryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'talukaBeneficiary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      talukaBeneficiaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'talukaBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      talukaBeneficiaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'talukaBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      talukaBeneficiaryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'talukaBeneficiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      talukaBeneficiaryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'talukaBeneficiary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      talukaBeneficiaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'talukaBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      talukaBeneficiaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'talukaBeneficiary',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      yearsAtAddressApplicantEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'yearsAtAddressApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      yearsAtAddressApplicantGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'yearsAtAddressApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      yearsAtAddressApplicantLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'yearsAtAddressApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      yearsAtAddressApplicantBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'yearsAtAddressApplicant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      yearsAtAddressApplicantStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'yearsAtAddressApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      yearsAtAddressApplicantEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'yearsAtAddressApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      yearsAtAddressApplicantContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'yearsAtAddressApplicant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      yearsAtAddressApplicantMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'yearsAtAddressApplicant',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      yearsAtAddressApplicantIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'yearsAtAddressApplicant',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterFilterCondition>
      yearsAtAddressApplicantIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'yearsAtAddressApplicant',
        value: '',
      ));
    });
  }
}

extension ApplicationDataQueryObject
    on QueryBuilder<ApplicationData, ApplicationData, QFilterCondition> {}

extension ApplicationDataQueryLinks
    on QueryBuilder<ApplicationData, ApplicationData, QFilterCondition> {}

extension ApplicationDataQuerySortBy
    on QueryBuilder<ApplicationData, ApplicationData, QSortBy> {
  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByAadharNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aadharNumber', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByAadharNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aadharNumber', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByApplicationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'applicationDate', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByApplicationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'applicationDate', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByBuildingNameApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'buildingNameApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByBuildingNameApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'buildingNameApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByBuildingNameBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'buildingNameBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByBuildingNameBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'buildingNameBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByCertificatePurpose() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificatePurpose', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByCertificatePurposeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificatePurpose', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByDistrictApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'districtApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByDistrictApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'districtApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByDistrictBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'districtBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByDistrictBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'districtBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByDobApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dobApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByDobApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dobApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByDobBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dobBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByDobBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dobBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByEmailApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emailApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByEmailApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emailApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByFormType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formType', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByFormTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formType', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByFullNameApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullNameApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByFullNameApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullNameApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByFullNameBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullNameBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByFullNameBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullNameBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy> sortByGender() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByGenderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByHouseNoApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'houseNoApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByHouseNoApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'houseNoApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByHouseNoBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'houseNoBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByHouseNoBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'houseNoBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByLivingYearsBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'livingYearsBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByLivingYearsBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'livingYearsBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByMaharashtraResidencePeriod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maharashtraResidencePeriod', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByMaharashtraResidencePeriodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maharashtraResidencePeriod', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByPincodeApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pincodeApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByPincodeApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pincodeApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByPincodeBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pincodeBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByPincodeBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pincodeBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByPobApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pobApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByPobApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pobApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByPobBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pobBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByPobBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pobBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByReferenceNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'referenceNo', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByReferenceNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'referenceNo', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByRelationshipBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relationshipBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByRelationshipBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relationshipBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortBySocietyComplexApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'societyComplexApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortBySocietyComplexApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'societyComplexApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortBySocietyComplexBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'societyComplexBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortBySocietyComplexBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'societyComplexBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByStreetNameApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streetNameApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByStreetNameApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streetNameApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByStreetNameBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streetNameBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByStreetNameBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streetNameBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortBySubmissionDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submissionDate', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortBySubmissionDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submissionDate', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByTalukaApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'talukaApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByTalukaApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'talukaApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByTalukaBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'talukaBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByTalukaBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'talukaBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByYearsAtAddressApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yearsAtAddressApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      sortByYearsAtAddressApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yearsAtAddressApplicant', Sort.desc);
    });
  }
}

extension ApplicationDataQuerySortThenBy
    on QueryBuilder<ApplicationData, ApplicationData, QSortThenBy> {
  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByAadharNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aadharNumber', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByAadharNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aadharNumber', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByApplicationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'applicationDate', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByApplicationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'applicationDate', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByBuildingNameApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'buildingNameApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByBuildingNameApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'buildingNameApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByBuildingNameBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'buildingNameBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByBuildingNameBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'buildingNameBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByCertificatePurpose() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificatePurpose', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByCertificatePurposeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificatePurpose', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByDistrictApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'districtApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByDistrictApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'districtApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByDistrictBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'districtBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByDistrictBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'districtBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByDobApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dobApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByDobApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dobApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByDobBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dobBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByDobBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dobBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByEmailApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emailApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByEmailApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emailApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByFormType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formType', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByFormTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formType', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByFullNameApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullNameApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByFullNameApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullNameApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByFullNameBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullNameBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByFullNameBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullNameBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy> thenByGender() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByGenderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByHouseNoApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'houseNoApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByHouseNoApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'houseNoApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByHouseNoBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'houseNoBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByHouseNoBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'houseNoBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByLivingYearsBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'livingYearsBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByLivingYearsBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'livingYearsBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByMaharashtraResidencePeriod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maharashtraResidencePeriod', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByMaharashtraResidencePeriodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maharashtraResidencePeriod', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByPincodeApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pincodeApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByPincodeApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pincodeApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByPincodeBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pincodeBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByPincodeBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pincodeBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByPobApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pobApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByPobApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pobApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByPobBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pobBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByPobBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pobBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByReferenceNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'referenceNo', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByReferenceNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'referenceNo', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByRelationshipBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relationshipBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByRelationshipBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relationshipBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenBySocietyComplexApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'societyComplexApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenBySocietyComplexApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'societyComplexApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenBySocietyComplexBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'societyComplexBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenBySocietyComplexBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'societyComplexBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByStreetNameApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streetNameApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByStreetNameApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streetNameApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByStreetNameBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streetNameBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByStreetNameBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streetNameBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenBySubmissionDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submissionDate', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenBySubmissionDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submissionDate', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByTalukaApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'talukaApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByTalukaApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'talukaApplicant', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByTalukaBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'talukaBeneficiary', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByTalukaBeneficiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'talukaBeneficiary', Sort.desc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByYearsAtAddressApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yearsAtAddressApplicant', Sort.asc);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QAfterSortBy>
      thenByYearsAtAddressApplicantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yearsAtAddressApplicant', Sort.desc);
    });
  }
}

extension ApplicationDataQueryWhereDistinct
    on QueryBuilder<ApplicationData, ApplicationData, QDistinct> {
  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByAadharNumber({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'aadharNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByApplicationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'applicationDate');
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByBuildingNameApplicant({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'buildingNameApplicant',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByBuildingNameBeneficiary({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'buildingNameBeneficiary',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByCertificatePurpose({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'certificatePurpose',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByDistrictApplicant({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'districtApplicant',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByDistrictBeneficiary({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'districtBeneficiary',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByDobApplicant() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dobApplicant');
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByDobBeneficiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dobBeneficiary');
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByEmailApplicant({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'emailApplicant',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct> distinctByFormType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'formType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByFullNameApplicant({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fullNameApplicant',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByFullNameBeneficiary({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fullNameBeneficiary',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct> distinctByGender(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gender', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByHouseNoApplicant({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'houseNoApplicant',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByHouseNoBeneficiary({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'houseNoBeneficiary',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByLivingYearsBeneficiary({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'livingYearsBeneficiary',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByMaharashtraResidencePeriod({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maharashtraResidencePeriod',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByPincodeApplicant({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pincodeApplicant',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByPincodeBeneficiary({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pincodeBeneficiary',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByPobApplicant({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pobApplicant', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByPobBeneficiary({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pobBeneficiary',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByReferenceNo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'referenceNo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByRelationshipBeneficiary({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'relationshipBeneficiary',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctBySocietyComplexApplicant({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'societyComplexApplicant',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctBySocietyComplexBeneficiary({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'societyComplexBeneficiary',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByStreetNameApplicant({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'streetNameApplicant',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByStreetNameBeneficiary({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'streetNameBeneficiary',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctBySubmissionDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'submissionDate');
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByTalukaApplicant({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'talukaApplicant',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByTalukaBeneficiary({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'talukaBeneficiary',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationData, ApplicationData, QDistinct>
      distinctByYearsAtAddressApplicant({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'yearsAtAddressApplicant',
          caseSensitive: caseSensitive);
    });
  }
}

extension ApplicationDataQueryProperty
    on QueryBuilder<ApplicationData, ApplicationData, QQueryProperty> {
  QueryBuilder<ApplicationData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      aadharNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'aadharNumber');
    });
  }

  QueryBuilder<ApplicationData, DateTime, QQueryOperations>
      applicationDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'applicationDate');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      buildingNameApplicantProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'buildingNameApplicant');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      buildingNameBeneficiaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'buildingNameBeneficiary');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      certificatePurposeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'certificatePurpose');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      districtApplicantProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'districtApplicant');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      districtBeneficiaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'districtBeneficiary');
    });
  }

  QueryBuilder<ApplicationData, DateTime, QQueryOperations>
      dobApplicantProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dobApplicant');
    });
  }

  QueryBuilder<ApplicationData, DateTime, QQueryOperations>
      dobBeneficiaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dobBeneficiary');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      emailApplicantProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'emailApplicant');
    });
  }

  QueryBuilder<ApplicationData, FormType, QQueryOperations> formTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'formType');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      fullNameApplicantProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fullNameApplicant');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      fullNameBeneficiaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fullNameBeneficiary');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations> genderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gender');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      houseNoApplicantProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'houseNoApplicant');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      houseNoBeneficiaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'houseNoBeneficiary');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      livingYearsBeneficiaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'livingYearsBeneficiary');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      maharashtraResidencePeriodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maharashtraResidencePeriod');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      pincodeApplicantProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pincodeApplicant');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      pincodeBeneficiaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pincodeBeneficiary');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      pobApplicantProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pobApplicant');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      pobBeneficiaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pobBeneficiary');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      referenceNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'referenceNo');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      relationshipBeneficiaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'relationshipBeneficiary');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      societyComplexApplicantProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'societyComplexApplicant');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      societyComplexBeneficiaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'societyComplexBeneficiary');
    });
  }

  QueryBuilder<ApplicationData, FormStatus, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      streetNameApplicantProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'streetNameApplicant');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      streetNameBeneficiaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'streetNameBeneficiary');
    });
  }

  QueryBuilder<ApplicationData, DateTime, QQueryOperations>
      submissionDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'submissionDate');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      talukaApplicantProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'talukaApplicant');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      talukaBeneficiaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'talukaBeneficiary');
    });
  }

  QueryBuilder<ApplicationData, String, QQueryOperations>
      yearsAtAddressApplicantProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'yearsAtAddressApplicant');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetForm2DataCollection on Isar {
  IsarCollection<Form2Data> get form2Datas => this.collection();
}

const Form2DataSchema = CollectionSchema(
  name: r'Form2Data',
  id: -6958442808046056842,
  properties: {
    r'address': PropertySchema(
      id: 0,
      name: r'address',
      type: IsarType.string,
    ),
    r'adharNo': PropertySchema(
      id: 1,
      name: r'adharNo',
      type: IsarType.string,
    ),
    r'formType': PropertySchema(
      id: 2,
      name: r'formType',
      type: IsarType.string,
      enumMap: _Form2DataformTypeEnumValueMap,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'phone': PropertySchema(
      id: 4,
      name: r'phone',
      type: IsarType.string,
    ),
    r'registerId': PropertySchema(
      id: 5,
      name: r'registerId',
      type: IsarType.string,
    ),
    r'schoolName': PropertySchema(
      id: 6,
      name: r'schoolName',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 7,
      name: r'status',
      type: IsarType.string,
      enumMap: _Form2DatastatusEnumValueMap,
    ),
    r'submissionDate': PropertySchema(
      id: 8,
      name: r'submissionDate',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _form2DataEstimateSize,
  serialize: _form2DataSerialize,
  deserialize: _form2DataDeserialize,
  deserializeProp: _form2DataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _form2DataGetId,
  getLinks: _form2DataGetLinks,
  attach: _form2DataAttach,
  version: '3.1.0+1',
);

int _form2DataEstimateSize(
  Form2Data object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.address.length * 3;
  bytesCount += 3 + object.adharNo.length * 3;
  bytesCount += 3 + object.formType.name.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.phone.length * 3;
  bytesCount += 3 + object.registerId.length * 3;
  bytesCount += 3 + object.schoolName.length * 3;
  bytesCount += 3 + object.status.name.length * 3;
  return bytesCount;
}

void _form2DataSerialize(
  Form2Data object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.address);
  writer.writeString(offsets[1], object.adharNo);
  writer.writeString(offsets[2], object.formType.name);
  writer.writeString(offsets[3], object.name);
  writer.writeString(offsets[4], object.phone);
  writer.writeString(offsets[5], object.registerId);
  writer.writeString(offsets[6], object.schoolName);
  writer.writeString(offsets[7], object.status.name);
  writer.writeDateTime(offsets[8], object.submissionDate);
}

Form2Data _form2DataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Form2Data();
  object.address = reader.readString(offsets[0]);
  object.adharNo = reader.readString(offsets[1]);
  object.formType =
      _Form2DataformTypeValueEnumMap[reader.readStringOrNull(offsets[2])] ??
          FormType.form1;
  object.id = id;
  object.name = reader.readString(offsets[3]);
  object.phone = reader.readString(offsets[4]);
  object.registerId = reader.readString(offsets[5]);
  object.schoolName = reader.readString(offsets[6]);
  object.status =
      _Form2DatastatusValueEnumMap[reader.readStringOrNull(offsets[7])] ??
          FormStatus.pending;
  object.submissionDate = reader.readDateTime(offsets[8]);
  return object;
}

P _form2DataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (_Form2DataformTypeValueEnumMap[reader.readStringOrNull(offset)] ??
          FormType.form1) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (_Form2DatastatusValueEnumMap[reader.readStringOrNull(offset)] ??
          FormStatus.pending) as P;
    case 8:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _Form2DataformTypeEnumValueMap = {
  r'form1': r'form1',
  r'form2': r'form2',
};
const _Form2DataformTypeValueEnumMap = {
  r'form1': FormType.form1,
  r'form2': FormType.form2,
};
const _Form2DatastatusEnumValueMap = {
  r'pending': r'pending',
  r'waiting': r'waiting',
  r'done': r'done',
};
const _Form2DatastatusValueEnumMap = {
  r'pending': FormStatus.pending,
  r'waiting': FormStatus.waiting,
  r'done': FormStatus.done,
};

Id _form2DataGetId(Form2Data object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _form2DataGetLinks(Form2Data object) {
  return [];
}

void _form2DataAttach(IsarCollection<dynamic> col, Id id, Form2Data object) {
  object.id = id;
}

extension Form2DataQueryWhereSort
    on QueryBuilder<Form2Data, Form2Data, QWhere> {
  QueryBuilder<Form2Data, Form2Data, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension Form2DataQueryWhere
    on QueryBuilder<Form2Data, Form2Data, QWhereClause> {
  QueryBuilder<Form2Data, Form2Data, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension Form2DataQueryFilter
    on QueryBuilder<Form2Data, Form2Data, QFilterCondition> {
  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> addressEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> addressGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> addressLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> addressBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'address',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> addressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> addressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> addressContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> addressMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'address',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> addressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition>
      addressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> adharNoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adharNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> adharNoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'adharNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> adharNoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'adharNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> adharNoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'adharNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> adharNoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'adharNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> adharNoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'adharNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> adharNoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'adharNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> adharNoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'adharNo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> adharNoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adharNo',
        value: '',
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition>
      adharNoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'adharNo',
        value: '',
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> formTypeEqualTo(
    FormType value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> formTypeGreaterThan(
    FormType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'formType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> formTypeLessThan(
    FormType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'formType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> formTypeBetween(
    FormType lower,
    FormType upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'formType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> formTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'formType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> formTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'formType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> formTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'formType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> formTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'formType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> formTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formType',
        value: '',
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition>
      formTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'formType',
        value: '',
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> phoneEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> phoneGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> phoneLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> phoneBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> phoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> phoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> phoneContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> phoneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> phoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> phoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> registerIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition>
      registerIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'registerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> registerIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'registerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> registerIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'registerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition>
      registerIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'registerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> registerIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'registerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> registerIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'registerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> registerIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'registerId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition>
      registerIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registerId',
        value: '',
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition>
      registerIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'registerId',
        value: '',
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> schoolNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'schoolName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition>
      schoolNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'schoolName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> schoolNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'schoolName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> schoolNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'schoolName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition>
      schoolNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'schoolName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> schoolNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'schoolName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> schoolNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'schoolName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> schoolNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'schoolName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition>
      schoolNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'schoolName',
        value: '',
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition>
      schoolNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'schoolName',
        value: '',
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> statusEqualTo(
    FormStatus value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> statusGreaterThan(
    FormStatus value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> statusLessThan(
    FormStatus value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> statusBetween(
    FormStatus lower,
    FormStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> statusContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> statusMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition>
      submissionDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'submissionDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition>
      submissionDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'submissionDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition>
      submissionDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'submissionDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterFilterCondition>
      submissionDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'submissionDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension Form2DataQueryObject
    on QueryBuilder<Form2Data, Form2Data, QFilterCondition> {}

extension Form2DataQueryLinks
    on QueryBuilder<Form2Data, Form2Data, QFilterCondition> {}

extension Form2DataQuerySortBy on QueryBuilder<Form2Data, Form2Data, QSortBy> {
  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> sortByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> sortByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> sortByAdharNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adharNo', Sort.asc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> sortByAdharNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adharNo', Sort.desc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> sortByFormType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formType', Sort.asc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> sortByFormTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formType', Sort.desc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> sortByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> sortByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> sortByRegisterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registerId', Sort.asc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> sortByRegisterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registerId', Sort.desc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> sortBySchoolName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schoolName', Sort.asc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> sortBySchoolNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schoolName', Sort.desc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> sortBySubmissionDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submissionDate', Sort.asc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> sortBySubmissionDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submissionDate', Sort.desc);
    });
  }
}

extension Form2DataQuerySortThenBy
    on QueryBuilder<Form2Data, Form2Data, QSortThenBy> {
  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> thenByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> thenByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> thenByAdharNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adharNo', Sort.asc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> thenByAdharNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adharNo', Sort.desc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> thenByFormType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formType', Sort.asc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> thenByFormTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formType', Sort.desc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> thenByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> thenByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> thenByRegisterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registerId', Sort.asc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> thenByRegisterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registerId', Sort.desc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> thenBySchoolName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schoolName', Sort.asc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> thenBySchoolNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schoolName', Sort.desc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> thenBySubmissionDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submissionDate', Sort.asc);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QAfterSortBy> thenBySubmissionDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submissionDate', Sort.desc);
    });
  }
}

extension Form2DataQueryWhereDistinct
    on QueryBuilder<Form2Data, Form2Data, QDistinct> {
  QueryBuilder<Form2Data, Form2Data, QDistinct> distinctByAddress(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'address', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QDistinct> distinctByAdharNo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'adharNo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QDistinct> distinctByFormType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'formType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QDistinct> distinctByPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QDistinct> distinctByRegisterId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registerId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QDistinct> distinctBySchoolName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'schoolName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Form2Data, Form2Data, QDistinct> distinctBySubmissionDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'submissionDate');
    });
  }
}

extension Form2DataQueryProperty
    on QueryBuilder<Form2Data, Form2Data, QQueryProperty> {
  QueryBuilder<Form2Data, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Form2Data, String, QQueryOperations> addressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'address');
    });
  }

  QueryBuilder<Form2Data, String, QQueryOperations> adharNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'adharNo');
    });
  }

  QueryBuilder<Form2Data, FormType, QQueryOperations> formTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'formType');
    });
  }

  QueryBuilder<Form2Data, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Form2Data, String, QQueryOperations> phoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phone');
    });
  }

  QueryBuilder<Form2Data, String, QQueryOperations> registerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registerId');
    });
  }

  QueryBuilder<Form2Data, String, QQueryOperations> schoolNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'schoolName');
    });
  }

  QueryBuilder<Form2Data, FormStatus, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<Form2Data, DateTime, QQueryOperations> submissionDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'submissionDate');
    });
  }
}
