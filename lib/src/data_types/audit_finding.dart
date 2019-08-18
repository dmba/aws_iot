part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_AuditFinding.html
class AuditFinding {
  const AuditFinding({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory AuditFinding.fromJson(Map<String, dynamic> json) {
    return _$AuditFindingFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AuditFindingToJson(this);
  }
}
