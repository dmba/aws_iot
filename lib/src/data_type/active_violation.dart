part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ActiveViolation.html
class ActiveViolation {
  const ActiveViolation({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ActiveViolation.fromJson(Map<String, dynamic> json) {
    return _$ActiveViolationFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ActiveViolationToJson(this);
  }
}
