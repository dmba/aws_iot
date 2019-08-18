part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_SnsAction.html
class SnsAction {
  const SnsAction({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory SnsAction.fromJson(Map<String, dynamic> json) {
    return _$SnsActionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SnsActionToJson(this);
  }
}
