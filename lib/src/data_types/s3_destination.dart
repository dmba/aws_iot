part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_S3Destination.html
class S3Destination {
  const S3Destination({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory S3Destination.fromJson(Map<String, dynamic> json) {
    return _$S3DestinationFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$S3DestinationToJson(this);
  }
}
