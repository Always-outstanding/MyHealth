import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_health/core/class/StatusRequest.dart';
import 'package:my_health/data/auth/singup.dart';
import 'package:my_health/routes.dart';
import 'package:my_health/screens/home_secreen.dart';

import '../../core/class/routes.dart';
import '../../function/handlingDataController.dart';
import '../auth/test_datd.dart';
import '../auth/verifycodeSignUp.dart';

abstract class VrefiyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp(String veriyfiyCodeSignUp);
  goToLogin();
}

class VrefiyCodeSignUpControllerImp extends VrefiyCodeSignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  // late TextEditingController code;
  // late String verifycode;

  String? email;

  StatusRequest? statusRequest;

  VeriyfiyCodeSignUpData veriyfiyCodeSignUpData =
      VeriyfiyCodeSignUpData(Get.find());

  List data = [];

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }

  @override
  checkCode() {
    // TODO: implement checkCode
    throw UnimplementedError();
  }

  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  goToSuccessSignUp(veriyfiyCodeSignUp) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await veriyfiyCodeSignUpData.postData(email!, veriyfiyCodeSignUp);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.successSignUp);
        print("====================================$response");
      } else {
        Get.defaultDialog(
          title: "تنبية",
          middleText: "رمز التحقق غير صحيح ",
        );
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
}
