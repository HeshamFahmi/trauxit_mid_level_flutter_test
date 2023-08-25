// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/screens/taskTwo/counterProvider/counterProvider.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/sharedWidgets/widgets/AppTexts.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/sharedWidgets/widgets/customeAppBar.dart';
import 'package:trauxit_mid_level_flutter_test/utils/colors/appColors.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);

    final count = counter.count;
    return Scaffold(
      appBar: customeAppBar("Counter With Provider Mid-level Flutter Task"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: AppTexts().customAppText(
                title: "Counter :- $count",
                size: 15.sp,
                color: AppColors.appColor),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () => counter.increment(),
                    icon: const Icon(
                      Icons.add_box_outlined,
                      color: AppColors.appColor,
                    )),
                IconButton(
                    onPressed: () => counter.decrement(),
                    icon: const Icon(
                      Icons.minimize,
                      color: AppColors.appColor,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
