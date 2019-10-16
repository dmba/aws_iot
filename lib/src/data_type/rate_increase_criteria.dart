part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_RateIncreaseCriteria.html
class RateIncreaseCriteria {
  const RateIncreaseCriteria({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory RateIncreaseCriteria.fromJson(Map<String, dynamic> json) {
    return _$RateIncreaseCriteriaFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RateIncreaseCriteriaToJson(this);
  }
}
