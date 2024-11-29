import 'package:crypto_test/core/provider.dart';
import 'package:crypto_test/gen/assets.gen.dart';
import 'package:crypto_test/core/theme/app_color.dart';
import 'package:crypto_test/core/theme/app_textstyle.dart';
import 'package:crypto_test/core/widgets/custom_appbar.dart';
import 'package:crypto_test/core/widgets/loading_view.dart';
import 'package:crypto_test/core/widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BtcTransactionDetailView extends ConsumerWidget {
  final String hashId;

  const BtcTransactionDetailView({super.key, required this.hashId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final btcTransactionAsyncValue = ref.watch(btcTransactionProvider(hashId));

    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(title: "Transaction details"),
        body: btcTransactionAsyncValue.when(
          loading: () => const LoadingView(
              loadingMessage: "Fetching your {BTC} transactions"),
          error: (error, stack) =>
              Center(child: Text("Error: ${error.toString()}")),
          data: (btcTransactionModel) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                Column(
                  children: [
                    TransactionDetailRow(
                        title: "Hash", subTitle: btcTransactionModel.hash),
                    TransactionDetailRow(
                        title: "Time",
                        subTitle: btcTransactionModel.time.toString()),
                    TransactionDetailRow(
                        title: "Size",
                        subTitle: btcTransactionModel.size.toString()),
                    TransactionDetailRow(
                        title: "Block index",
                        subTitle: btcTransactionModel.blockIndex.toString()),
                    TransactionDetailRow(
                        title: "Height",
                        subTitle: btcTransactionModel.height.toString()),
                    TransactionDetailRow(
                        title: "Received time",
                        subTitle: btcTransactionModel.receivedTime.toString()),
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
      ),
    );
  }
}

class TransactionDetailRow extends StatelessWidget {
  final String title;
  final String subTitle;
  const TransactionDetailRow({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColor.grey))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextstyle.h2(color: AppColor.black.withOpacity(0.6)),
          ),
          const XMargin(16),
          Flexible(
            child: Text(
              subTitle,
              textAlign: TextAlign.right,
              style: AppTextstyle.h2(color: AppColor.black.withOpacity(0.95)),
            ),
          ),
        ],
      ),
    );
  }
}
