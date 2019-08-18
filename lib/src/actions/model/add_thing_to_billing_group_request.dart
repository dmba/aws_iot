part of 'package:aws_iot/src/actions/model/model.dart';

@JsonSerializable()
class AddThingToBillingGroupRequest {
  const AddThingToBillingGroupRequest({
    this.billingGroupArn,
    this.billingGroupName,
    this.thingArn,
    this.thingName,
  });

  @JsonKey(name: 'billingGroupArn')
  final String billingGroupArn;
  @JsonKey(name: 'billingGroupName')
  final String billingGroupName;
  @JsonKey(name: 'thingArn')
  final String thingArn;
  @JsonKey(name: 'thingName')
  final String thingName;

  factory AddThingToBillingGroupRequest.fromJson(Map<String, dynamic> json) {
    return _$AddThingToBillingGroupRequestFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AddThingToBillingGroupRequestToJson(this);
  }
}
