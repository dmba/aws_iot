part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ThingGroupProperties.html
class ThingGroupProperties {
  const ThingGroupProperties({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ThingGroupProperties.fromJson(Map<String, dynamic> json) {
    return _$ThingGroupPropertiesFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ThingGroupPropertiesToJson(this);
  }
}
