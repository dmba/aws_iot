part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_StreamFile.html
class StreamFile {
  const StreamFile({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory StreamFile.fromJson(Map<String, dynamic> json) {
    return _$StreamFileFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StreamFileToJson(this);
  }
}
