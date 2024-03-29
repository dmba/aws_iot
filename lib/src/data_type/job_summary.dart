part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_JobSummary.html
class JobSummary {
  const JobSummary({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory JobSummary.fromJson(Map<String, dynamic> json) {
    return _$JobSummaryFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$JobSummaryToJson(this);
  }
}
