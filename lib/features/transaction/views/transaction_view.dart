import 'package:crypto_test/core/theme/app_textstyle.dart';
import 'package:crypto_test/core/widgets/loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TransactionView<T> extends StatelessWidget {
  final AsyncValue<T> transaction;
  final Function(T) onSuccess;
  final String loadingMessage;
  const TransactionView(
      {super.key,
      required this.transaction,
      required this.onSuccess,
      required this.loadingMessage});

  @override
  Widget build(BuildContext context) {
    return transaction.when(
      data: (data) => onSuccess(data),
      loading: () {
        return LoadingView(loadingMessage: loadingMessage);
      },
      error: (error, stackTrace) {
        return Center(
          child: Text(
            "Error: $error",
            style: AppTextstyle.h2(color: Colors.red),
          ),
        );
      },
    );
  }
}
