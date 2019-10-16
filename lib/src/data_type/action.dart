part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_Action.html
class Action {
  const Action({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory Action.fromJson(Map<String, dynamic> json) {
    return _$ActionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ActionToJson(this);
  }
}
