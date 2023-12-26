import 'package:sorder/core/class/crud.dart';
import 'package:sorder/core/constants/links.dart';

class ItemData {
  Crud crud;
  ItemData(this.crud);
  getData(int id) async {
    var response = await this.crud.postData(Links.itemInfo, {
      "id":id.toString()
    });
    return response.fold((l) => l, (r) => r);
  }
  
}
