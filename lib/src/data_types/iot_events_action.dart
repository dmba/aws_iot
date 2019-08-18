part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_IotEventsAction.html
class IotEventsAction {
  const IotEventsAction({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory IotEventsAction.fromJson(Map<String, dynamic> json) {
    return _$IotEventsActionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$IotEventsActionToJson(this);
  }
}
