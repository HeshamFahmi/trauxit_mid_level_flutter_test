// ignore_for_file: file_names, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/screens/taskOne/homeOne/homeOne.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/sharedWidgets/attention/customToast.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/sharedWidgets/navigating/myNavigator.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/sharedWidgets/spaces/customSizedBox.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/sharedWidgets/spaces/widthandheight.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/sharedWidgets/widgets/AppTexts.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/sharedWidgets/widgets/customButton.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/sharedWidgets/widgets/customTextField.dart';
import 'package:trauxit_mid_level_flutter_test/utils/colors/appColors.dart';

class LoginOne extends StatefulWidget {
  const LoginOne({super.key});

  @override
  State<LoginOne> createState() => _LoginOneState();
}

class _LoginOneState extends State<LoginOne> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool loginButtonLoad = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customSizedBox(0.0, getheight(context) * 0.1),
              AppTexts().customAppText(
                  title: "Welcome in Trauxit Company",
                  size: 20.sp,
                  color: AppColors.appColorBold),
              customSizedBox(0.0, 50.h),
              AppTexts().customAppNormalText(
                  title: "Email Address",
                  size: 15.sp,
                  color: AppColors.appColor),
              CustomTextField(
                  textEditingController: emailController,
                  keyboardType: TextInputType.name,
                  isPassword: false),
              customSizedBox(0.0, 10.h),
              AppTexts().customAppNormalText(
                  title: "Password", size: 15.sp, color: AppColors.appColor),
              CustomTextField(
                  textEditingController: passwordController,
                  keyboardType: TextInputType.name,
                  isPassword: true),
              customSizedBox(0.0, 20.h),
              Align(
                alignment: Alignment.centerRight,
                child: AppTexts().customAppNormalText(
                    title: "Forget Your Password ?",
                    color: AppColors.greyColor),
              ),
              customSizedBox(0.0, 20.h),
              loginButtonLoad
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : CustomButton(
                      onpress: () async {
                        setState(() {
                          loginButtonLoad = true;
                        });
                        if (emailController.text.isEmpty) {
                          setState(() {
                            loginButtonLoad = false;
                          });
                          showFailedToast("Email Filed Required");
                          return;
                        }
                        if (passwordController.text.isEmpty) {
                          setState(() {
                            loginButtonLoad = false;
                          });
                          showFailedToast("Password Field Required");
                          return;
                        }
                        await Future.delayed(const Duration(seconds: 3));
                        setState(() {
                          loginButtonLoad = false;
                        });

                        MyNavigetor().pushReplacement(const HomeOne(), context);
                      },
                      widht: double.infinity,
                      color: AppColors.buttonBlue,
                      title: "Login"),
              customSizedBox(0.0, 20.h),
              Center(
                child: AppTexts().customAppText(
                    title: "Don't have an account ?",
                    size: 15.sp,
                    color: AppColors.appColor),
              ),
              customSizedBox(0.0, 10.h),
              const CustomButton(
                  widht: double.infinity,
                  color: AppColors.buttonGreen,
                  title: "Register")
            ],
          ),
        ),
      ),
    );
  }
}
