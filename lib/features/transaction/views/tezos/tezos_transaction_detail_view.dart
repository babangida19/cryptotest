import 'package:crypto_test/core/theme/app_color.dart';
import 'package:crypto_test/core/theme/app_textstyle.dart';
import 'package:crypto_test/core/widgets/custom_appbar.dart';
import 'package:crypto_test/core/widgets/spacing.dart';
import 'package:crypto_test/features/transaction/views/btc/btc_transaction_detail_view.dart';
import 'package:crypto_test/gen/assets.gen.dart';
import 'package:crypto_test/model/tezos_transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TezosTransactionDetailView extends ConsumerWidget {
  final TezosTransaction tezosTransaction;
  const TezosTransactionDetailView({super.key, required this.tezosTransaction});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(title: "Transaction details"),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              Column(
                children: [
                  TransactionDetailRow(
                      title: "Hash", subTitle: tezosTransaction.hash),
                  TransactionDetailRow(
                      title: "Time",
                      subTitle: tezosTransaction.timestamp.toString()),
                  TransactionDetailRow(
                      title: "Level",
                      subTitle: tezosTransaction.level.toString()),
                  TransactionDetailRow(
                      title: "Reward",
                      subTitle: tezosTransaction.reward.toString()),
                  TransactionDetailRow(
                      title: "Bonus",
                      subTitle: tezosTransaction.bonus.toString()),
                  TransactionDetailRow(
                      title: "Fees",
                      subTitle: tezosTransaction.fees.toString()),
                ],
              ),
              const YMargin(58),
              Row(
                children: [
                  Assets.icons.iconExternalLink.svg(),
                  const XMargin(19),
                  Text(
                    "View on blockchain explorer",
                    style: AppTextstyle.h2(
                        color: AppColor.black.withOpacity(0.95)),
                  ),
                  const Spacer(),
                  Assets.icons.iconVectorRight.svg()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
