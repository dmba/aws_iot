part of 'package:aws_iot/src/actions/model/model.dart';

@JsonSerializable()
class AssociateTargetsWithJobRequest {
  const AssociateTargetsWithJobRequest({
    this.comment,
    this.targets,
  });

  @JsonKey(name: 'comment')
  final String comment;
  @JsonKey(name: 'targets')
  final List<String> targets;

  factory AssociateTargetsWithJobRequest.fromJson(Map<String, dynamic> json) {
    return _$AssociateTargetsWithJobRequestFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AssociateTargetsWithJobRequestToJson(this);
  }
}
