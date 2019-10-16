part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_TopicRuleListItem.html
class TopicRuleListItem {
  const TopicRuleListItem({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory TopicRuleListItem.fromJson(Map<String, dynamic> json) {
    return _$TopicRuleListItemFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TopicRuleListItemToJson(this);
  }
}
