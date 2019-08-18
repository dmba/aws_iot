part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ThingConnectivity.html
class ThingConnectivity {
  const ThingConnectivity({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ThingConnectivity.fromJson(Map<String, dynamic> json) {
    return _$ThingConnectivityFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ThingConnectivityToJson(this);
  }
}
