part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_AuditMitigationActionsTaskTarget.html
class AuditMitigationActionsTaskTarget {
  const AuditMitigationActionsTaskTarget({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory AuditMitigationActionsTaskTarget.fromJson(Map<String, dynamic> json) {
    return _$AuditMitigationActionsTaskTargetFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AuditMitigationActionsTaskTargetToJson(this);
  }
}
