part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_AttributePayload.html
class AttributePayload {
  const AttributePayload({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory AttributePayload.fromJson(Map<String, dynamic> json) {
    return _$AttributePayloadFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AttributePayloadToJson(this);
  }
}
