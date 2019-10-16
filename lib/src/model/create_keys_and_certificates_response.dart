part of aws_iot.model;

@JsonSerializable()
class CreateKeysAndCertificateResponse {
  const CreateKeysAndCertificateResponse({
    this.certificateArn,
    this.certificateId,
    this.certificatePem,
    this.keyPair,
  });

  @JsonKey(name: 'certificateArn')
  final String certificateArn;
  @JsonKey(name: 'certificateId')
  final String certificateId;
  @JsonKey(name: 'certificatePem')
  final String certificatePem;
  @JsonKey(name: 'keyPair')
  final KeyPair keyPair;

  factory CreateKeysAndCertificateResponse.fromJson(Map<String, dynamic> json) {
    return _$CreateKeysAndCertificateResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CreateKeysAndCertificateResponseToJson(this);
  }
}
