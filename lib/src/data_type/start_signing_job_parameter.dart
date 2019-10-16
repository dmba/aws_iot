part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_StartSigningJobParameter.html
class StartSigningJobParameter {
  const StartSigningJobParameter({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory StartSigningJobParameter.fromJson(Map<String, dynamic> json) {
    return _$StartSigningJobParameterFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StartSigningJobParameterToJson(this);
  }
}
