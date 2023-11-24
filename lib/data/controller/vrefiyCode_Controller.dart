import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_health/core/class/StatusRequest.dart';
import 'package:my_health/data/auth/singup.dart';
import 'package:my_health/routes.dart';
import 'package:my_health/screens/home_secreen.dart';

import '../../core/class/routes.dart';
import '../../function/handlingDataController.dart';
import '../auth/test_datd.dart';

late StatusRequest statusRequest;
late TextEditingController usrename;
late TextEditingController id_number;
late TextEditingController mobile;
late TextEditingController birth;
late TextEditingController email;
late TextEditingController password;

abstract class VryifyCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VryifyCodeControllerImp extends VryifyCodeController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController code;
  late String verifycode;

  SignUpData signUpData = SignUpData(Get.find());

  List data = [];

  @override
  checkCode() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      var response = await signUpData.postData(usrename.text, id_number.text,
          mobile.text, birth.text, email.text, password.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        data.addAll(response['data']);
        Get.offNamed(AppRoute.successSignUp);
      } else {
        Get.defaultDialog(
          title: "تنبية",
          middleText: "رقم الهوية او رقم الهاتف  موجود مسبقا",
        );
        statusRequest = StatusRequest.failure;
      }

      update();
    } else {}

    @override
    void onInit() {
      email = Get.arguments['email'];

      super.onInit();
    }
  }

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPasswprd);
  }
}
