// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/colors/appColors.dart';
import '../../../utils/strings/images.dart';
import 'AppImageWidgets.dart';
import 'AppTexts.dart';

customeAppBar(String title, {PreferredSizeWidget? bottomTabs}) {
  return AppBar(
    elevation: 0,
    backgroundColor: AppColors.appColor,
    centerTitle: true,
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        child: AppImages()
            .assetImageWithWidthAndHeight(AppImagesPath.appLogo, 30, 30),
        borderRadius: BorderRadius.circular(50.0),
      ),
    ),
    title: AppTexts()
        .customAppText(title: title, size: 15.sp, color: AppColors.whiteColor),
    bottom: bottomTabs ??
        PreferredSize(preferredSize: const Size(0.1, 0.1), child: Container()),
  );
}
