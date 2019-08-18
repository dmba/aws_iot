part of 'package:aws_iot/src/data_types/data_types.dart';

@JsonSerializable()
class KeyPair {
  const KeyPair({
    this.privateKey,
    this.publicKey,
  });

  @JsonKey(name: 'PrivateKey')
  final String privateKey;
  @JsonKey(name: 'PublicKey')
  final String publicKey;

  factory KeyPair.fromJson(Map<String, dynamic> json) {
    return _$KeyPairFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$KeyPairToJson(this);
  }
}
