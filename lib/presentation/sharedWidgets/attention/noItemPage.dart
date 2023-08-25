// ignore_for_file: file_names

import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/AppTexts.dart';

class NoItemPage extends StatelessWidget {
  final String? screenName;
  const NoItemPage({
    Key? key,
    required this.screenName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          // ClipRRect(
          //     borderRadius: BorderRadius.circular(30.0),
          //     child: Image.asset(
          //       AppImagesPath.failedPaymentResult,
          //       width: 100.w,
          //       height: 100.h,
          //     )),
          const SizedBox(
            height: 20.0,
          ),
          AppTexts().customAppNormalText(
              title: " عفوا لا يوجد  $screenName الان ...", size: 15.sp)
        ],
      ),
    );
  }
}
