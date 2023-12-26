import 'package:get/get.dart';
import 'package:sorder/core/class/statusrequest.dart';
import 'package:sorder/core/functions/handelingdata.dart';

import '../../data/datasource/remote/auth/verifycodesignupback.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp(String verificationCode);
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  VerifyCodeSignUpBack verifyCodeSignUpBack = VerifyCodeSignUpBack(Get.find());
  String? email;
  StatusRequest? statusRequest;
  @override
  checkCode() {}

  @override
  goToSuccessSignUp(String verificationCode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verifyCodeSignUpBack.postData
        (email!, verificationCode);
    statusRequest = hadelingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offAllNamed("Login");
      } else
        Get.defaultDialog(title: "", middleText: "warningbody4".tr);
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
