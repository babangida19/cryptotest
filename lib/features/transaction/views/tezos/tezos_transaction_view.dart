import 'package:crypto_test/core/provider.dart';
import 'package:crypto_test/core/theme/app_color.dart';
import 'package:crypto_test/core/theme/app_textstyle.dart';
import 'package:crypto_test/core/widgets/custom_appbar.dart';
import 'package:crypto_test/core/widgets/spacing.dart';
import 'package:crypto_test/features/transaction/views/tezos/tezos_transaction_detail_view.dart';
import 'package:crypto_test/features/transaction/views/transaction_view.dart';
import 'package:crypto_test/model/tezos_transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TezosTransactionView extends ConsumerWidget {
  const TezosTransactionView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tezosTransactions = ref.watch(tezosTransactionProvider);
    return SafeArea(
      child: Scaffold(
          appBar: const CustomAppBar(title: "Tezos"),
          body: TransactionView<List<TezosTransaction>>(
            transaction: tezosTransactions,
            loadingMessage: "Fetching your {Tezos} transactions",
            onSuccess: (tezosTransactions) => ListView.builder(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
              itemCount: tezosTransactions.length,
              itemBuilder: (BuildContext context, int index) {
                final transaction = tezosTransactions[index];
                return TezosTransactionDetailCard(
                    tezosTransaction: transaction);
              },
            ),
          )),
    );
  }
}

class TezosTransactionDetailCard extends StatelessWidget {
  final TezosTransaction tezosTransaction;
  const TezosTransactionDetailCard({
    super.key,
    required this.tezosTransaction,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                TezosTransactionDetailView(tezosTransaction: tezosTransaction),
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
                    tezosTransaction.hash,
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
            Text(tezosTransaction.timestamp.toString(),
                style: AppTextstyle.size14W400(
                    color: AppColor.black.withOpacity(0.56)))
          ],
        ),
      ),
    );
  }
}
