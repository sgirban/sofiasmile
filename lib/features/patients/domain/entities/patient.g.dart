// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Patient _$PatientFromJson(Map<String, dynamic> json) => _Patient(
  id: json['id'] as String,
  givenName: json['givenName'] as String,
  familyName: json['familyName'] as String,
  cnp: const CnpJsonConverter().fromJson(json['cnp'] as String),
  dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
  gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']) ?? Gender.male,
  phone: json['phone'] as String?,
  email: json['email'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$PatientToJson(_Patient instance) => <String, dynamic>{
  'id': instance.id,
  'givenName': instance.givenName,
  'familyName': instance.familyName,
  'cnp': const CnpJsonConverter().toJson(instance.cnp),
  'dob': instance.dob?.toIso8601String(),
  'gender': _$GenderEnumMap[instance.gender]!,
  'phone': instance.phone,
  'email': instance.email,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};

const _$GenderEnumMap = {Gender.male: 'male', Gender.female: 'female'};
