part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_DynamoDBAction.html
class DynamoDBAction {
  const DynamoDBAction({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory DynamoDBAction.fromJson(Map<String, dynamic> json) {
    return _$DynamoDBActionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DynamoDBActionToJson(this);
  }
}
