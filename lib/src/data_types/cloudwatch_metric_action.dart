part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_CloudwatchMetricAction.html
class CloudwatchMetricAction {
  const CloudwatchMetricAction({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory CloudwatchMetricAction.fromJson(Map<String, dynamic> json) {
    return _$CloudwatchMetricActionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CloudwatchMetricActionToJson(this);
  }
}
