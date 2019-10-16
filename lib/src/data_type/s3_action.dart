part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_S3Action.html
class S3Action {
  const S3Action({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory S3Action.fromJson(Map<String, dynamic> json) {
    return _$S3ActionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$S3ActionToJson(this);
  }
}
