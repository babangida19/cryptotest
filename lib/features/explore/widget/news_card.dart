import 'package:crypto_test/model/news_model.dart';
import 'package:crypto_test/core/theme/app_color.dart';
import 'package:crypto_test/core/theme/app_textstyle.dart';
import 'package:crypto_test/core/widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsCard extends StatelessWidget {
  final NewsModel newsModel;
  const NewsCard({super.key, required this.newsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColor.grey30),
        ),
      ),
      child: newsModel.isFeatured
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6.r),
                  child: Image.asset(
                    newsModel.image,
                    width: MediaQuery.of(context).size.width,
                    height: 166.h,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  newsModel.headline,
                  style: AppTextstyle.size14W400(),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  "${newsModel.category} • ${newsModel.time}",
                  style: AppTextstyle.size14W400(color: AppColor.grey20),
                ),
              ],
            )
          : Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6.r),
                  child: Image.asset(
                    newsModel.image,
                    width: 55.h,
                    height: 73.h,
                    fit: BoxFit.cover,
                  ),
                ),
                const XMargin(14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        newsModel.headline,
                        style: AppTextstyle.size14W400(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "${newsModel.category} • ${newsModel.time}",
                        style: AppTextstyle.size14W400(color: AppColor.grey20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
