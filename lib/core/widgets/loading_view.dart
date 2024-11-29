import 'package:crypto_test/core/theme/app_color.dart';
import 'package:crypto_test/core/theme/app_textstyle.dart';
import 'package:crypto_test/core/widgets/spacing.dart';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingView extends StatelessWidget {
  final String loadingMessage;
  const LoadingView({super.key, required this.loadingMessage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SpinKitRing(
              color: AppColor.primary70,
              size: 80.0,
            ),
            const YMargin(41),
            Text(
              loadingMessage,
              style: AppTextstyle.size14W600(
                  fontWeight: FontWeight.w800, color: AppColor.black),
            ),
          ],
        ),
      ),
    );
  }
}
