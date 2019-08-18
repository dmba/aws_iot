part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_LogTarget.html
class LogTarget {
  const LogTarget({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory LogTarget.fromJson(Map<String, dynamic> json) {
    return _$LogTargetFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LogTargetToJson(this);
  }
}
