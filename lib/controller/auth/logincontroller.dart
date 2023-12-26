import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sorder/core/class/statusrequest.dart';
import 'package:sorder/core/functions/handelingdata.dart';
import 'package:sorder/core/services/services.dart';
import 'package:sorder/data/datasource/remote/auth/loginback.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignup();
  goToForgotPassword();
}

class LoginControllerImp extends LoginController {
  LoginBack loginBack = new LoginBack(Get.find());
  GlobalKey<FormState> formState = new GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  Myservices myServices = Get.find();
  StatusRequest? statusRequest;
  bool isshown = true;
  showPassword() {
    isshown = !isshown;
    update();
  }

  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  login() async {
    var formdata = formState.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginBack.postData(email.text, password.text);
      statusRequest = hadelingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          myServices.sharedPreferences.setInt("id", response['data']["id"]);
          myServices.sharedPreferences.setString("firstname", response['data']['first_name']);
          myServices.sharedPreferences.setString("lastname", response['data']['last_name']);
          myServices.sharedPreferences.setString("email", response['data']['email']);
          myServices.sharedPreferences.setString("phone", response['data']['phone']);
          myServices.sharedPreferences.setString("password", response['data']['password']);
          myServices.sharedPreferences.setString("step", "2");
          Get.offNamed("HomePage");
        } else
          Get.defaultDialog(title: "", middleText: "warningbody3".tr);
      }
      update();
    } else
      print("Not Valid");
  }

  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  goToSignup() {
    Get.offNamed("SignUp");
  }

  @override
  goToForgotPassword() {
    Get.toNamed("ForgotPassword");
  }
}
