part of aws_iot.data_type;

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
