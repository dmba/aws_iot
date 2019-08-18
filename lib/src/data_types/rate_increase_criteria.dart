part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_RateIncreaseCriteria.html
class RateIncreaseCriteria {
  const RateIncreaseCriteria({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory RateIncreaseCriteria.fromJson(Map<String, dynamic> json) {
    return _$RateIncreaseCriteriaFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RateIncreaseCriteriaToJson(this);
  }
}
