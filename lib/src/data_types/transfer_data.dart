part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_TransferData.html
class TransferData {
  const TransferData({
    this.message,
  });

  @JsonKey(name: 'message')
  final String message;

  factory TransferData.fromJson(Map<String, dynamic> json) {
    return _$TransferDataFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TransferDataToJson(this);
  }
}
