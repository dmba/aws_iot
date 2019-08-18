part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ScheduledAuditMetadata.html
class ScheduledAuditMetadata {
  const ScheduledAuditMetadata({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ScheduledAuditMetadata.fromJson(Map<String, dynamic> json) {
    return _$ScheduledAuditMetadataFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ScheduledAuditMetadataToJson(this);
  }
}
