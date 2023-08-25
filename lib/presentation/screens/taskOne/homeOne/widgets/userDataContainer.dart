// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/colors/appColors.dart';
import '../../../../sharedWidgets/spaces/customSizedBox.dart';
import '../../../../sharedWidgets/widgets/AppTexts.dart';

class UserDataContainer extends StatelessWidget {
  const UserDataContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          gradient: AppColors.buttonBlue,
          borderRadius: BorderRadius.circular(15.0)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTexts().customAppText(
                  title: "Username :- Hesham Fahmi",
                  size: 15.sp,
                  color: AppColors.whiteColor),
              customSizedBox(0.0, 5.h),
              AppTexts().customAppText(
                  title: "Email :- heshamfahmi28@gmail.com",
                  size: 15.sp,
                  color: AppColors.whiteColor),
              customSizedBox(0.0, 5.h),
              AppTexts().customAppText(
                  title: "Phonenumber :- +201102955210",
                  size: 15.sp,
                  color: AppColors.whiteColor),
              customSizedBox(0.0, 5.h),
            ],
          ),
          Container(
            alignment: Alignment.center,
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(50.0)),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  size: 30.0,
                  color: AppColors.appColorBold,
                )),
          )
        ],
      ),
    );
  }
}
