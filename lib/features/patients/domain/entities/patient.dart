import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sofiasmile/core/value_objects/cnp.dart';
import 'package:sofiasmile/core/value_objects/cnp_json_converter.dart';
import 'package:sofiasmile/features/patients/domain/value_objects/gender.dart';

part 'patient.freezed.dart';
part 'patient.g.dart';

@freezed
abstract class Patient with _$Patient {
  const Patient._();
  const factory Patient({
    required String id,
    required String givenName,
    required String familyName,
    @CnpJsonConverter() required Cnp cnp,
    DateTime? dob,
    @Default(Gender.male) Gender gender,
    String? phone,
    String? email,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Patient;

  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
  String get fullName => '$givenName $familyName';
}
