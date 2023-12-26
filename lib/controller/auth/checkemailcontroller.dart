import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController{
  goToLogin();
  checkEmail();
}
class CheckEmailControllerImp extends CheckEmailController{

  @override
  checkEmail() {

  }

  @override
  goToLogin() {
    Get.offNamed("Login");
  }

}