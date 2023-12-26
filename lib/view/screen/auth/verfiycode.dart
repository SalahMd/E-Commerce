import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:sorder/controller/auth/verifycodesignupcontroller.dart';


class VerifyCode extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
          Get.put(VerifyCodeSignUpControllerImp());

    return Scaffold(
      body: GetBuilder<VerifyCodeSignUpControllerImp>
      (builder: (controllerImp)=>
      Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 30)),
            Text("verifyingcode".tr,style: Theme.of(context).textTheme.headline1,),
            Padding(padding: EdgeInsets.only(top: 30)),
            Text("receivedcode".tr,style: Theme.of(context).textTheme.bodyText1,textAlign: TextAlign.center,),
            Padding(padding: EdgeInsets.only(top: 40)),
            OtpTextField(
              numberOfFields: 5,
              focusedBorderColor: Colors.orange,
              borderColor: Color(0xFF512DA8),
              borderRadius: BorderRadius.circular(20),
              fieldWidth: 50,
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              // onCodeChanged: (String code) {
              //   //handle validation or checks here
              // },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){
                controllerImp.goToSuccessSignUp(verificationCode);

              }, // end onSubmit
            ),
            // Padding(padding: EdgeInsets.only(top: 40)),
            //
            // ElevatedButton(onPressed: (){
            //   controllerImp.goToResetPassword();
            // }, child: Text("verify".tr,style: TextStyles.textbuttonstyle,),style: buttonseapp.elevatedButtonStyle,)
          ],
        ),
      ),)
    );
  }

}