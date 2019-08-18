part of 'package:aws_iot/src/data_types/data_types.dart';

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
