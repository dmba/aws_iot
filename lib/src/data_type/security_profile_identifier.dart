part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_SecurityProfileIdentifier.html
class SecurityProfileIdentifier {
  const SecurityProfileIdentifier({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory SecurityProfileIdentifier.fromJson(Map<String, dynamic> json) {
    return _$SecurityProfileIdentifierFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SecurityProfileIdentifierToJson(this);
  }
}
