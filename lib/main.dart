import 'package:crypto_test/core/theme/app_color.dart';
import 'package:crypto_test/core/theme/app_textstyle.dart';
import 'package:crypto_test/features/authentication/login_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/locator.dart';

void main() async {
  await locatorSetUp();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                appBarTheme: const AppBarTheme(
                    elevation: 0,
                    centerTitle: true,
                    scrolledUnderElevation: 0,
                    backgroundColor: AppColor.white,
                    foregroundColor: AppColor.white),
                scaffoldBackgroundColor: AppColor.white,
                navigationBarTheme: NavigationBarThemeData(
                  backgroundColor: AppColor.white,
                  indicatorColor: AppColor.white,
                  labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
                    (Set<WidgetState> states) {
                      if (states.contains(WidgetState.selected)) {
                        return AppTextstyle.size12W400();
                      }
                      return AppTextstyle.size12W400(
                          color: AppColor.black.withOpacity(0.32));
                    },
                  ),
                ),
                useMaterial3: true,
                textTheme: GoogleFonts.interTextTheme(),
              ),
              debugShowCheckedModeBanner: false,
              home: const LoginView());
        });
  }
}
