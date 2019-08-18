part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_AuthorizerSummary.html
class AuthorizerSummary {
  const AuthorizerSummary({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory AuthorizerSummary.fromJson(Map<String, dynamic> json) {
    return _$AuthorizerSummaryFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AuthorizerSummaryToJson(this);
  }
}
