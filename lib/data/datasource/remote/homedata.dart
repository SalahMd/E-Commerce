import 'package:sorder/core/class/crud.dart';
import 'package:sorder/core/constants/links.dart';

class HomeData {
  Crud crud;
  HomeData(this.crud);
  getData() async {
    var response = await this.crud.postData(Links.Categories, {});
    return response.fold((l) => l, (r) => r);
  }
}
