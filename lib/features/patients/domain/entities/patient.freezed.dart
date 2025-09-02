// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Patient {

 String get id; String get givenName; String get familyName;@CnpJsonConverter() Cnp get cnp; DateTime? get dob; Gender get gender; String? get phone; String? get email; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of Patient
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientCopyWith<Patient> get copyWith => _$PatientCopyWithImpl<Patient>(this as Patient, _$identity);

  /// Serializes this Patient to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Patient&&(identical(other.id, id) || other.id == id)&&(identical(other.givenName, givenName) || other.givenName == givenName)&&(identical(other.familyName, familyName) || other.familyName == familyName)&&(identical(other.cnp, cnp) || other.cnp == cnp)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,givenName,familyName,cnp,dob,gender,phone,email,createdAt,updatedAt);

@override
String toString() {
  return 'Patient(id: $id, givenName: $givenName, familyName: $familyName, cnp: $cnp, dob: $dob, gender: $gender, phone: $phone, email: $email, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PatientCopyWith<$Res>  {
  factory $PatientCopyWith(Patient value, $Res Function(Patient) _then) = _$PatientCopyWithImpl;
@useResult
$Res call({
 String id, String givenName, String familyName,@CnpJsonConverter() Cnp cnp, DateTime? dob, Gender gender, String? phone, String? email, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$PatientCopyWithImpl<$Res>
    implements $PatientCopyWith<$Res> {
  _$PatientCopyWithImpl(this._self, this._then);

  final Patient _self;
  final $Res Function(Patient) _then;

/// Create a copy of Patient
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? givenName = null,Object? familyName = null,Object? cnp = null,Object? dob = freezed,Object? gender = null,Object? phone = freezed,Object? email = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,givenName: null == givenName ? _self.givenName : givenName // ignore: cast_nullable_to_non_nullable
as String,familyName: null == familyName ? _self.familyName : familyName // ignore: cast_nullable_to_non_nullable
as String,cnp: null == cnp ? _self.cnp : cnp // ignore: cast_nullable_to_non_nullable
as Cnp,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Patient].
extension PatientPatterns on Patient {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Patient value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Patient() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Patient value)  $default,){
final _that = this;
switch (_that) {
case _Patient():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Patient value)?  $default,){
final _that = this;
switch (_that) {
case _Patient() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String givenName,  String familyName, @CnpJsonConverter()  Cnp cnp,  DateTime? dob,  Gender gender,  String? phone,  String? email,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Patient() when $default != null:
return $default(_that.id,_that.givenName,_that.familyName,_that.cnp,_that.dob,_that.gender,_that.phone,_that.email,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String givenName,  String familyName, @CnpJsonConverter()  Cnp cnp,  DateTime? dob,  Gender gender,  String? phone,  String? email,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Patient():
return $default(_that.id,_that.givenName,_that.familyName,_that.cnp,_that.dob,_that.gender,_that.phone,_that.email,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String givenName,  String familyName, @CnpJsonConverter()  Cnp cnp,  DateTime? dob,  Gender gender,  String? phone,  String? email,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Patient() when $default != null:
return $default(_that.id,_that.givenName,_that.familyName,_that.cnp,_that.dob,_that.gender,_that.phone,_that.email,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Patient extends Patient {
  const _Patient({required this.id, required this.givenName, required this.familyName, @CnpJsonConverter() required this.cnp, this.dob, this.gender = Gender.male, this.phone, this.email, this.createdAt, this.updatedAt}): super._();
  factory _Patient.fromJson(Map<String, dynamic> json) => _$PatientFromJson(json);

@override final  String id;
@override final  String givenName;
@override final  String familyName;
@override@CnpJsonConverter() final  Cnp cnp;
@override final  DateTime? dob;
@override@JsonKey() final  Gender gender;
@override final  String? phone;
@override final  String? email;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of Patient
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientCopyWith<_Patient> get copyWith => __$PatientCopyWithImpl<_Patient>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatientToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Patient&&(identical(other.id, id) || other.id == id)&&(identical(other.givenName, givenName) || other.givenName == givenName)&&(identical(other.familyName, familyName) || other.familyName == familyName)&&(identical(other.cnp, cnp) || other.cnp == cnp)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,givenName,familyName,cnp,dob,gender,phone,email,createdAt,updatedAt);

@override
String toString() {
  return 'Patient(id: $id, givenName: $givenName, familyName: $familyName, cnp: $cnp, dob: $dob, gender: $gender, phone: $phone, email: $email, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PatientCopyWith<$Res> implements $PatientCopyWith<$Res> {
  factory _$PatientCopyWith(_Patient value, $Res Function(_Patient) _then) = __$PatientCopyWithImpl;
@override @useResult
$Res call({
 String id, String givenName, String familyName,@CnpJsonConverter() Cnp cnp, DateTime? dob, Gender gender, String? phone, String? email, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$PatientCopyWithImpl<$Res>
    implements _$PatientCopyWith<$Res> {
  __$PatientCopyWithImpl(this._self, this._then);

  final _Patient _self;
  final $Res Function(_Patient) _then;

/// Create a copy of Patient
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? givenName = null,Object? familyName = null,Object? cnp = null,Object? dob = freezed,Object? gender = null,Object? phone = freezed,Object? email = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Patient(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,givenName: null == givenName ? _self.givenName : givenName // ignore: cast_nullable_to_non_nullable
as String,familyName: null == familyName ? _self.familyName : familyName // ignore: cast_nullable_to_non_nullable
as String,cnp: null == cnp ? _self.cnp : cnp // ignore: cast_nullable_to_non_nullable
as Cnp,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
