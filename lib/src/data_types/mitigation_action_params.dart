part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_MitigationActionParams.html
class MitigationActionParams {
  const MitigationActionParams({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory MitigationActionParams.fromJson(Map<String, dynamic> json) {
    return _$MitigationActionParamsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MitigationActionParamsToJson(this);
  }
}
