import 'package:get/get.dart';
import 'package:sorder/core/class/crud.dart';
import 'package:sorder/core/class/statusrequest.dart';
import 'package:sorder/core/functions/handelingdata.dart';
import 'package:sorder/data/datasource/remote/test_data.dart';

class TestDataController extends GetxController {
  testdata test_data = testdata(Get.find());
  List data = [];
  late StatusRequest statusRequest;
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await test_data.getData();
    statusRequest = hadelingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") 
        data.addAll(response['data']);
      else 
        statusRequest = StatusRequest.failure;
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
