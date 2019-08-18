part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_S3Location.html
class S3Location {
  const S3Location({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory S3Location.fromJson(Map<String, dynamic> json) {
    return _$S3LocationFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$S3LocationToJson(this);
  }
}
