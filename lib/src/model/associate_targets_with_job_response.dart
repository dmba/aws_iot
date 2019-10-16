part of aws_iot.model;

@JsonSerializable()
class AssociateTargetsWithJobResponse {
  const AssociateTargetsWithJobResponse({
    this.description,
    this.jobArn,
    this.jobId,
  });

  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'jobArn')
  final String jobArn;
  @JsonKey(name: 'jobId')
  final String jobId;

  factory AssociateTargetsWithJobResponse.fromJson(Map<String, dynamic> json) {
    return _$AssociateTargetsWithJobResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AssociateTargetsWithJobResponseToJson(this);
  }
}
