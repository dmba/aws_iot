part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_AuditMitigationActionsTaskMetadata.html
class AuditMitigationActionsTaskMetadata {
  const AuditMitigationActionsTaskMetadata({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory AuditMitigationActionsTaskMetadata.fromJson(
      Map<String, dynamic> json) {
    return _$AuditMitigationActionsTaskMetadataFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AuditMitigationActionsTaskMetadataToJson(this);
  }
}
