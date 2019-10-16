part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_TopicRulePayload.html
class TopicRulePayload {
  const TopicRulePayload({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory TopicRulePayload.fromJson(Map<String, dynamic> json) {
    return _$TopicRulePayloadFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TopicRulePayloadToJson(this);
  }
}
