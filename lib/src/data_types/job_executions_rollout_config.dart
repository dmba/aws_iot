part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_JobExecutionsRolloutConfig.html
class JobExecutionsRolloutConfig {
  const JobExecutionsRolloutConfig({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory JobExecutionsRolloutConfig.fromJson(Map<String, dynamic> json) {
    return _$JobExecutionsRolloutConfigFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$JobExecutionsRolloutConfigToJson(this);
  }
}
