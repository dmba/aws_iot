part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_SqsAction.html
class SqsAction {
  const SqsAction({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory SqsAction.fromJson(Map<String, dynamic> json) {
    return _$SqsActionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SqsActionToJson(this);
  }
}
