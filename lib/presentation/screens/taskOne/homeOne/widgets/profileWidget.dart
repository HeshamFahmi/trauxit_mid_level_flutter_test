// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/colors/appColors.dart';
import '../../../../sharedWidgets/spaces/customSizedBox.dart';
import '../../../../sharedWidgets/widgets/AppTexts.dart';
import 'profileMainRow.dart';
import 'userDataContainer.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customSizedBox(0.0, 10.h),
            AppTexts().customAppText(
                title: "Hesham's Profile",
                size: 15.sp,
                color: AppColors.appColorBold),
            customSizedBox(0.0, 10.h),
            const UserDataContainer(),
            customSizedBox(0.0, 10.h),
            const Divider(),
            customSizedBox(0.0, 10.h),
            ProfileMainRow(
                action: () {}, icon: Icons.settings, title: "Settings"),
            ProfileMainRow(
                action: () {}, icon: Icons.language, title: "Language"),
            ProfileMainRow(action: () {}, icon: Icons.info, title: "AboutUs"),
            ProfileMainRow(
                action: () {},
                icon: Icons.thermostat_auto_sharp,
                title: "Terms and Conditions"),
            ProfileMainRow(action: () {}, icon: Icons.logout, title: "Logout"),
          ],
        ),
      ),
    );
  }
}
