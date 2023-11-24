import 'package:get/get.dart';
import 'package:my_health/core/class/routes.dart';

abstract class SuccessSignUpController extends GetxController {
  goToLogin();
  goToSignUp();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }
  
  @override
  goToSignUp() {
        Get.offNamed(AppRoute.login);

  }
}
