part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ExponentialRolloutRate.html
class ExponentialRolloutRate {
  const ExponentialRolloutRate({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ExponentialRolloutRate.fromJson(Map<String, dynamic> json) {
    return _$ExponentialRolloutRateFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ExponentialRolloutRateToJson(this);
  }
}
