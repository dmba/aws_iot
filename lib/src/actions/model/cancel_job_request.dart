part of 'package:aws_iot/src/actions/model/model.dart';

@JsonSerializable()
class CancelJobRequest {
  const CancelJobRequest({
    @required this.comment,
    @required this.reasonCode,
  });

  @JsonKey(name: 'comment')
  final String comment;
  @JsonKey(name: 'reasonCode')
  final String reasonCode;

  factory CancelJobRequest.fromJson(Map<String, dynamic> json) {
    return _$CancelJobRequestFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CancelJobRequestToJson(this);
  }
}
