part of aws_iot.data_type;

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_StreamSummary.html
class StreamSummary {
  const StreamSummary({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory StreamSummary.fromJson(Map<String, dynamic> json) {
    return _$StreamSummaryFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StreamSummaryToJson(this);
  }
}
