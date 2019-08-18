part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_DynamoDBv2Action.html
class DynamoDBv2Action {
  const DynamoDBv2Action({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory DynamoDBv2Action.fromJson(Map<String, dynamic> json) {
    return _$DynamoDBv2ActionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DynamoDBv2ActionToJson(this);
  }
}
