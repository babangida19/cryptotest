import 'package:crypto_test/core/theme/app_color.dart';
import 'package:crypto_test/core/theme/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AppButton extends StatelessWidget {
  final Function() onTap;
  final bool isLoading;
  final String title;
  const AppButton(
      {super.key,
      required this.onTap,
      this.isLoading = false,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        decoration: BoxDecoration(
          color: AppColor.primary70,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(
          child: isLoading
              ? const SpinKitRing(
                  color: AppColor.white,
                  size: 10.0,
                )
              : Text(title, style: AppTextstyle.h3()),
        ),
      ),
    );
  }
}
