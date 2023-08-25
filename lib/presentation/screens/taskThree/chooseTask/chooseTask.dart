// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/screens/taskThree/weatherApp/displayScreen/weatherAppScreenDisplay.dart';

import '../../../../utils/colors/appColors.dart';
import '../../../sharedWidgets/navigating/myNavigator.dart';
import '../../../sharedWidgets/spaces/customSizedBox.dart';
import '../../../sharedWidgets/widgets/customButton.dart';
import '../listDataApp/listDataApp.dart';

class ChooseTask extends StatelessWidget {
  const ChooseTask({super.key});

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
                onpress: () => MyNavigetor().push(const ListDataApp(), context),
                widht: double.infinity,
                color: AppColors.buttonBlue,
                title: "List Data"),
            customSizedBox(0.0, 20.h),
            CustomButton(
                onpress: () =>
                    MyNavigetor().push(const WeatherDisplayScreen(), context),
                widht: double.infinity,
                color: AppColors.buttonBlue,
                title: "Weather App"),
            customSizedBox(0.0, 10.h),
          ],
        ),
      ),
    );
  }
}
