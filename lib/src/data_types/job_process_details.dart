part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_JobProcessDetails.html
class JobProcessDetails {
  const JobProcessDetails({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory JobProcessDetails.fromJson(Map<String, dynamic> json) {
    return _$JobProcessDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$JobProcessDetailsToJson(this);
  }
}
