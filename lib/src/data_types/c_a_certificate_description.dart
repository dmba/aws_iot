part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_CACertificateDescription.html
class CACertificateDescription {
  const CACertificateDescription({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory CACertificateDescription.fromJson(Map<String, dynamic> json) {
    return _$CACertificateDescriptionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CACertificateDescriptionToJson(this);
  }
}
