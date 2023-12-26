import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgotPasswordController extends GetxController {
  checkEmail();
  goToVrefiyCode();
}

class ForgotPasswordControllerimp extends ForgotPasswordController {
  late TextEditingController email;
  GlobalKey<FormState> formState = new GlobalKey<FormState>();

  @override
  checkEmail() {}

  @override
  goToVrefiyCode() {
    var formdata = formState.currentState;
    if(formdata!.validate())
      Get.toNamed("VerifyCode");
    else
      print("Not Valid");
  }

  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  void dispose() {
    email.dispose();
    super.dispose();
  }
}
