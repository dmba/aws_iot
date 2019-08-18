part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_BillingGroupProperties.html
class BillingGroupProperties {
  const BillingGroupProperties({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory BillingGroupProperties.fromJson(Map<String, dynamic> json) {
    return _$BillingGroupPropertiesFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BillingGroupPropertiesToJson(this);
  }
}
