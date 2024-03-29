part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_FileLocation.html
class FileLocation {
  const FileLocation({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory FileLocation.fromJson(Map<String, dynamic> json) {
    return _$FileLocationFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$FileLocationToJson(this);
  }
}
