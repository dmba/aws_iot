part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_Configuration.html
class Configuration {
  const Configuration({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory Configuration.fromJson(Map<String, dynamic> json) {
    return _$ConfigurationFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ConfigurationToJson(this);
  }
}
