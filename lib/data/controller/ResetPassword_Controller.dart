import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_health/core/class/StatusRequest.dart';
import 'package:my_health/data/auth/singup.dart';
import 'package:my_health/routes.dart';
import 'package:my_health/screens/home_secreen.dart';

import '../../core/class/routes.dart';
import '../../function/handlingDataController.dart';
import '../auth/test_datd.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccessResetPassword();
  goToForgrtPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  // GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController password_controller;
  late TextEditingController repassword_controller;

  // SignUpData signUpData = SignUpData(Get.find());

  // List data = [];

  @override
  resetPassword()
  // async
  {
    // if (formstate.currentState!.validate()) {
    //   statusRequest = StatusRequest.loading;
    //   var response = await signUpData.postData(usrename_controller.text, id_number_controller.text,
    //       mobile_controller.text, birth_controller.text, email_controller.text, password_controller.text);
    //   statusRequest = handlingData(response);
    //   if (StatusRequest.success == statusRequest) {
    //     data.addAll(response['data']);
    //     // Get.offNamed(AppRoute.verifyCodeSingUp);
    //   } else {
    //     Get.defaultDialog(
    //       title: "تنبية",
    //       middleText: "رقم الهوية او رقم الهاتف  موجود مسبقا",
    //     );
    //     statusRequest = StatusRequest.failure;
  }

  //   update();
  // } else {}

  @override
  void onInit() {
    password_controller = TextEditingController();
    repassword_controller = TextEditingController();

    super.onInit();
  }

  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoute.successResetPassword);
  }

  @override
  void dispose() {
    password_controller.dispose();
    repassword_controller.dispose();

    super.dispose();
  }

  @override
  goToForgrtPassword() {
    Get.offNamed(AppRoute.forgetPassword);
  }
}
