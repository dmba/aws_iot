part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_SecurityProfileTarget.html
class SecurityProfileTarget {
  const SecurityProfileTarget({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory SecurityProfileTarget.fromJson(Map<String, dynamic> json) {
    return _$SecurityProfileTargetFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SecurityProfileTargetToJson(this);
  }
}
