part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_JobExecutionStatusDetails.html
class JobExecutionStatusDetails {
  const JobExecutionStatusDetails({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory JobExecutionStatusDetails.fromJson(Map<String, dynamic> json) {
    return _$JobExecutionStatusDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$JobExecutionStatusDetailsToJson(this);
  }
}
