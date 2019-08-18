part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_Denied.html
class Denied {
  const Denied({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory Denied.fromJson(Map<String, dynamic> json) {
    return _$DeniedFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DeniedToJson(this);
  }
}
