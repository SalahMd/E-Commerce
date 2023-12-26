import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sorder/controller/auth/resetpasswordcontroller.dart';
import 'package:sorder/core/constants/buttons.dart';
import 'package:sorder/core/constants/textstyle.dart';
import 'package:sorder/core/constants/variables.dart';
import 'package:sorder/view/screen/auth/customtextformfiled.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controllerImp =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      body: Form(
        key: controllerImp.formState,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 30)),
            Text(
              "resetpassword".tr,
              style: Theme.of(context).textTheme.headline1,
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Text(
              "resetpasswordbody".tr,
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.only(top: 50)),
            Customtextformfiled(
              hinttext: "password2".tr,
              labelText: "password1".tr,
              icondata: Icons.lock,
              controller: controllerImp.password,
              min: Variables.passwordminletters,
              max: Variables.passwordmaxletters,
              isnumber: false,
              ispassword: true,
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
            ElevatedButton(
              onPressed: () {
                controllerImp.goToLogin();
              },
              child: Text("confirm".tr, style: TextStyles.textbuttonstyle),
              style: buttonseapp.elevatedButtonStyle,
            )
          ],
        ),
      ),
    );
  }
}
