part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_SecurityProfileTargetMapping.html
class SecurityProfileTargetMapping {
  const SecurityProfileTargetMapping({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory SecurityProfileTargetMapping.fromJson(Map<String, dynamic> json) {
    return _$SecurityProfileTargetMappingFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SecurityProfileTargetMappingToJson(this);
  }
}
