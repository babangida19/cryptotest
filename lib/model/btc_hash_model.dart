import 'dart:convert';

BtcHashModel btcHashModelFromJson(String str) =>
    BtcHashModel.fromJson(json.decode(str));

class BtcHashModel {
  final String hash;
  final int time;
  final int blockIndex;
  final int height;

  BtcHashModel({
    required this.hash,
    required this.time,
    required this.blockIndex,
    required this.height,
  });

  factory BtcHashModel.fromJson(Map<String, dynamic> json) => BtcHashModel(
        hash: json["hash"],
        time: json["time"],
        blockIndex: json["block_index"],
        height: json["height"],
      );
}
