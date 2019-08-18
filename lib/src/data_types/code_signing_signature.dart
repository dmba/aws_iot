part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_CodeSigningSignature.html
class CodeSigningSignature {
  const CodeSigningSignature({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory CodeSigningSignature.fromJson(Map<String, dynamic> json) {
    return _$CodeSigningSignatureFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CodeSigningSignatureToJson(this);
  }
}
