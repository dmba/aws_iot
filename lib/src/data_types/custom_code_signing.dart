part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_CustomCodeSigning.html
class CustomCodeSigning {
  const CustomCodeSigning({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory CustomCodeSigning.fromJson(Map<String, dynamic> json) {
    return _$CustomCodeSigningFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CustomCodeSigningToJson(this);
  }
}
