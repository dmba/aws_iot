part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_PutItemInput.html
class PutItemInput {
  const PutItemInput({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory PutItemInput.fromJson(Map<String, dynamic> json) {
    return _$PutItemInputFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PutItemInputToJson(this);
  }
}
