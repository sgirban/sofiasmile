import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sofiasmile/core/errors/failures.dart';

@immutable
class Cnp {
  factory Cnp.parse(String raw) {
    final v = raw.replaceAll(RegExp(r'\s+'), '');
    if (!RegExp(r'^\d{13}$').hasMatch(v)) {
      throw const ValidationFailure('CNP must be 13 digits long');
    }
    if (!_isValidChecksum(v)) {
      throw const ValidationFailure('CNP has an invalid checksum');
    }
    return Cnp._(v);
  }
  const Cnp._(this.value);

  // Actual cnp
  final String value;

  static bool _isValidChecksum(String cnp) {
    const weights = [2, 7, 9, 1, 4, 6, 3, 5, 8, 2, 7, 9];
    final sum = Iterable<int>.generate(
      12,
    ).map((i) => int.parse(cnp[i]) * weights[i]).reduce((a, b) => a + b);
    final control = sum % 11;
    final check = control == 10 ? 1 : control;
    return cnp[12] == check.toString();
  }

  @override
  String toString() {
    return value;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other is Cnp && other.value == value);
  }

  @override
  int get hashCode => value.hashCode;
}
