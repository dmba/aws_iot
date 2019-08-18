part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_OutgoingCertificate.html
class OutgoingCertificate {
  const OutgoingCertificate({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory OutgoingCertificate.fromJson(Map<String, dynamic> json) {
    return _$OutgoingCertificateFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$OutgoingCertificateToJson(this);
  }
}
