import 'package:crypto_test/gen/assets.gen.dart';
import 'package:crypto_test/core/theme/app_color.dart';
import 'package:crypto_test/core/theme/app_textstyle.dart';
import 'package:crypto_test/core/widgets/spacing.dart';
import 'package:flutter/material.dart';

class AssetPercentageText extends StatelessWidget {
  final double value;

  const AssetPercentageText({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    final displayValue = value.abs();

    return Row(
      children: [
        value < 0
            ? Assets.icons.iconArrowDownLeft.svg()
            : Assets.icons.iconArrowUpRight.svg(),
        const XMargin(4),
        Text(
          "$displayValue%",
          style: AppTextstyle.size14W400(
            fontWeight: FontWeight.w500,
            color: value < 0 ? AppColor.error70 : AppColor.primary70,
          ),
        ),
      ],
    );
  }
}
