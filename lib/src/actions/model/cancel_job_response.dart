part of 'package:aws_iot/src/actions/model/model.dart';

@JsonSerializable()
class CancelJobResponse {
  const CancelJobResponse({
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

  factory CancelJobResponse.fromJson(Map<String, dynamic> json) {
    return _$CancelJobResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CancelJobResponseToJson(this);
  }
}
