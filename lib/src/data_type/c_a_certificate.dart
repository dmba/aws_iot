part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_CACertificate.html
class CACertificate {
  const CACertificate({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory CACertificate.fromJson(Map<String, dynamic> json) {
    return _$CACertificateFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CACertificateToJson(this);
  }
}
