part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_AlertTarget.html
class AlertTarget {
  const AlertTarget({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory AlertTarget.fromJson(Map<String, dynamic> json) {
    return _$AlertTargetFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AlertTargetToJson(this);
  }
}
