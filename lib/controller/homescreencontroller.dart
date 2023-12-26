import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sorder/view/screen/homepage.dart';
import 'package:sorder/view/screen/profile.dart';
import 'package:sorder/view/screen/settings.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentPage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentPage = 1;
  List<Widget> listPage = [
    Profile(),
    HomePage(),
    Settings()
  ];
  @override
  changePage(int index) {
    currentPage = index;
    update();
  }
}
