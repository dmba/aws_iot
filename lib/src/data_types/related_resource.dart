part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_RelatedResource.html
class RelatedResource {
  const RelatedResource({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory RelatedResource.fromJson(Map<String, dynamic> json) {
    return _$RelatedResourceFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RelatedResourceToJson(this);
  }
}
