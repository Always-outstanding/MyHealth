import '../../core/class/Request_Card.dart';
import '../../linkApi.dart';

class VeriyfiyCodeSignUpData {
  Curd curd;

  VeriyfiyCodeSignUpData(this.curd);
  postData(String email, String veriyfiycode) async {
    var response = await curd.postData(AppLink.verifycodessignup,
        {"user_email": email, "veriyfiycode": veriyfiycode});

    return response.fold((l) => l, (r) => r);
  }
}
