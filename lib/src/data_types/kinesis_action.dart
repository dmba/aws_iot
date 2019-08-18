part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_KinesisAction.html
class KinesisAction {
  const KinesisAction({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory KinesisAction.fromJson(Map<String, dynamic> json) {
    return _$KinesisActionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$KinesisActionToJson(this);
  }
}
