import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sorder/controller/homescreencontroller.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controllerImp) => Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          // key: _bottomNavigationKey,
          index: 1,
          onTap: (index) {
            controllerImp.changePage(index);},
          items: [
            Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            Icon(Icons.home, color: Colors.white),
            Icon(Icons.settings, color: Colors.white),
          ],
          backgroundColor: Colors.white,
          buttonBackgroundColor: Colors.orange[800],
          color: Colors.orange,
          height: 50,
        ),
        body: controllerImp.listPage.elementAt(controllerImp.currentPage),
      ),
    );
  }
}
