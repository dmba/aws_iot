part of aws_iot.model;

@JsonSerializable()
class CancelJobRequest {
  const CancelJobRequest({
    @required this.comment,
    @required this.reasonCode,
  });

  @JsonKey(name: 'comment')
  final String comment;
  @JsonKey(name: 'reasonCode')
  final String reasonCode;

  factory CancelJobRequest.fromJson(Map<String, dynamic> json) {
    return _$CancelJobRequestFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CancelJobRequestToJson(this);
  }
}
