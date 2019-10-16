part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ResourceIdentifier.html
class ResourceIdentifier {
  const ResourceIdentifier({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ResourceIdentifier.fromJson(Map<String, dynamic> json) {
    return _$ResourceIdentifierFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ResourceIdentifierToJson(this);
  }
}
