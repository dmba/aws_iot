part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ElasticsearchAction.html
class ElasticsearchAction {
  const ElasticsearchAction({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ElasticsearchAction.fromJson(Map<String, dynamic> json) {
    return _$ElasticsearchActionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ElasticsearchActionToJson(this);
  }
}
