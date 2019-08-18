part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_AuditMitigationActionExecutionMetadata.html
class AuditMitigationActionExecutionMetadata {
  const AuditMitigationActionExecutionMetadata({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory AuditMitigationActionExecutionMetadata.fromJson(
      Map<String, dynamic> json) {
    return _$AuditMitigationActionExecutionMetadataFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AuditMitigationActionExecutionMetadataToJson(this);
  }
}
