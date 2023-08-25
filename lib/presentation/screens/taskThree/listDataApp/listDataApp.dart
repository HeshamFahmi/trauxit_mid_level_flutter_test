// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/screens/taskThree/listDataApp/callingEndpoint/getUserDataApi.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/screens/taskThree/listDataApp/model/userModel.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/sharedWidgets/spaces/customSizedBox.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/sharedWidgets/widgets/AppImageWidgets.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/sharedWidgets/widgets/AppTexts.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/sharedWidgets/widgets/customeAppBar.dart';
import 'package:trauxit_mid_level_flutter_test/utils/colors/appColors.dart';
import 'package:trauxit_mid_level_flutter_test/utils/strings/images.dart';

class ListDataApp extends StatefulWidget {
  const ListDataApp({super.key});

  @override
  State<ListDataApp> createState() => _ListDataAppState();
}

class _ListDataAppState extends State<ListDataApp> {
  List<UsersModel> usersModel = [];
  bool loading = true;
  @override
  void initState() {
    getAllUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customeAppBar("ListView Task For Flutter Mid-Level"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: loading
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppTexts().customAppNormalText(
                      title: "Please Wait While loading Data ...",
                      size: 15.sp,
                      color: AppColors.appColor),
                  const CircularProgressIndicator(),
                ],
              )
            : ListView.builder(
                itemCount: usersModel.length,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppTexts().customAppText(
                            title:
                                "${usersModel[index].name} (${usersModel[index].website})",
                            size: 15.sp,
                            color: AppColors.appColorBold),
                        customSizedBox(0.0, 5.h),
                        AppTexts().customAppNormalText(
                            title: usersModel[index].email!,
                            color: AppColors.appColor),
                      ],
                    ),
                    leading: AppImages().assetImageWithWidthAndHeight(
                        AppImagesPath.appLogo, 35.0, 35.0),
                  );
                }),
      ),
    );
  }

  getAllUser() async {
    usersModel = await UserDataApi().getAllUsers();
    setState(() {
      loading = false;
    });
  }
}
