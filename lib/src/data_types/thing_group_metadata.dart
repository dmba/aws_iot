part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ThingGroupMetadata.html
class ThingGroupMetadata {
  const ThingGroupMetadata({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ThingGroupMetadata.fromJson(Map<String, dynamic> json) {
    return _$ThingGroupMetadataFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ThingGroupMetadataToJson(this);
  }
}
