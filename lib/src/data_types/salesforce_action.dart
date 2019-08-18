part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_SalesforceAction.html
class SalesforceAction {
  const SalesforceAction({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory SalesforceAction.fromJson(Map<String, dynamic> json) {
    return _$SalesforceActionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SalesforceActionToJson(this);
  }
}
