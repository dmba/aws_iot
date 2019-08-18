part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_UpdateDeviceCertificateParams.html
class UpdateDeviceCertificateParams {
  const UpdateDeviceCertificateParams({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory UpdateDeviceCertificateParams.fromJson(Map<String, dynamic> json) {
    return _$UpdateDeviceCertificateParamsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UpdateDeviceCertificateParamsToJson(this);
  }
}
