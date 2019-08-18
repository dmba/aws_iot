part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_UpdateCACertificateParams.html
class UpdateCACertificateParams {
  const UpdateCACertificateParams({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory UpdateCACertificateParams.fromJson(Map<String, dynamic> json) {
    return _$UpdateCACertificateParamsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UpdateCACertificateParamsToJson(this);
  }
}
