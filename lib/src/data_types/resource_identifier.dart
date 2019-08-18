part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ResourceIdentifier.html
class ResourceIdentifier {
  const ResourceIdentifier({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ResourceIdentifier.fromJson(Map<String, dynamic> json) {
    return _$ResourceIdentifierFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ResourceIdentifierToJson(this);
  }
}
