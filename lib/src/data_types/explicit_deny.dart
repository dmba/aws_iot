part of 'package:aws_iot/src/data_types/data_types.dart';

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
