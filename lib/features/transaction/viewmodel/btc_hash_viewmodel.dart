import 'package:crypto_test/core/repository/transaction_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:crypto_test/model/btc_hash_model.dart';

class BtcHashViewModel extends AsyncNotifier<BtcHashModel> {
  final TransactionRepo transactionRepo;

  BtcHashViewModel({required this.transactionRepo});
  @override
  Future<BtcHashModel> build() async {
    return await transactionRepo.getBtcHashModel();
  }
}
