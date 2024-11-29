import 'package:crypto_test/core/theme/app_color.dart';
import 'package:crypto_test/core/theme/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

class HeaderCurrencyText extends StatelessWidget {
  final double amount;
  final bool obscure;
  const HeaderCurrencyText(
      {super.key, required this.amount, required this.obscure});

  @override
  Widget build(BuildContext context) {
    final parts = amount.toStringAsFixed(2).split('.');
    final wholePart = parts[0];
    final decimalPart = parts[1];
    if (obscure) {
      return Text(
        "*****",
        style: AppTextstyle.roobertoH1(
          color: AppColor.black.withOpacity(0.95),
        ),
      );
    }
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "₦",
            style: AppTextstyle.size18W700(
              color: AppColor.black.withOpacity(0.95),
            ),
          ),
          TextSpan(
            text: wholePart.toCurrencyString(mantissaLength: 0),
            style: AppTextstyle.roobertoH1(
              color: AppColor.black.withOpacity(0.95),
            ),
          ),
          TextSpan(
            text: ".$decimalPart",
            style: AppTextstyle.size18W700(
              color: AppColor.black.withOpacity(0.95),
            ),
          ),
        ],
      ),
    );
  }
}
