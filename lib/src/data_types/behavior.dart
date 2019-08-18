part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_Behavior.html
class Behavior {
  const Behavior({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory Behavior.fromJson(Map<String, dynamic> json) {
    return _$BehaviorFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BehaviorToJson(this);
  }
}
