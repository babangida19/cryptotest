import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TransactionView<T> extends StatelessWidget {
  final AsyncValue<T> transaction;
  final Function(T) onSuccess;
  const TransactionView(
      {super.key, required this.transaction, required this.onSuccess});

  @override
  Widget build(BuildContext context) {
    return transaction.when(
      data: (data) => onSuccess(data),
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      error: (error, stackTrace) {
        return Center(
          child: Text(
            "Error: $error",
            style: const TextStyle(color: Colors.red, fontSize: 16),
          ),
        );
      },
    );
  }
}
