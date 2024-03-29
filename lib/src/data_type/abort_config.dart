part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_AbortConfig.html
class AbortConfig {
  const AbortConfig({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory AbortConfig.fromJson(Map<String, dynamic> json) {
    return _$AbortConfigFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AbortConfigToJson(this);
  }
}
