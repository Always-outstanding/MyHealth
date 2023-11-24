import '../../core/class/Request_Card.dart';
import '../../linkApi.dart';

class LoginData {
  Curd curd;

  LoginData(this.curd);
  postData(String id_number, String password) async {
    var response = await curd.postData(
        AppLink.login, {"user_id_number": id_number, "user_pass": password});

    return response.fold((l) => l, (r) => r);
  }
}
