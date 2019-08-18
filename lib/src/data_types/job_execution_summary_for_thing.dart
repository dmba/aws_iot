part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_JobExecutionSummaryForThing.html
class JobExecutionSummaryForThing {
  const JobExecutionSummaryForThing({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory JobExecutionSummaryForThing.fromJson(Map<String, dynamic> json) {
    return _$JobExecutionSummaryForThingFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$JobExecutionSummaryForThingToJson(this);
  }
}
