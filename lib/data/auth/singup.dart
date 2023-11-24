import '../../core/class/Request_Card.dart';
import '../../linkApi.dart';

class SignUpData {
  Curd curd;

  SignUpData(this.curd);
  postData(String user_name, String id_number, String mobile, String birth,
      String email, String password) async {
    var response = await curd.postData(AppLink.singUp, {
      "user_name": user_name,
      "user_id_number": id_number,
      "user_mobile": mobile,
      "user_birth": birth,
      "user_email": email,
      "user_pass": password,
    });

    return response.fold((l) => l, (r) => r);
  }
}
