part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_MitigationActionIdentifier.html
class MitigationActionIdentifier {
  const MitigationActionIdentifier({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory MitigationActionIdentifier.fromJson(Map<String, dynamic> json) {
    return _$MitigationActionIdentifierFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MitigationActionIdentifierToJson(this);
  }
}
