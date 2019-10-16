part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_Statistics.html
class Statistics {
  const Statistics({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory Statistics.fromJson(Map<String, dynamic> json) {
    return _$StatisticsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StatisticsToJson(this);
  }
}
