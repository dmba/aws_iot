part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_JobExecutionSummaryForJob.html
class JobExecutionSummaryForJob {
  const JobExecutionSummaryForJob({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory JobExecutionSummaryForJob.fromJson(Map<String, dynamic> json) {
    return _$JobExecutionSummaryForJobFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$JobExecutionSummaryForJobToJson(this);
  }
}
