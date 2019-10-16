part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_TopicRule.html
class TopicRule {
  const TopicRule({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory TopicRule.fromJson(Map<String, dynamic> json) {
    return _$TopicRuleFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TopicRuleToJson(this);
  }
}
