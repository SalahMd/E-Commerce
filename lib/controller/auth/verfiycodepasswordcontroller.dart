import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeController extends GetxController{
  goToResetPassword();
  verfiyCode();
}
class VerfiyCodeControllerImp extends VerfiyCodeController{
  late String verifycode;
  @override
  goToResetPassword() {
    Get.toNamed("ResetPassword");
  }
  void onInit(){
   // code = TextEditingController();
    super.onInit();
  }
  @override
  verfiyCode() {

  }

}