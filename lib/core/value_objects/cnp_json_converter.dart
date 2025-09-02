import 'package:json_annotation/json_annotation.dart';
import 'package:sofiasmile/core/value_objects/cnp.dart';

class CnpJsonConverter implements JsonConverter<Cnp, String> {
  const CnpJsonConverter();

  @override
  Cnp fromJson(String json) {
    return Cnp.parse(json);
  }

  @override
  String toJson(Cnp object) {
    return object.value;
  }
}
