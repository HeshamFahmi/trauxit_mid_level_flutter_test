// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/colors/appColors.dart';
import '../../../../sharedWidgets/widgets/AppTexts.dart';

class ProfileMainRow extends StatelessWidget {
  final String title;
  final VoidCallback action;
  final IconData icon;
  const ProfileMainRow({
    Key? key,
    required this.title,
    required this.action,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Card(
        child: ListTile(
          title: AppTexts().customAppText(
              title: title, color: AppColors.appColorBold, size: 15.sp),
          leading: IconButton(onPressed: () {}, icon: Icon(icon)),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
        ),
      ),
    );
  }
}
