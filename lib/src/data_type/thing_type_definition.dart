part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ThingTypeDefinition.html
class ThingTypeDefinition {
  const ThingTypeDefinition({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ThingTypeDefinition.fromJson(Map<String, dynamic> json) {
    return _$ThingTypeDefinitionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ThingTypeDefinitionToJson(this);
  }
}
