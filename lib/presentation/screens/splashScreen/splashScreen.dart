// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/screens/choosingTaskScreen/choseingTaskScreen.dart';

import '../../../utils/strings/images.dart';
import '../../sharedWidgets/navigating/myNavigator.dart';
import '../../sharedWidgets/widgets/AppImageWidgets.dart';

class MySplash extends StatefulWidget {
  const MySplash({Key? key}) : super(key: key);

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      MyNavigetor()
          .pushReplacementAndRemoveUtils(const ChooseingTaskScreen(), context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppImages()
              .assetImageWithWidthAndHeight(AppImagesPath.appLogo, 100, 100),
        ],
      ),
    ));
  }
}
