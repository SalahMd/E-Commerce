import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sorder/controller/test_datacontroller.dart';
import 'package:sorder/core/class/statusrequest.dart';
import 'package:sorder/core/constants/animations.dart';
import 'package:sorder/core/functions/alerts.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(TestDataController());
    return WillPopScope(
                  onWillPop: exitAlert,
      child: Scaffold(body: GetBuilder<TestDataController>(
        builder: (controller) {
          if (controller.statusRequest == StatusRequest.loading) {
             return Center(child: animations.loading);
          } else if (controller.statusRequest == StatusRequest.offline) {
            return Center(child: animations.offline);
          } else if (controller.statusRequest == StatusRequest.serverError) {
            return Center(child: animations.error);
          } else if (controller.statusRequest == StatusRequest.failure) {
            return Center(child: Text("No data"));
          } else
          return ListView.builder(
            itemCount: controller.data.length,
            itemBuilder: (context, index) {
              return Text("${controller.data}");
            },
          );
        },
      )),
    );
  }
}
