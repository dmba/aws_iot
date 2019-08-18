part of 'package:aws_iot/src/data_types/data_types.dart';

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
