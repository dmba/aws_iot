part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ThingAttribute.html
class ThingAttribute {
  const ThingAttribute({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ThingAttribute.fromJson(Map<String, dynamic> json) {
    return _$ThingAttributeFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ThingAttributeToJson(this);
  }
}
