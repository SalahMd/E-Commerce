import 'package:get/get.dart';
import 'package:sorder/core/class/statusrequest.dart';
import 'package:sorder/core/functions/handelingdata.dart';
import 'package:sorder/data/datasource/remote/itemdata.dart';

abstract class ItemController extends GetxController {
  changeCounter(bool isIncreaseing);
}

class ItemControllerImp extends ItemController {

  int counter = 0;
  int id = 0 ;
  
 // @override
  // onInit() {
  //   displayItem(id);
  //   super.onInit();
  // }

  @override
  changeCounter(bool isIncreaseing) {
    if (isIncreaseing && counter<99) {
      counter++;
    } else {
      if(counter>0) {
        counter--;
      }
    }
    update();
  }

 
}
