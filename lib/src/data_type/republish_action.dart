part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_RepublishAction.html
class RepublishAction {
  const RepublishAction({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory RepublishAction.fromJson(Map<String, dynamic> json) {
    return _$RepublishActionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RepublishActionToJson(this);
  }
}
