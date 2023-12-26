import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  goToLogin();
  ResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  GlobalKey<FormState> formState = new GlobalKey<FormState>();
  late TextEditingController password;
  @override
  goToLogin() {
    var formdata = formState.currentState;
    if (formdata!.validate())
      Get.offNamed("Login");
    else
      print("Not valid");
  }

  void onInit() {
    password = TextEditingController();
    super.onInit();
  }

  void dispose() {
    password.dispose();
    super.dispose();
  }

  @override
  ResetPassword() {}
}
