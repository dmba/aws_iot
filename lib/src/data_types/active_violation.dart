part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ActiveViolation.html
class ActiveViolation {
  const ActiveViolation({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ActiveViolation.fromJson(Map<String, dynamic> json) {
    return _$ActiveViolationFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ActiveViolationToJson(this);
  }
}
