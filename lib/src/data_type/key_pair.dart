part of aws_iot.data_type;

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
