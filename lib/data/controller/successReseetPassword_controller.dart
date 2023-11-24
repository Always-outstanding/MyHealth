import 'package:get/get.dart';
import 'package:my_health/core/class/routes.dart';

abstract class SuccessReseetPasswordController extends GetxController {
  goToLogin();
}

class SuccessReseetPasswordControllerImp
    extends SuccessReseetPasswordController {
  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }
}
