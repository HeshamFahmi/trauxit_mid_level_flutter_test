// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/sharedWidgets/spaces/customSizedBox.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/sharedWidgets/widgets/AppTexts.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/sharedWidgets/widgets/customeAppBar.dart';
import 'package:trauxit_mid_level_flutter_test/utils/colors/appColors.dart';

import '../weatherHandle/weatherHandle.dart';

class WeatherDisplayScreen extends StatefulWidget {
  const WeatherDisplayScreen({super.key});

  @override
  State<WeatherDisplayScreen> createState() => _WeatherDisplayScreenState();
}

class _WeatherDisplayScreenState extends State<WeatherDisplayScreen> {
  int? temperature;
  String? country;
  String? city;
  WeatherModel weatherModel = WeatherModel();
  bool loading = true;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customeAppBar("Weather Task For Mid-Level Flutter"),
      body: loading
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppTexts().customAppNormalText(
                      title:
                          "Loading current Location Data Weather Please Wait ...",
                      size: 15.sp,
                      color: AppColors.appColorBold),
                  customSizedBox(0.0, 20.h),
                  const CircularProgressIndicator(),
                ],
              ),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppTexts().customAppText(
                      title: "Temp Is :- $temperature",
                      size: 15.sp,
                      color: AppColors.appColorBold),
                  customSizedBox(0.0, 10.h),
                  AppTexts().customAppText(
                      title: "Country Is :- $country",
                      size: 15.sp,
                      color: AppColors.appColorBold),
                  customSizedBox(0.0, 10.h),
                  AppTexts().customAppText(
                      title: "City Is :- $city",
                      size: 15.sp,
                      color: AppColors.appColorBold),
                ],
              ),
            ),
    );
  }

  getLocationData() async {
    var weatherData = await weatherModel.getLocationWeather();
    setState(() {
      country = weatherData['sys']['country'];
      city = weatherData['name'];
      double temp = weatherData['main']['temp'];
      temperature = temp.toInt();
      loading = false;
    });
  }
}
