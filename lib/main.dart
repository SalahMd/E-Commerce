import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sorder/binding/initilabinding.dart';
import 'package:sorder/core/functions/getlanguage.dart';
import 'package:sorder/core/localization/changelanguage.dart';
import 'package:sorder/core/middleware/midlleware.dart';
import 'package:sorder/core/services/services.dart';
import 'package:sorder/view/screen/auth/checkemail.dart';
import 'package:sorder/view/screen/auth/forgotpassword.dart';
import 'package:sorder/view/screen/auth/login.dart';
import 'package:sorder/view/screen/auth/resetpassword.dart';
import 'package:sorder/view/screen/auth/verfiycode.dart';
import 'package:sorder/view/screen/chooselanguage.dart';
import 'package:sorder/view/screen/homepage.dart';
import 'package:sorder/view/screen/homescreen.dart';
import 'package:sorder/view/screen/iteminfo.dart';
import 'package:sorder/view/screen/onboarding.dart';
import 'package:sorder/view/screen/profile.dart';
import 'package:sorder/view/widgets/test.dart';

import 'core/localization/translation.dart';
import 'view/screen/auth/signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  getLanguage();
  ChangeLanguage controller = Get.put(ChangeLanguage());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    ChangeLanguage controller = Get.put(ChangeLanguage());
    return GetMaterialApp(
      locale: controller.language,
      translations: Translation(),
      theme: ThemeData(
          textTheme: TextTheme(
        headline1: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
            fontSize: 27,
            fontFamily:
                controller.language == "en" ? "PlayfairDisplay" : "Cairo"),
        headline2: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 27,
            fontFamily:
                controller.language == "en" ? "PlayfairDisplay" : "Cairo"),
        bodyText1: TextStyle(
            color: Colors.grey[700],
            fontWeight: FontWeight.bold,
            fontSize: 19,
            height: 1.5),
        bodyText2: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      )),
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
      getPages: [
        GetPage(
            name: "/",
            page: () => ChooseLanguage(),
            middlewares: [MiddleWare()]),
        GetPage(name: "/Login", page: () => login()),
        GetPage(name: "/OnBoarding", page: () => onbording()),
        GetPage(name: "/SignUp", page: () => SignUp()),
        GetPage(name: "/ForgotPassword", page: () => ForgotPassword()),
        GetPage(name: "/ResetPassword", page: () => ResetPassword()),
        GetPage(name: "/VerifyCode", page: () => VerifyCode()),
        GetPage(name: "/CheckEmail", page: () => CheckEmail()),
        GetPage(name: "/Test", page: () => Test()),
        GetPage(name: "/HomePage", page: () => HomeScreen()),
        GetPage(name: "/Profile", page: () => Profile()),
        GetPage(name: "/ItemInfo", page: () => ItemInfo()),
      ],
    );
  }
}
