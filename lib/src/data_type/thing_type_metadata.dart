part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ThingTypeMetadata.html
class ThingTypeMetadata {
  const ThingTypeMetadata({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ThingTypeMetadata.fromJson(Map<String, dynamic> json) {
    return _$ThingTypeMetadataFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ThingTypeMetadataToJson(this);
  }
}
