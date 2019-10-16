part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_AuthResult.html
class AuthResult {
  const AuthResult({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory AuthResult.fromJson(Map<String, dynamic> json) {
    return _$AuthResultFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AuthResultToJson(this);
  }
}
