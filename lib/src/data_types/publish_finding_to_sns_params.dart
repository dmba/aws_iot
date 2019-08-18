part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_PublishFindingToSnsParams.html
class PublishFindingToSnsParams {
  const PublishFindingToSnsParams({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory PublishFindingToSnsParams.fromJson(Map<String, dynamic> json) {
    return _$PublishFindingToSnsParamsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PublishFindingToSnsParamsToJson(this);
  }
}
