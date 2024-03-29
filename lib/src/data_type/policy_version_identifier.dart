part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_PolicyVersionIdentifier.html
class PolicyVersionIdentifier {
  const PolicyVersionIdentifier({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory PolicyVersionIdentifier.fromJson(Map<String, dynamic> json) {
    return _$PolicyVersionIdentifierFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PolicyVersionIdentifierToJson(this);
  }
}
