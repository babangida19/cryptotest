import 'package:crypto_test/core/provider.dart';
import 'package:crypto_test/core/widgets/custom_appbar.dart';
import 'package:crypto_test/features/transaction/views/btc/btc_transaction_detail_view.dart';
import 'package:crypto_test/features/transaction/views/transaction_view.dart';
import 'package:crypto_test/model/btc_hash_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:crypto_test/core/theme/app_color.dart';
import 'package:crypto_test/core/theme/app_textstyle.dart';
import 'package:crypto_test/core/widgets/spacing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BtcTransactionView extends ConsumerWidget {
  const BtcTransactionView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final btcHashNotifier = ref.watch(btcHashViewModelProvider);
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(title: "BTC transactions"),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: TransactionView<BtcHashModel>(
            transaction: btcHashNotifier,
            loadingMessage: "Fetching your {BTC} transactions",
            onSuccess: (btcHashModel) =>
                BtcTransactionDetailCard(btcHashModel: btcHashModel),
          ),
        ),
      ),
    );
  }
}

class BtcTransactionDetailCard extends StatelessWidget {
  final BtcHashModel btcHashModel;
  const BtcTransactionDetailCard({
    super.key,
    required this.btcHashModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                BtcTransactionDetailView(hashId: btcHashModel.hash),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: AppColor.grey))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    btcHashModel.hash,
                    style: AppTextstyle.h2(
                        color: AppColor.black.withOpacity(0.95)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const XMargin(16),
                Icon(Icons.chevron_right,
                    color: AppColor.black.withOpacity(0.32))
              ],
            ),
            const YMargin(8),
            Text(btcHashModel.time.toString(),
                // "2019-08-24 • 15:43",
                style: AppTextstyle.size14W400(
                    color: AppColor.black.withOpacity(0.56)))
          ],
        ),
      ),
    );
  }
}
