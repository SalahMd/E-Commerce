import 'package:sorder/core/class/crud.dart';
import 'package:sorder/core/constants/links.dart';
import 'package:sorder/view/screen/auth/verfiycode.dart';

class VerifyCodeSignUpBack {
  Crud crud;
  VerifyCodeSignUpBack(this.crud);
  postData(String email, String verifyCode) async {
    var response = await this.crud.postData(Links.VerifyCode, {
      "email":email,
      "verifycode":verifyCode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
