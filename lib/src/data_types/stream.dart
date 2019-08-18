part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_Stream.html
class Stream {
  const Stream({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory Stream.fromJson(Map<String, dynamic> json) {
    return _$StreamFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StreamToJson(this);
  }
}