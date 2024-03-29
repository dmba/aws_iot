part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_NonCompliantResource.html
class NonCompliantResource {
  const NonCompliantResource({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory NonCompliantResource.fromJson(Map<String, dynamic> json) {
    return _$NonCompliantResourceFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$NonCompliantResourceToJson(this);
  }
}
