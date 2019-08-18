part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_PolicyVersion.html
class PolicyVersion {
  const PolicyVersion({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory PolicyVersion.fromJson(Map<String, dynamic> json) {
    return _$PolicyVersionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PolicyVersionToJson(this);
  }
}
