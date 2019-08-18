part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_StreamInfo.html
class StreamInfo {
  const StreamInfo({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory StreamInfo.fromJson(Map<String, dynamic> json) {
    return _$StreamInfoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StreamInfoToJson(this);
  }
}
