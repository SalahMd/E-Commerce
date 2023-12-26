import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sorder/core/services/services.dart';

class MiddleWare extends GetMiddleware {
  int? get priority => 1;
  Myservices myservices = Get.find();
  RouteSettings? redirect(String? route) {
    if (myservices.sharedPreferences.getString("step") == "2") {
      return const RouteSettings(name: "HomePage");
    }
    if (myservices.sharedPreferences.getString("step") == "1") {
      return const RouteSettings(name: "Login");
    }
  }
}