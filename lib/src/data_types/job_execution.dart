part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_JobExecution.html
class JobExecution {
  const JobExecution({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory JobExecution.fromJson(Map<String, dynamic> json) {
    return _$JobExecutionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$JobExecutionToJson(this);
  }
}
