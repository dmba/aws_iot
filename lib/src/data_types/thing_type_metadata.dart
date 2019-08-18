part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ThingTypeMetadata.html
class ThingTypeMetadata {
  const ThingTypeMetadata({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ThingTypeMetadata.fromJson(Map<String, dynamic> json) {
    return _$ThingTypeMetadataFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ThingTypeMetadataToJson(this);
  }
}
