// ignore_for_file: file_names

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:trauxit_mid_level_flutter_test/presentation/screens/taskThree/listDataApp/model/userModel.dart';
import 'package:trauxit_mid_level_flutter_test/presentation/sharedWidgets/attention/customToast.dart';

class UserDataApi {
  getAllUsers() async {
    List<UsersModel> usersModel = [];
    var request = http.Request(
        'GET', Uri.parse('https://jsonplaceholder.typicode.com/users'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var responseUser = json.decode(await response.stream.bytesToString());
      List x = responseUser as List;
      for (int i = 0; i < x.length; i++) {
        usersModel.add(UsersModel.fromJson(x[i]));
      }
      return usersModel;
    } else {
      showFailedToast("خطأ اثناء تحميل بيانات المستخدمين");
    }
  }
}
