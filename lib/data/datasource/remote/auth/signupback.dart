import 'package:sorder/core/class/crud.dart';
import 'package:sorder/core/constants/links.dart';

class SignUpBack {
  Crud crud;
  SignUpBack(this.crud);
  postData(String firstname, String lastname, String email,String phone, String password) async {
    var response = await this.crud.postData(Links.signUp, {
      "firstname":firstname,
      "lastname":lastname,
      "email":email,
      "phone":phone,
      "password":password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
