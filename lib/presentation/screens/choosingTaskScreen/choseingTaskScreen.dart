// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/screens/taskThree/chooseTask/chooseTask.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/screens/taskTwo/counterScreen/counterScreen.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/sharedWidgets/navigating/myNavigator.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/sharedWidgets/spaces/customSizedBox.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/sharedWidgets/widgets/customButton.dart';
import 'package:trauxit_mid_level_flutter_test/utils/colors/appColors.dart';

import '../taskOne/loginOne/LoginOne.dart';

class ChooseingTaskScreen extends StatelessWidget {
  const ChooseingTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
                onpress: () => MyNavigetor().push(const LoginOne(), context),
                widht: double.infinity,
                color: AppColors.buttonBlue,
                title: "Task One"),
            customSizedBox(0.0, 20.h),
            CustomButton(
                onpress: () => MyNavigetor().push(const CounterPage(), context),
                widht: double.infinity,
                color: AppColors.buttonBlue,
                title: "Task Two"),
            customSizedBox(0.0, 20.h),
            CustomButton(
                onpress: () => MyNavigetor().push(const ChooseTask(), context),
                widht: double.infinity,
                color: AppColors.buttonBlue,
                title: "Task Three"),
            customSizedBox(0.0, 20.h),
          ],
        ),
      ),
    );
  }
}
