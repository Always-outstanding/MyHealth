import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (GetUtils.isUsername(val)) {
      return "اسم مستخدم غير صالح";
    }
  }

  if (type == "email") {
    if (GetUtils.isEmail(val)) {
      return "بريد إلكتروني غير صالح";
    }
  }

  if (val.isEmpty) {
    return "لا يمكن أن تكون فارغة";
  }

  if (type == "phone") {
    if (GetUtils.isPhoneNumber(val)) {
      return "هاتف غير صالح";
    }
  }
  // if (type == "id_Number") {
  //   if (GetUtils.isNum(val)) {
  //     return "not valid phone";
  //   }
  // }

  if (val.length < min) {
    return "لا يمكن أن يكون أقل من $min";
  }

  if (val.length > max) {
    return "لا يمكن أن يكون أكبر من $max";
  }
}
