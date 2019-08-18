part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ThingTypeProperties.html
class ThingTypeProperties {
  const ThingTypeProperties({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ThingTypeProperties.fromJson(Map<String, dynamic> json) {
    return _$ThingTypePropertiesFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ThingTypePropertiesToJson(this);
  }
}
