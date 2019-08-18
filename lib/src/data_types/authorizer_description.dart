part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_AuthorizerDescription.html
class AuthorizerDescription {
  const AuthorizerDescription({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory AuthorizerDescription.fromJson(Map<String, dynamic> json) {
    return _$AuthorizerDescriptionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AuthorizerDescriptionToJson(this);
  }
}
