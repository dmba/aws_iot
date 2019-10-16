part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_Job.html
class Job {
  const Job({
    this.description,
    this.jobArn,
    this.jobId,
    this.comment,
    this.targets,
    this.reasonCode,
  });

  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'jobArn')
  final String jobArn;
  @JsonKey(name: 'jobId')
  final String jobId;
  @JsonKey(name: 'comment')
  final String comment;
  @JsonKey(name: 'targets')
  final List<String> targets;
  @JsonKey(name: 'reasonCode')
  final String reasonCode;

  factory Job.fromJson(Map<String, dynamic> json) {
    return _$JobFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$JobToJson(this);
  }
}
