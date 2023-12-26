import 'package:get/get.dart';
import 'package:sorder/core/class/statusrequest.dart';
import 'package:sorder/core/functions/handelingdata.dart';
import 'package:sorder/core/services/services.dart';
import 'package:sorder/data/datasource/remote/homedata.dart';
import 'package:sorder/data/datasource/remote/itemdata.dart';
import 'package:sorder/data/datasource/remote/test_data.dart';

abstract class HomePageController extends GetxController {
  initData();
  getData();
  displayItem(int id);
}

class HomePageControllerImp extends HomePageController {
  HomeData home_data = HomeData(Get.find());
  List categories = [];
  List itemInfo = [];
  List items = [];
  late StatusRequest statusRequest;
  late StatusRequest statusItemRequest;

  ItemData item_data = ItemData(Get.find());
  Myservices myservices = Get.find();
  void onInit() {
    super.onInit();
    getData();
    initData();
  }

  @override
  initData() {}

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await home_data.getData();
    statusRequest = hadelingData(response);
    if (StatusRequest.success == statusRequest) {
      update();
      if (response['status'] == "success") {
        categories.addAll(response['categories']);
        items.addAll(response['items']);
      } else
        statusRequest = StatusRequest.failure;
    }
    update();
  }

  @override
  displayItem(int id) async {
    statusItemRequest = StatusRequest.loading;

    var response = await item_data.getData(id);
    statusItemRequest = hadelingData(response);
    if (StatusRequest.success == statusRequest) {
      update();
      if (response['status'] == "success") {
        itemInfo.add(response['data']);
      } else
        statusRequest = StatusRequest.failure;
    }
    print(itemInfo);
    Get.toNamed("ItemInfo");
  }
}
