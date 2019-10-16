part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_SecurityProfileTarget.html
class SecurityProfileTarget {
  const SecurityProfileTarget({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory SecurityProfileTarget.fromJson(Map<String, dynamic> json) {
    return _$SecurityProfileTargetFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SecurityProfileTargetToJson(this);
  }
}
