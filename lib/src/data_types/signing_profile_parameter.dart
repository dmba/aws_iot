part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_SigningProfileParameter.html
class SigningProfileParameter {
  const SigningProfileParameter({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory SigningProfileParameter.fromJson(Map<String, dynamic> json) {
    return _$SigningProfileParameterFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SigningProfileParameterToJson(this);
  }
}
