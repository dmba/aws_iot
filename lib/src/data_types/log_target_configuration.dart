part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_LogTargetConfiguration.html
class LogTargetConfiguration {
  const LogTargetConfiguration({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory LogTargetConfiguration.fromJson(Map<String, dynamic> json) {
    return _$LogTargetConfigurationFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LogTargetConfigurationToJson(this);
  }
}
