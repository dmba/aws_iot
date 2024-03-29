part of aws_iot.model;

@JsonSerializable()
class AttachPolicyRequest {
  const AttachPolicyRequest({
    @required this.target,
  });

  @JsonKey(name: 'target')
  final String target;

  factory AttachPolicyRequest.fromJson(Map<String, dynamic> json) {
    return _$AttachPolicyRequestFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AttachPolicyRequestToJson(this);
  }
}
