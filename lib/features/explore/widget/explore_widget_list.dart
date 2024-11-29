import 'package:crypto_test/core/theme/app_color.dart';
import 'package:crypto_test/core/theme/app_textstyle.dart';
import 'package:crypto_test/core/widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExploreWidgetList extends StatelessWidget {
  final List<Widget> children;
  final String title;
  final bool isViewMore;
  const ExploreWidgetList({
    required this.children,
    required this.title,
    this.isViewMore = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: AppColor.grey10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(title,
                style:
                    AppTextstyle.h3(color: AppColor.black.withOpacity(0.95))),
            Text(isViewMore ? "View more" : "See all",
                style: AppTextstyle.size14W600(color: AppColor.primary70)),
          ]),
          const YMargin(16.5),
          ...children,
        ],
      ),
    );
  }
}
