part of 'package:aws_iot/src/data_types/data_types.dart';

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
