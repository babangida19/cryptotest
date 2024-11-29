import 'package:crypto_test/gen/assets.gen.dart';
import 'package:crypto_test/core/theme/app_color.dart';
import 'package:crypto_test/core/theme/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;
  final EdgeInsetsGeometry padding;

  const CustomAppBar({
    super.key,
    required this.title,
    this.height = kToolbarHeight,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80),
      child: Padding(
        padding: padding,
        child: AppBar(
          title: Text(title, style: AppTextstyle.h3(color: AppColor.black)),
          leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Assets.icons.iconVectorLeft.svg()),
          leadingWidth: 16.w,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
