// To parse this JSON data, do
//
//     final tezosTransaction = tezosTransactionFromJson(jsonString);

import 'dart:convert';

List<TezosTransaction> tezosTransactionFromJson(String str) =>
    List<TezosTransaction>.from(
        json.decode(str).map((x) => TezosTransaction.fromJson(x)));

class TezosTransaction {
  final int level;
  final String hash;
  final DateTime timestamp;

  final int bonusDelegated;
  final int bonusStakedOwn;
  final int bonusStakedEdge;
  final int bonusStakedShared;
  final int fees;
  final int bonus;

  final int reward;

  TezosTransaction({
    required this.level,
    required this.hash,
    required this.timestamp,
    required this.bonusDelegated,
    required this.bonusStakedOwn,
    required this.bonusStakedEdge,
    required this.bonusStakedShared,
    required this.fees,
    required this.reward,
    required this.bonus,
  });

  factory TezosTransaction.fromJson(Map<String, dynamic> json) =>
      TezosTransaction(
        level: json["level"],
        hash: json["hash"],
        timestamp: DateTime.parse(json["timestamp"]),
        bonusDelegated: json["bonusDelegated"],
        bonusStakedOwn: json["bonusStakedOwn"],
        bonusStakedEdge: json["bonusStakedEdge"],
        bonusStakedShared: json["bonusStakedShared"],
        fees: json["fees"],
        reward: json["reward"],
        bonus: json["bonus"],
      );
}
