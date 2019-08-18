part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_AuditCheckConfiguration.html
class AuditCheckConfiguration {
  const AuditCheckConfiguration({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory AuditCheckConfiguration.fromJson(Map<String, dynamic> json) {
    return _$AuditCheckConfigurationFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AuditCheckConfigurationToJson(this);
  }
}
