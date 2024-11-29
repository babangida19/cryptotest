import 'package:crypto_test/model/coin_model.dart';
import 'package:crypto_test/core/theme/app_color.dart';
import 'package:crypto_test/core/theme/app_textstyle.dart';
import 'package:crypto_test/core/widgets/asset_percentage_text.dart';
import 'package:crypto_test/core/widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopMoverCard extends StatelessWidget {
  final CoinModel coinModel;
  const TopMoverCard({
    super.key,
    required this.coinModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 16.h, left: 16.w, bottom: 16.h, right: 50.w),
      margin: EdgeInsets.only(right: 8.w),
      constraints: BoxConstraints(minWidth: 150.w, maxHeight: 127.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColor.black.withOpacity(0.12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          coinModel.coinIcon,
          const YMargin(8),
          Text(coinModel.coinTitle, style: AppTextstyle.h2()),
          const YMargin(8),
          AssetPercentageText(value: coinModel.coinPercent),
        ],
      ),
    );
  }
}
