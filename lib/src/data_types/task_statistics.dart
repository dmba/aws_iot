part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_TaskStatistics.html
class TaskStatistics {
  const TaskStatistics({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory TaskStatistics.fromJson(Map<String, dynamic> json) {
    return _$TaskStatisticsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TaskStatisticsToJson(this);
  }
}
