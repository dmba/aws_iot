part of aws_iot.data_type;

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
