part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ExplicitDeny.html
class ExplicitDeny {
  const ExplicitDeny({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ExplicitDeny.fromJson(Map<String, dynamic> json) {
    return _$ExplicitDenyFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ExplicitDenyToJson(this);
  }
}
