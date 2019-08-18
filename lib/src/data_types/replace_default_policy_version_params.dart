part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ReplaceDefaultPolicyVersionParams.html
class ReplaceDefaultPolicyVersionParams {
  const ReplaceDefaultPolicyVersionParams({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ReplaceDefaultPolicyVersionParams.fromJson(
      Map<String, dynamic> json) {
    return _$ReplaceDefaultPolicyVersionParamsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ReplaceDefaultPolicyVersionParamsToJson(this);
  }
}
