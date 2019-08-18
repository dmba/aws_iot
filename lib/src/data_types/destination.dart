part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_Destination.html
class Destination {
  const Destination({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory Destination.fromJson(Map<String, dynamic> json) {
    return _$DestinationFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DestinationToJson(this);
  }
}
