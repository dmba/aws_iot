part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_EffectivePolicy.html
class EffectivePolicy {
  const EffectivePolicy({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory EffectivePolicy.fromJson(Map<String, dynamic> json) {
    return _$EffectivePolicyFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$EffectivePolicyToJson(this);
  }
}
