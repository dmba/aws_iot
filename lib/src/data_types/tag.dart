part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_Tag.html
class Tag {
  const Tag({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory Tag.fromJson(Map<String, dynamic> json) {
    return _$TagFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TagToJson(this);
  }
}
