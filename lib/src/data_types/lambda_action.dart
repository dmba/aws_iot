part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_LambdaAction.html
class LambdaAction {
  const LambdaAction({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory LambdaAction.fromJson(Map<String, dynamic> json) {
    return _$LambdaActionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LambdaActionToJson(this);
  }
}
