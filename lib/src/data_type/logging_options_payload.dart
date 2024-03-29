part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_LoggingOptionsPayload.html
class LoggingOptionsPayload {
  const LoggingOptionsPayload({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory LoggingOptionsPayload.fromJson(Map<String, dynamic> json) {
    return _$LoggingOptionsPayloadFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LoggingOptionsPayloadToJson(this);
  }
}
