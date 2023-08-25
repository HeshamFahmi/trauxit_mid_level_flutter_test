// ignore_for_file: file_names, depend_on_referenced_packages
import 'package:flutter/widgets.dart';
import 'package:trauxit_mid_level_flutter_test/utils/strings/appStrings.dart';

import '../../../utils/colors/appColors.dart';

class AppTexts {
  customAppText({
    required String title,
    double? size,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
  }) {
    return Text(
      title,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
          color: color ?? AppColors.textColor,
          fontSize: size ?? 12,
          overflow: textOverflow ?? TextOverflow.visible,
          fontWeight: FontWeight.bold,
          fontFamily: AppStringsFonts.appFontFamilyBold),
    );
  }

  customAppNormalText({
    required String title,
    double? size,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    TextDecoration? textDecoration,
  }) {
    return Text(
      title,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
          decoration: textDecoration ?? TextDecoration.none,
          color: color ?? AppColors.textColor,
          fontSize: size ?? 12,
          fontWeight: FontWeight.normal,
          height: 1.2,
          overflow: textOverflow ?? TextOverflow.visible,
          fontFamily: AppStringsFonts.appFontFamilyRegular),
    );
  }
}
