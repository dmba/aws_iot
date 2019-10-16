part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_BehaviorCriteria.html
class BehaviorCriteria {
  const BehaviorCriteria({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory BehaviorCriteria.fromJson(Map<String, dynamic> json) {
    return _$BehaviorCriteriaFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BehaviorCriteriaToJson(this);
  }
}
