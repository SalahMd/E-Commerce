import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:sorder/controller/auth/logincontroller.dart';
import 'package:sorder/controller/auth/signupcontroller.dart';
import 'package:sorder/core/class/statusrequest.dart';
import 'package:sorder/core/constants/buttons.dart';
import 'package:sorder/core/constants/textstyle.dart';
import 'package:sorder/core/constants/variables.dart';
import 'package:sorder/core/functions/alerts.dart';
import 'package:sorder/core/functions/getlanguage.dart';
import 'package:sorder/core/services/services.dart';
import 'package:sorder/view/screen/auth/customtextformfiled.dart';

//import '../../../core/constants/textstyle.dart';
import '../../../core/localization/changelanguage.dart';

class login extends StatelessWidget {
  ChangeLanguage controller = Get.put(ChangeLanguage());
  //     Myservices myservices = Get.find();

  // getLanguage() {
  //   String? sharedpreflang = myservices.sharedPreferences.getString("lang");
  //   if (sharedpreflang == "ar") {
  //     return sharedpreflang;
  //   } else if (sharedpreflang == "en") {
  //     return sharedpreflang;
  //   } else {
  //     // If not set, use the device's default language
  //     return Locale(Get.deviceLocale!.languageCode);
  //   }
  // }
  
  @override
  Widget build(BuildContext context) {
 Get.put(LoginControllerImp());
    return Scaffold(
        body: WillPopScope(
            onWillPop: exitAlert,
            child:GetBuilder<LoginControllerImp>(builder: (controllerImp)=>
            
             SingleChildScrollView(
              child: Form(
                key: controllerImp.formState,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 30)),
                    Text(
                      "welcome".tr,
                      style: Theme.of(context).textTheme.headline1,
                    ).animate().fade(duration: 1000.ms).scaleY(begin:-0.8,curve: Curves.easeInOut),
                    Container(
                      width: 270,
                      height: 210,
                      child: Image.asset(
                        "images/logo.png",
                        fit: BoxFit.fill,
                      ),
                    ).animate().fade(begin:0.1,end:1,duration: 1200.ms).slideY(curve: Curves.easeInOut,begin: -0.3),
                    Padding(padding:  getLanguage() == "en"?EdgeInsets.only(top: 20,left: 10):EdgeInsets.only(top: 20,right: 15),
                    child:Align(
                      alignment: getLanguage() == "en"?Alignment.topLeft:Alignment.topRight,
                      child: Text(
                        "login".tr,
                        style: Theme.of(context).textTheme.bodyText2,
                      ).animate().fade(begin:0.1,end:1,duration: 1200.ms),
                    ),),
                    Customtextformfiled(
                      hinttext: 'username2'.tr,
                      labelText: 'username1'.tr,
                      icondata: Icons.account_circle,
                      controller: controllerImp.email,
                      min: Variables.emailminletters,
                      max: Variables.emailmaxletters,
                      isnumber: false,
                      ispassword: false,
                    ).animate().fade(begin:0.1,end:1,duration: 600.ms).scaleX(),
                    GetBuilder<LoginControllerImp>(
                      builder: (controllerImp)=>
                      Customtextformfiled(
                        hinttext: 'password2'.tr,
                        labelText: 'password1'.tr,
                        icondata: Icons.lock,
                        controller: controllerImp.password,
                        min: Variables.passwordminletters,
                        max: Variables.passwordmaxletters,
                        isnumber: false,
                        ispassword: controllerImp.isshown,
                        ontapicon: () {
                          controllerImp.showPassword();
                        },
                      ).animate().fade(begin:0.1,end:1,duration: 600.ms).scaleX(),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 30)),
                    ElevatedButton(
                      onPressed: () {
                        controllerImp.login();
                      },
                      child: Text(
                        "loginbutton".tr,
                        style: TextStyles.textbuttonstyle,
                      ),
                      style: buttonseapp.elevatedButtonStyle,
                    ).animate().fade(duration:1000.ms).slideY(begin: 0.8,curve: Curves.easeInOut),
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {},
                            child: Container(
                                width: 50,
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  // border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                  //color: Color.fromARGB(203, 229, 218, 218),
                                ),
                                child: Container(
                                    width: 35,
                                    height: 35,
                                    child: Image.asset(
                                      "images/facebook.png",
                                      fit: BoxFit.fill,
                                    )))),
                        const Padding(padding: EdgeInsets.only(left: 20)),
                        GestureDetector(
                            onTap: () {},
                            child: Container(
                                width: 50,
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  //border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                  //color: Color.fromARGB(203, 229, 218, 218),
                                ),
                                child: Container(
                                    width: 32,
                                    height: 32,
                                    child: Image.asset(
                                      "images/google.png",
                                      fit: BoxFit.fill,
                                    )))),
                      ],
                    ).animate().fade(duration:1000.ms).slideY(begin: 0.8,curve: Curves.easeInOut),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "create".tr,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w400),
                        ),
                        TextButton(
                            onPressed: () {
                              controllerImp.goToSignup();
                            },
                            child: Text(
                              "createbutton".tr,
                              style: TextStyle(color: Colors.orange),
                            )),
                      ],
                    ).animate().fade(duration:1000.ms).slideY(begin: 0.8,curve: Curves.easeInOut),
                    TextButton(
                        onPressed: () {
                          controllerImp.goToForgotPassword();
                        },
                        child: Text(
                          "forgotpassword".tr,
                          style: const TextStyle(color: Colors.orange),
                        )).animate().fade(duration:1000.ms).slideY(begin: 0.8,curve: Curves.easeInOut),
                  ],
                ),
              ),
            ),)));
  }
}
