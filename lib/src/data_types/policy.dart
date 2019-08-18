part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_Policy.html
class Policy {
  const Policy({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory Policy.fromJson(Map<String, dynamic> json) {
    return _$PolicyFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PolicyToJson(this);
  }
}
