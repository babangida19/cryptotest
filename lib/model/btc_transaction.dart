import 'dart:convert';

BtcTransactionModel btcTransactionModelFromJson(String str) =>
    BtcTransactionModel.fromJson(json.decode(str));

String btcTransactionModelToJson(BtcTransactionModel data) =>
    json.encode(data.toJson());

class BtcTransactionModel {
  final String hash;

  final int time;

  final int size;
  final int blockIndex;
  final int height;
  final int? receivedTime;

  BtcTransactionModel({
    required this.hash,
    required this.time,
    required this.size,
    required this.blockIndex,
    required this.height,
    this.receivedTime,
  });

  factory BtcTransactionModel.fromJson(Map<String, dynamic> json) =>
      BtcTransactionModel(
        hash: json["hash"],
        time: json["time"],
        size: json["size"],
        blockIndex: json["block_index"],
        height: json["height"],
        receivedTime: json["received_time"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "hash": hash,
        "time": time,
        "size": size,
        "block_index": blockIndex,
        "height": height,
        "received_time": receivedTime,
      };
}
