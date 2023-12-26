import 'package:sorder/core/class/crud.dart';
import 'package:sorder/core/constants/links.dart';

class testdata {
  Crud crud;
  testdata(this.crud);
  getData() async {
    var response = await this.crud.postData(Links.logInIn, {});
    return response.fold((l) => l, (r) => r);
  }
}
