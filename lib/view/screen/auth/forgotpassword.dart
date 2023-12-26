import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sorder/controller/auth/forgotpasswordcontroller.dart';
import 'package:sorder/core/constants/buttons.dart';
import 'package:sorder/core/constants/images.dart';
import 'package:sorder/core/constants/textstyle.dart';
import 'package:sorder/core/constants/variables.dart';
import 'package:sorder/view/screen/auth/customtextformfiled.dart';

class ForgotPassword extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ForgotPasswordControllerimp controllerimp = Get.put(ForgotPasswordControllerimp());
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key:controllerimp.formState ,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 30)),
              Text("forgotpassword".tr,style: Theme.of(context).textTheme.headline1,),
              Padding(padding: EdgeInsets.only(top: 20)),
              Container(
                  width: 230,
                  height: 230,
                  child: Image.asset(Images.forgotpasswordimage,fit: BoxFit.fill,)),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text("forgotpasswordbody".tr,style: Theme.of(context).textTheme.bodyText1,textAlign: TextAlign.center,),
              Padding(padding: EdgeInsets.only(top: 40)),
              Customtextformfiled(hinttext: "username2".tr, labelText: "username1".tr, icondata: Icons.mail, controller: controllerimp.email,min: Variables.emailminletters,max: Variables.emailmaxletters,isnumber: false,ispassword: false,),
              Padding(padding: EdgeInsets.only(top: 40)),
              ElevatedButton(onPressed: (){
                controllerimp.goToVrefiyCode();
              }, child: Text("sendcode".tr,style: TextStyles.textbuttonstyle),style: buttonseapp.elevatedButtonStyle,)
            ],
          ),
        ),
      ),
    );
  }

}