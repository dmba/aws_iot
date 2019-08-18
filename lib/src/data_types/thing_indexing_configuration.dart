part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ThingIndexingConfiguration.html
class ThingIndexingConfiguration {
  const ThingIndexingConfiguration({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ThingIndexingConfiguration.fromJson(Map<String, dynamic> json) {
    return _$ThingIndexingConfigurationFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ThingIndexingConfigurationToJson(this);
  }
}
