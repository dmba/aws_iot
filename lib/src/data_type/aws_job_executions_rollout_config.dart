part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_AwsJobExecutionsRolloutConfig.html
class AwsJobExecutionsRolloutConfig {
  const AwsJobExecutionsRolloutConfig({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory AwsJobExecutionsRolloutConfig.fromJson(Map<String, dynamic> json) {
    return _$AwsJobExecutionsRolloutConfigFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AwsJobExecutionsRolloutConfigToJson(this);
  }
}
