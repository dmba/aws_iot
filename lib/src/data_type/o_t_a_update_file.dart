part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_OTAUpdateFile.html
class OTAUpdateFile {
  const OTAUpdateFile({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory OTAUpdateFile.fromJson(Map<String, dynamic> json) {
    return _$OTAUpdateFileFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$OTAUpdateFileToJson(this);
  }
}
