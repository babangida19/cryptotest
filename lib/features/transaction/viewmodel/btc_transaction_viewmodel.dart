import 'package:crypto_test/core/repository/transaction_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:crypto_test/model/btc_transaction.dart';

class BtcTransactionViewModel
    extends FamilyAsyncNotifier<BtcTransactionModel, String> {
  final TransactionRepo transactionRepo;

  BtcTransactionViewModel({required this.transactionRepo});

  @override
  Future<BtcTransactionModel> build(String arg) async {
    return await transactionRepo.getBtcTransaction(hashId: arg);
  }
}
