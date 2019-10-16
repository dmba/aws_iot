part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_IotAnalyticsAction.html
class IotAnalyticsAction {
  const IotAnalyticsAction({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory IotAnalyticsAction.fromJson(Map<String, dynamic> json) {
    return _$IotAnalyticsActionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$IotAnalyticsActionToJson(this);
  }
}
