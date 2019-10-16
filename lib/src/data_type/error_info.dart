part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ErrorInfo.html
class ErrorInfo {
  const ErrorInfo({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ErrorInfo.fromJson(Map<String, dynamic> json) {
    return _$ErrorInfoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ErrorInfoToJson(this);
  }
}
