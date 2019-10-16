part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_EnableIoTLoggingParams.html
class EnableIoTLoggingParams {
  const EnableIoTLoggingParams({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory EnableIoTLoggingParams.fromJson(Map<String, dynamic> json) {
    return _$EnableIoTLoggingParamsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$EnableIoTLoggingParamsToJson(this);
  }
}
