part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_TaskStatisticsForAuditCheck.html
class TaskStatisticsForAuditCheck {
  const TaskStatisticsForAuditCheck({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory TaskStatisticsForAuditCheck.fromJson(Map<String, dynamic> json) {
    return _$TaskStatisticsForAuditCheckFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TaskStatisticsForAuditCheckToJson(this);
  }
}
