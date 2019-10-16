part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_TimeoutConfig.html
class TimeoutConfig {
  const TimeoutConfig({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory TimeoutConfig.fromJson(Map<String, dynamic> json) {
    return _$TimeoutConfigFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TimeoutConfigToJson(this);
  }
}
