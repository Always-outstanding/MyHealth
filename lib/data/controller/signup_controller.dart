import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:my_health/screens/home_secreen.dart';

import '../../core/class/StatusRequest.dart';
import '../../core/class/routes.dart';
import '../../function/handlingDataController.dart';
import '../auth/singup.dart';
import '../auth/test_datd.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
  goToLogin();
  
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  late TextEditingController user_name;
  late TextEditingController id_number;
  late TextEditingController mobile;
  late TextEditingController birth;
  late TextEditingController email;
  late TextEditingController password;

  StatusRequest? statusRequest;

  bool isShowPassword = true;

  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  SignUpData signUpData = SignUpData(Get.find());
  List data = [];
  @override
  signUp() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signUpData.postData(user_name.text, id_number.text,
          mobile.text, birth.text, email.text, password.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.verifycodeSignUp,
              arguments: {"email": email.text});
        } else {
          Get.defaultDialog(
              title: "ُWarning", middleText: "رقم الهوية او كلمة المرور خطاء");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  void onInit() {
    user_name = TextEditingController();
    id_number = TextEditingController();
    mobile = TextEditingController();
    birth = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    user_name.dispose();
    id_number.dispose();
    mobile.dispose();
    birth.dispose();
    email.dispose();
    password.dispose();

    super.dispose();
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }
}
