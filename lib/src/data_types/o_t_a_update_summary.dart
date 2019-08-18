part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_OTAUpdateSummary.html
class OTAUpdateSummary {
  const OTAUpdateSummary({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory OTAUpdateSummary.fromJson(Map<String, dynamic> json) {
    return _$OTAUpdateSummaryFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$OTAUpdateSummaryToJson(this);
  }
}
