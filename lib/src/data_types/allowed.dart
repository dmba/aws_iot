part of 'package:aws_iot/src/data_types/data_types.dart';

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
