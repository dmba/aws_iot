part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_StatisticalThreshold.html
class StatisticalThreshold {
  const StatisticalThreshold({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory StatisticalThreshold.fromJson(Map<String, dynamic> json) {
    return _$StatisticalThresholdFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StatisticalThresholdToJson(this);
  }
}
