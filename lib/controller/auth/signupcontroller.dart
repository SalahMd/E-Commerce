import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sorder/core/class/statusrequest.dart';
import 'package:sorder/core/functions/handelingdata.dart';
import 'package:sorder/data/datasource/remote/auth/signupback.dart';
import 'package:sorder/data/datasource/remote/test_data.dart';

abstract class SignUpController extends GetxController {
  SignUp();
  goToLogin();
  goToCheckEmail();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formState = new GlobalKey<FormState>();
  late TextEditingController firstname;
  late TextEditingController lastname;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;
  StatusRequest? statusRequest;
  SignUpBack signup_data = SignUpBack(Get.find());
  List data = [];
  bool isshown = true;
  showPassword() {
    isshown = isshown == true ? false : true;
    update();
  }

  @override
  SignUp() {
    Get.off("Login");
  }

  void onInit() {
    firstname = TextEditingController();
    lastname = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();

    super.onInit();
  }

  @override
  goToCheckEmail() async {
    var formdata = formState.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signup_data.postData(
          firstname.text, lastname.text, email.text, phone.text, password.text);
      statusRequest = hadelingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.offNamed("VerifyCode", arguments: {"email": email.text});
        } else
          Get.defaultDialog(title: "", middleText: "warningbody2".tr);
      }
      update();
    } else
      print("Not Valid");
  }

  void dispose() {
    firstname.dispose();
    lastname.dispose();
    email.dispose();
    password.dispose();
    phone.dispose();
    super.dispose();
  }

  @override
  goToLogin() {
    Get.offNamed("Login");
  }
}
