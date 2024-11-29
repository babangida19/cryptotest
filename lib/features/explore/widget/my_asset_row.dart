import 'package:crypto_test/model/coin_model.dart';
import 'package:crypto_test/core/theme/app_color.dart';
import 'package:crypto_test/core/theme/app_textstyle.dart';

import 'package:crypto_test/core/widgets/asset_percentage_text.dart';
import 'package:crypto_test/core/widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

class MyAssetRow extends StatelessWidget {
  final CoinModel coinModel;
  const MyAssetRow({
    super.key,
    required this.coinModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (coinModel.navigatorView != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => coinModel.navigatorView!),
          );
        }
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 8.h),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            coinModel.coinIcon,
            const XMargin(16),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(coinModel.coinTitle, style: AppTextstyle.h2()),
                        Text(
                          coinModel.coinSubtitle,
                          style:
                              AppTextstyle.size14W400(color: AppColor.grey20),
                        ),
                      ]),
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    Text(
                        "₦${(coinModel.coinValue ?? 0).toCurrencyString(mantissaLength: 0)}",
                        style: AppTextstyle.h2()),
                    AssetPercentageText(value: coinModel.coinPercent),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
