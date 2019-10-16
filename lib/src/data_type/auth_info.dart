part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_AuthInfo.html
class AuthInfo {
  const AuthInfo({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory AuthInfo.fromJson(Map<String, dynamic> json) {
    return _$AuthInfoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AuthInfoToJson(this);
  }
}
