part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_Certificate.html
class Certificate {
  const Certificate({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory Certificate.fromJson(Map<String, dynamic> json) {
    return _$CertificateFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CertificateToJson(this);
  }
}
