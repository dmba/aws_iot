part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_AddThingsToThingGroupParams.html
class AddThingsToThingGroupParams {
  const AddThingsToThingGroupParams({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory AddThingsToThingGroupParams.fromJson(Map<String, dynamic> json) {
    return _$AddThingsToThingGroupParamsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AddThingsToThingGroupParamsToJson(this);
  }
}
