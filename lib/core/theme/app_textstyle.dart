import 'package:crypto_test/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextstyle {
  static TextStyle roobertoH1(
      {double fontSize = 32,
      FontWeight fontWeight = FontWeight.w700,
      Color color = AppColor.black}) {
    return TextStyle(
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      color: color,
      fontFamily: 'Rooberto',
    );
  }

  static TextStyle h1(
      {double fontSize = 20,
      FontWeight fontWeight = FontWeight.w600,
      Color color = AppColor.black}) {
    return TextStyle(
        fontSize: fontSize.sp, fontWeight: fontWeight, color: color);
  }

  static TextStyle size18W700(
      {double fontSize = 18,
      FontWeight fontWeight = FontWeight.w700,
      Color color = AppColor.black}) {
    return GoogleFonts.roboto(
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle roobertoBody3(
      {double fontSize = 14,
      FontWeight fontWeight = FontWeight.w400,
      Color color = AppColor.black}) {
    return TextStyle(
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      color: color,
      fontFamily: 'Rooberto',
    );
  }

  static TextStyle h2(
      {double fontSize = 16,
      FontWeight fontWeight = FontWeight.w400,
      Color color = AppColor.black}) {
    return TextStyle(
        fontSize: fontSize.sp, fontWeight: fontWeight, color: color);
  }

  static TextStyle h3(
      {double fontSize = 16,
      FontWeight fontWeight = FontWeight.w600,
      Color color = AppColor.white}) {
    return TextStyle(
        fontSize: fontSize.sp, fontWeight: fontWeight, color: color);
  }

  static TextStyle size14W600(
      {double fontSize = 14,
      FontWeight fontWeight = FontWeight.w600,
      Color color = AppColor.white}) {
    return TextStyle(
        fontSize: fontSize.sp, fontWeight: fontWeight, color: color);
  }

  static TextStyle size14W400(
      {double fontSize = 14,
      FontWeight fontWeight = FontWeight.w400,
      Color color = AppColor.black}) {
    return TextStyle(
        fontSize: fontSize.sp, fontWeight: fontWeight, color: color);
  }

  static TextStyle size12W400(
      {double fontSize = 12,
      FontWeight fontWeight = FontWeight.w400,
      Color color = AppColor.black}) {
    return TextStyle(
        fontSize: fontSize.sp, fontWeight: fontWeight, color: color);
  }
}
