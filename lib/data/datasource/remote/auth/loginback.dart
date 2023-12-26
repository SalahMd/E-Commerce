import 'package:sorder/core/class/crud.dart';
import 'package:sorder/core/constants/links.dart';

class LoginBack {
  Crud crud;
  LoginBack(this.crud);
  postData(String email, String password) async {
    var response = await this.crud.postData(Links.logInIn, {
      "email":email,
      "password":password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
