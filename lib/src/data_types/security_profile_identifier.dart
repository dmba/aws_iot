part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_SecurityProfileIdentifier.html
class SecurityProfileIdentifier {
  const SecurityProfileIdentifier({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory SecurityProfileIdentifier.fromJson(Map<String, dynamic> json) {
    return _$SecurityProfileIdentifierFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SecurityProfileIdentifierToJson(this);
  }
}
