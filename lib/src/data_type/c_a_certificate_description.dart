part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_CACertificateDescription.html
class CACertificateDescription {
  const CACertificateDescription({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory CACertificateDescription.fromJson(Map<String, dynamic> json) {
    return _$CACertificateDescriptionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CACertificateDescriptionToJson(this);
  }
}
