import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> exitAlert() {
  Get.defaultDialog(title: "", middleText: "warningbody".tr, actions: [
    TextButton(
        onPressed: () {
          exit(0);
        },
        child: Text("yes".tr)),
    TextButton(
        onPressed: () {
          Get.back();
        },
        child: Text("no".tr))
  ]);
  return Future.value(true);
}
