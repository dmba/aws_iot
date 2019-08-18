part of 'package:aws_iot/src/data_types/data_types.dart';

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
