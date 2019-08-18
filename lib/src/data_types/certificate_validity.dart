part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_CertificateValidity.html
class CertificateValidity {
  const CertificateValidity({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory CertificateValidity.fromJson(Map<String, dynamic> json) {
    return _$CertificateValidityFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CertificateValidityToJson(this);
  }
}
