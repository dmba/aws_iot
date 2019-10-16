part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_BillingGroupMetadata.html
class BillingGroupMetadata {
  const BillingGroupMetadata({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory BillingGroupMetadata.fromJson(Map<String, dynamic> json) {
    return _$BillingGroupMetadataFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BillingGroupMetadataToJson(this);
  }
}
