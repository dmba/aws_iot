part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_AuditNotificationTarget.html
class AuditNotificationTarget {
  const AuditNotificationTarget({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory AuditNotificationTarget.fromJson(Map<String, dynamic> json) {
    return _$AuditNotificationTargetFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AuditNotificationTargetToJson(this);
  }
}
