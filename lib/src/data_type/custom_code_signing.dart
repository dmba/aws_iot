part of aws_iot.data_type;

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
