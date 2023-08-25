// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/colors/appColors.dart';
import '../../../../../utils/strings/images.dart';
import '../../../../sharedWidgets/spaces/customSizedBox.dart';
import '../../../../sharedWidgets/widgets/AppImageWidgets.dart';
import '../../../../sharedWidgets/widgets/AppTexts.dart';
import '../../../../sharedWidgets/widgets/searchTextField.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
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
                title: "Welcome , Hesham.",
                size: 15.sp,
                color: AppColors.appColorBold),
            customSizedBox(0.0, 10.h),
            SearchCustomTextField(
              textEditingController: TextEditingController(),
              onsearhIconTap: () {},
            ),
            customSizedBox(0.0, 10.h),
            const Divider(),
            customSizedBox(0.0, 10.h),
            AppTexts().customAppText(
                title: "Our Products", size: 15.sp, color: AppColors.appColor),
            SizedBox(
              height: 80.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(80.0),
                        child:
                            AppImages().assetImage(AppImagesPath.productImage),
                      ),
                    );
                  }),
            ),
            customSizedBox(0.0, 10.h),
            const Divider(),
            customSizedBox(0.0, 10.h),
            AppTexts().customAppText(
                title: "Our Offers", size: 15.sp, color: AppColors.appColor),
            SizedBox(
              height: 80.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(80.0),
                        child:
                            AppImages().assetImage(AppImagesPath.offersImage),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
