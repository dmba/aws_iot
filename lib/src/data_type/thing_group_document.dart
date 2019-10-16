part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ThingGroupDocument.html
class ThingGroupDocument {
  const ThingGroupDocument({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ThingGroupDocument.fromJson(Map<String, dynamic> json) {
    return _$ThingGroupDocumentFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ThingGroupDocumentToJson(this);
  }
}
