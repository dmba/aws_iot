part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_CodeSigning.html
class CodeSigning {
  const CodeSigning({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory CodeSigning.fromJson(Map<String, dynamic> json) {
    return _$CodeSigningFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CodeSigningToJson(this);
  }
}
