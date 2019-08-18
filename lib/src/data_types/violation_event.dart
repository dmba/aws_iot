part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ViolationEvent.html
class ViolationEvent {
  const ViolationEvent({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ViolationEvent.fromJson(Map<String, dynamic> json) {
    return _$ViolationEventFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ViolationEventToJson(this);
  }
}
