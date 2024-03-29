part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ThingDocument.html
class ThingDocument {
  const ThingDocument({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ThingDocument.fromJson(Map<String, dynamic> json) {
    return _$ThingDocumentFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ThingDocumentToJson(this);
  }
}
