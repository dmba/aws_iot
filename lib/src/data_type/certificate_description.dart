part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_CertificateDescription.html
class CertificateDescription {
  const CertificateDescription({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory CertificateDescription.fromJson(Map<String, dynamic> json) {
    return _$CertificateDescriptionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CertificateDescriptionToJson(this);
  }
}
