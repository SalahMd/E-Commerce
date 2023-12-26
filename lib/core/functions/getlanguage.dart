import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sorder/core/constants/dimensions.dart';
import 'package:sorder/core/constants/images.dart';
import 'package:sorder/core/functions/alerts.dart';
import 'package:sorder/core/services/services.dart';

   getLanguage() {
    Myservices myservices = Get.find();
    String? sharedpreflang = myservices.sharedPreferences.getString("lang");
    if (sharedpreflang == "ar") {
      return sharedpreflang;
    } else if (sharedpreflang == "en") {
      return sharedpreflang;
    } else {
      // If not set, use the device's default language
      return Locale(Get.deviceLocale!.languageCode);
    }
  }