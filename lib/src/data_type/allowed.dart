part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_Allowed.html
class Allowed {
  const Allowed({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory Allowed.fromJson(Map<String, dynamic> json) {
    return _$AllowedFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AllowedToJson(this);
  }
}
