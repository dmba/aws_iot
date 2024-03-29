part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_MitigationAction.html
class MitigationAction {
  const MitigationAction({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory MitigationAction.fromJson(Map<String, dynamic> json) {
    return _$MitigationActionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MitigationActionToJson(this);
  }
}
