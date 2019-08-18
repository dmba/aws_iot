part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_CodeSigningCertificateChain.html
class CodeSigningCertificateChain {
  const CodeSigningCertificateChain({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory CodeSigningCertificateChain.fromJson(Map<String, dynamic> json) {
    return _$CodeSigningCertificateChainFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CodeSigningCertificateChainToJson(this);
  }
}
