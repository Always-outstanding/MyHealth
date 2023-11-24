class AppLink {
  //الربط بقاعدة البيانات
  static const String Server = "http://127.0.0.1:8080/health";
//الربط بجدول المستخدمين
  static const String test = "$Server/test.php";

  //الربط بجدول المستخدمين
  static const String singUp = "$Server/auth/signup.php";
  static const String login = "$Server/auth/login.php";
  static const String verifycodessignup = "$Server/auth/verfiycode.php";

  static const String checkEmail = "$Server/forgetpassword/checkemail.php";
  static const String res = "$Server/forgetpassword/checkemail.php";
}
