import 'package:crypto_test/core/theme/app_color.dart';
import 'package:crypto_test/core/theme/app_textstyle.dart';
import 'package:crypto_test/core/validator.dart';
import 'package:crypto_test/features/main_view.dart';
import 'package:crypto_test/core/widgets/app_button.dart';
import 'package:crypto_test/core/widgets/app_textfield.dart';
import 'package:crypto_test/core/widgets/custom_appbar.dart';
import 'package:crypto_test/core/widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends HookWidget with Validators {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    var obscure = useState(true);
    var emailController = useTextEditingController();
    var passwordController = useTextEditingController();
    var isLoading = useState(false);
    final loginFormKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: const CustomAppBar(title: ""),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          key: loginFormKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Log in to your account",
                  style: AppTextstyle.h1(),
                ),
                const YMargin(8),
                Text(
                    "Welcome back! Please enter your registered email address to continue",
                    style: AppTextstyle.h2(
                        color: AppColor.black.withOpacity(0.6))),
                const YMargin(24),
                AppTextField(
                    controller: emailController,
                    hintText: "Enter your email",
                    fieldName: "Email address",
                    validator: emailValidator(),
                    textFieldType: TextFieldType.email),
                AppTextField(
                  controller: passwordController,
                  hintText: "Enter password",
                  fieldName: "Password",
                  textFieldType: TextFieldType.password,
                  obscureText: obscure.value,
                  validator: passwordValidator(),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      obscure.value = !obscure.value;
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 12.w),
                      child: Text(
                        "SHOW",
                        style: AppTextstyle.size12W400(color: AppColor.grey40),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                AppButton(
                    isLoading: isLoading.value,
                    onTap: () async {
                      if (loginFormKey.currentState!.validate()) {
                        isLoading.value = true;
                        await Future.delayed(const Duration(seconds: 2));
                        isLoading.value = false;

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainView()),
                        );
                      }
                    },
                    title: "Continue"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
