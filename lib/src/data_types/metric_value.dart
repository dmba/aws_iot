part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_MetricValue.html
class MetricValue {
  const MetricValue({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory MetricValue.fromJson(Map<String, dynamic> json) {
    return _$MetricValueFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MetricValueToJson(this);
  }
}
