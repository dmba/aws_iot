part of 'package:aws_iot/src/data_types/data_types.dart';

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
