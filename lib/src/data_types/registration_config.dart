part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_RegistrationConfig.html
class RegistrationConfig {
  const RegistrationConfig({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory RegistrationConfig.fromJson(Map<String, dynamic> json) {
    return _$RegistrationConfigFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RegistrationConfigToJson(this);
  }
}
