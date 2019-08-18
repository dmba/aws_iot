part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_JobExecutionSummary.html
class JobExecutionSummary {
  const JobExecutionSummary({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory JobExecutionSummary.fromJson(Map<String, dynamic> json) {
    return _$JobExecutionSummaryFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$JobExecutionSummaryToJson(this);
  }
}
