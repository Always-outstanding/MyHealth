import 'package:get/get.dart';
import 'package:my_health/core/class/StatusRequest.dart';

import '../../function/handlingDataController.dart';
import '../auth/test_datd.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());

  List data = [];

  late StatusRequest statusRequest;

  GetData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    print("===========================================$response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    GetData();
    super.onInit();
  }
}
