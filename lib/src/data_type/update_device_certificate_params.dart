part of aws_iot.data_type;

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
