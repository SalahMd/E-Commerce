import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sorder/controller/auth/signupcontroller.dart';
import 'package:sorder/core/class/statusrequest.dart';
import 'package:sorder/core/constants/buttons.dart';
import 'package:sorder/core/constants/textstyle.dart';
import 'package:sorder/core/constants/variables.dart';
import 'package:sorder/core/functions/alerts.dart';
import 'package:sorder/view/screen/auth/customtextformfiled.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    return Scaffold(
        body: WillPopScope(
            onWillPop: exitAlert,
            child: GetBuilder<SignUpControllerImp>(builder: (controllerImp)=>
            controllerImp.statusRequest == StatusRequest.loading?Center(child: Text ("loading"),):
              SingleChildScrollView(
                child: Form(
                  key: controllerImp.formState,
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Text(
                        "signup".tr,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Text(
                        "signupbody".tr,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Customtextformfiled(
                        hinttext: "firstname2".tr,
                        labelText: "firstname1".tr,
                        icondata: Icons.account_circle,
                        controller: controllerImp.firstname,
                        min: 3,
                        max: 10,
                        isnumber: false,
                        ispassword: false,
                      ),
                      Customtextformfiled(
                          hinttext: "lastname2".tr,
                          labelText: "lastname1".tr,
                          icondata: Icons.account_circle,
                          controller: controllerImp.lastname,
                          min: 3,
                          max: 10,
                          isnumber: false,
                          ispassword: false),
                      Customtextformfiled(
                        hinttext: "username2".tr,
                        labelText: "username1".tr,
                        icondata: Icons.mail,
                        controller: controllerImp.email,
                        min: Variables.emailminletters,
                        max: Variables.emailmaxletters,
                        isnumber: false,
                        ispassword: false,
                      ),
                      Customtextformfiled(
                        hinttext: "phone2".tr,
                        labelText: "phone1".tr,
                        icondata: Icons.phone,
                        controller: controllerImp.phone,
                        min: 10,
                        max: 11,
                        isnumber: true,
                        ispassword: false,
                      ),
                      GetBuilder<SignUpControllerImp>(
                        builder: (controllerImp) => Customtextformfiled(
                          hinttext: "password2".tr,
                          labelText: "password1".tr,
                          icondata: Icons.lock,
                          controller: controllerImp.password,
                          min: Variables.passwordminletters,
                          max: Variables.passwordmaxletters,
                          isnumber: false,
                          ispassword: controllerImp.isshown,
                          ontapicon: () {
                            controllerImp.showPassword();
                          },
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 30)),
                      ElevatedButton(
                        onPressed: () {
                          controllerImp.goToCheckEmail();
                        },
                        child: Text(
                          "signup".tr,
                          style: TextStyles.textbuttonstyle,
                        ),
                        style: buttonseapp.elevatedSignUpButtonStyle,
                      ),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "haveaccount".tr,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w400),
                          ),
                          TextButton(
                              onPressed: () {
                                controllerImp.goToLogin();
                              },
                              child: Text(
                                "loginbutton".tr,
                                style: TextStyle(color: Colors.orange),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),));
  }
}
