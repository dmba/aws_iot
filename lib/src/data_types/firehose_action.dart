part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_FirehoseAction.html
class FirehoseAction {
  const FirehoseAction({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory FirehoseAction.fromJson(Map<String, dynamic> json) {
    return _$FirehoseActionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$FirehoseActionToJson(this);
  }
}
