part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_OTAUpdateInfo.html
class OTAUpdateInfo {
  const OTAUpdateInfo({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory OTAUpdateInfo.fromJson(Map<String, dynamic> json) {
    return _$OTAUpdateInfoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$OTAUpdateInfoToJson(this);
  }
}
