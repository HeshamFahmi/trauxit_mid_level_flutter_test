// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AppColors {
  static const Color appColor = Color(0xff3376BD);
  static Color appColorBold = Colors.blue[900]!;
  static const Color appGrey = Color(0xffDFE0F3);
  static const Color textColor = Color(0xff000000);
  static const Color whiteColor = Colors.white;
  static const Color greyColor = Color(0xff695C5C);

  static LinearGradient buttonBlue = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Colors.blue,
      Colors.blue[800]!,
    ],
  );
  static const LinearGradient buttonGreen = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xff0BB02F),
      Color(0xff0BB02F),
    ],
  );
}
