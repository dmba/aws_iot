part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_GroupNameAndArn.html
class GroupNameAndArn {
  const GroupNameAndArn({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory GroupNameAndArn.fromJson(Map<String, dynamic> json) {
    return _$GroupNameAndArnFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$GroupNameAndArnToJson(this);
  }
}
