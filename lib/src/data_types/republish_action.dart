part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_RepublishAction.html
class RepublishAction {
  const RepublishAction({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory RepublishAction.fromJson(Map<String, dynamic> json) {
    return _$RepublishActionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RepublishActionToJson(this);
  }
}
