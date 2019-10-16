part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ThingGroupIndexingConfiguration.html
class ThingGroupIndexingConfiguration {
  const ThingGroupIndexingConfiguration({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ThingGroupIndexingConfiguration.fromJson(Map<String, dynamic> json) {
    return _$ThingGroupIndexingConfigurationFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ThingGroupIndexingConfigurationToJson(this);
  }
}
