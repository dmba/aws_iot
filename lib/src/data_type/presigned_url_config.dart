part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_PresignedUrlConfig.html
class PresignedUrlConfig {
  const PresignedUrlConfig({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory PresignedUrlConfig.fromJson(Map<String, dynamic> json) {
    return _$PresignedUrlConfigFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PresignedUrlConfigToJson(this);
  }
}
