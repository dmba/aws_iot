part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ValidationError.html
class ValidationError {
  const ValidationError({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory ValidationError.fromJson(Map<String, dynamic> json) {
    return _$ValidationErrorFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ValidationErrorToJson(this);
  }
}
