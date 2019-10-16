part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_StepFunctionsAction.html
class StepFunctionsAction {
  const StepFunctionsAction({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory StepFunctionsAction.fromJson(Map<String, dynamic> json) {
    return _$StepFunctionsActionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StepFunctionsActionToJson(this);
  }
}
