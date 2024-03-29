part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_AbortCriteria.html
class AbortCriteria {
  const AbortCriteria({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory AbortCriteria.fromJson(Map<String, dynamic> json) {
    return _$AbortCriteriaFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AbortCriteriaToJson(this);
  }
}
