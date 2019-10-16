part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_AuditCheckDetails.html
class AuditCheckDetails {
  const AuditCheckDetails({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory AuditCheckDetails.fromJson(Map<String, dynamic> json) {
    return _$AuditCheckDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AuditCheckDetailsToJson(this);
  }
}
