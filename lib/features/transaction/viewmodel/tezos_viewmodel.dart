import 'dart:async';

import 'package:crypto_test/model/tezos_transaction.dart';
import 'package:crypto_test/core/repository/transaction_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TezosTransactionNotifier extends AsyncNotifier<List<TezosTransaction>> {
  final TransactionRepo transactionRepo;

  TezosTransactionNotifier({required this.transactionRepo});

  @override
  Future<List<TezosTransaction>> build() async {
    return _fetchTezosTransactions();
  }

  Future<List<TezosTransaction>> _fetchTezosTransactions() async {
    try {
      return await transactionRepo.getTezosTransaction();
    } catch (e) {
      throw Exception("Failed to fetch Tezos transactions: $e");
    }
  }
}
