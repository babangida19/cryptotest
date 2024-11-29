import 'package:crypto_test/features/transaction/views/btc/btc_transaction_view.dart';
import 'package:crypto_test/features/transaction/views/tezos/tezos_transaction_view.dart';
import 'package:crypto_test/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class CoinModel {
  final String coinTitle;
  final String coinSubtitle;
  final double? coinValue;
  final Widget coinIcon;
  final double coinPercent;
  final Widget? navigatorView;

  CoinModel(
      {required this.coinTitle,
      required this.coinSubtitle,
      required this.coinPercent,
      this.coinValue,
      this.navigatorView,
      required this.coinIcon});
}

List<CoinModel> myAssetDemoList = [
  CoinModel(
      coinTitle: "Bitcoin",
      coinSubtitle: "BTC",
      coinValue: 24500,
      coinPercent: 1.76,
      coinIcon: Assets.icons.iconBtc.svg(),
      navigatorView: const BtcTransactionView()),
  CoinModel(
    coinTitle: "Ethereum",
    coinSubtitle: "ETh",
    coinValue: 4500,
    coinPercent: -6.4,
    coinIcon: Assets.icons.iconEth.svg(),
  ),
  CoinModel(
      coinTitle: "Tezos",
      coinSubtitle: "XTZ",
      coinValue: 4500,
      coinPercent: 9.06,
      navigatorView: const TezosTransactionView(),
      coinIcon: Assets.images.imageTezos.image()),
];

List<CoinModel> topMoverDemoList = [
  CoinModel(
      coinTitle: "Ethereum",
      coinSubtitle: "ETh",
      coinValue: 4500,
      coinPercent: -1.6,
      coinIcon: Assets.icons.iconEth.svg()),
  CoinModel(
      coinTitle: "Bitcoin",
      coinSubtitle: "BTC",
      coinValue: 24500,
      coinPercent: 1.76,
      coinIcon: Assets.icons.iconBtc.svg()),
  CoinModel(
      coinTitle: "Solana",
      coinSubtitle: "XTZ",
      coinPercent: 1.76,
      coinIcon: Assets.icons.iconSolana.svg()),
];
