part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ImplicitDeny.html
class ImplicitDeny {
  const ImplicitDeny({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ImplicitDeny.fromJson(Map<String, dynamic> json) {
    return _$ImplicitDenyFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ImplicitDenyToJson(this);
  }
}
