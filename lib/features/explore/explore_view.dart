import 'package:crypto_test/gen/assets.gen.dart';
import 'package:crypto_test/model/coin_model.dart';
import 'package:crypto_test/model/news_model.dart';
import 'package:crypto_test/core/theme/app_color.dart';
import 'package:crypto_test/core/theme/app_textstyle.dart';
import 'package:crypto_test/features/explore/widget/explore_widget_list.dart';
import 'package:crypto_test/features/explore/widget/my_asset_row.dart';
import 'package:crypto_test/features/explore/widget/news_card.dart';
import 'package:crypto_test/features/explore/widget/top_mover_card.dart';
import 'package:crypto_test/core/widgets/header_currency_text.dart';
import 'package:crypto_test/core/widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExploreView extends HookWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    var obsecure = useState(false);
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: AppBar(
              title: Text("Explore", style: AppTextstyle.size18W700()),
              leading: Assets.icons.iconScan.svg(),
              leadingWidth: 22,
              elevation: 0,
              actions: [
                Assets.icons.iconSearch.svg(),
                const XMargin(16),
                Assets.icons.iconDell.svg()
              ],
              centerTitle: true,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "My balance",
                          style: AppTextstyle.roobertoBody3(
                              color: AppColor.black.withOpacity(0.6)),
                        ),
                        const XMargin(4),
                        GestureDetector(
                            onTap: () {
                              obsecure.value = !obsecure.value;
                            },
                            child: Icon(
                                obsecure.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: AppColor.black.withOpacity(0.6)))
                      ],
                    ),
                    HeaderCurrencyText(amount: 5000, obscure: obsecure.value),
                  ],
                ),
              ),
              ExploreWidgetList(
                  title: "My assets",
                  children: myAssetDemoList
                      .map((coinModel) => MyAssetRow(coinModel: coinModel))
                      .toList()),
              ExploreWidgetList(title: "Today’s Top Movers", children: [
                Container(
                  constraints: BoxConstraints(maxHeight: 150.h),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: topMoverDemoList.length,
                    itemBuilder: (BuildContext context, int index) {
                      final CoinModel coinModel = topMoverDemoList[index];
                      return TopMoverCard(coinModel: coinModel);
                    },
                  ),
                ),
              ]),
              ExploreWidgetList(
                  title: "Trending news",
                  isViewMore: true,
                  children: newsDemoList
                      .map((newsModel) => NewsCard(newsModel: newsModel))
                      .toList()),
            ],
          ),
        ),
      ),
    );
  }
}
