part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_AlertTarget.html
class AlertTarget {
  const AlertTarget({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory AlertTarget.fromJson(Map<String, dynamic> json) {
    return _$AlertTargetFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AlertTargetToJson(this);
  }
}
