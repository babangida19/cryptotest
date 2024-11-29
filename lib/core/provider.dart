import 'package:crypto_test/core/locator.dart';
import 'package:crypto_test/core/repository/transaction_repo.dart';
import 'package:crypto_test/features/transaction/viewmodel/btc_hash_viewmodel.dart';
import 'package:crypto_test/features/transaction/viewmodel/btc_transaction_viewmodel.dart';
import 'package:crypto_test/features/transaction/viewmodel/tezos_viewmodel.dart';
import 'package:crypto_test/model/btc_hash_model.dart';
import 'package:crypto_test/model/btc_transaction.dart';
import 'package:crypto_test/model/tezos_transaction.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final btcHashViewModelProvider =
    AsyncNotifierProvider<BtcHashViewModel, BtcHashModel>(
  () => BtcHashViewModel(transactionRepo: serviceLocator<TransactionRepo>()),
);

final tezosTransactionProvider =
    AsyncNotifierProvider<TezosTransactionNotifier, List<TezosTransaction>>(
        () => TezosTransactionNotifier(
            transactionRepo: serviceLocator<TransactionRepo>()));

final btcTransactionProvider = AsyncNotifierProvider.family<
    BtcTransactionViewModel, BtcTransactionModel, String>(
  () => BtcTransactionViewModel(
      transactionRepo: serviceLocator<TransactionRepo>()),
);
