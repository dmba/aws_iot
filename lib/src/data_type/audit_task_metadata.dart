part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_AuditTaskMetadata.html
class AuditTaskMetadata {
  const AuditTaskMetadata({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory AuditTaskMetadata.fromJson(Map<String, dynamic> json) {
    return _$AuditTaskMetadataFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AuditTaskMetadataToJson(this);
  }
}
