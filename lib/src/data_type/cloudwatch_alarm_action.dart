part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_CloudwatchAlarmAction.html
class CloudwatchAlarmAction {
  const CloudwatchAlarmAction({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory CloudwatchAlarmAction.fromJson(Map<String, dynamic> json) {
    return _$CloudwatchAlarmActionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CloudwatchAlarmActionToJson(this);
  }
}
