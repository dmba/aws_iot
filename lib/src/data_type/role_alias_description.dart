part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_RoleAliasDescription.html
class RoleAliasDescription {
  const RoleAliasDescription({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory RoleAliasDescription.fromJson(Map<String, dynamic> json) {
    return _$RoleAliasDescriptionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RoleAliasDescriptionToJson(this);
  }
}
