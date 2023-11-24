import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_health/core/class/StatusRequest.dart';
import 'package:my_health/core/class/routes.dart';
// import 'package:my_health/data/controller/login.dart';
import 'package:my_health/routes.dart';
import 'package:my_health/screens/home_secreen.dart';
import 'package:my_health/test_view.dart';
import '../../core/function/validinput.dart';
import '../../data/controller/login_controller.dart';
import '../../function/alertexitapp.dart';
import '../widget/auth/Textformfield.dart';
import 'signup_scrren.dart';
import '../../components/curve_cliper.dart';
import '../main_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool secourText = true;
  @override
  Widget build(BuildContext context) {
    LoginControllerImp mycontroller = Get.put(LoginControllerImp());
    // TextEditingController id_number = new TextEditingController();
    // TextEditingController password = new TextEditingController();

    return Scaffold(
        body: WillPopScope(
      onWillPop: alertExitApp,
      child: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.blue[200],
        child: GetBuilder<LoginControllerImp>(
          builder: (mycontroller) => mycontroller.statusRequest ==
                  StatusRequest.loading
              ? const Center(child: Text("Loding"))
              : Form(
                  key: mycontroller.formState,
                  child: ListView(
                    children: [
                      ClipPath(
                        clipper: CurveCliper(),
                        child: Image(
                          height: MediaQuery.of(context).size.height / 2,
                          width: MediaQuery.of(context).size.height,
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/sehatey-logo.jpg'),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        margin: EdgeInsets.only(bottom: 25),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                '! منظور جديد لصحتك ',
                                style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 28,
                                )),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 25),
                              child: Text(
                                'تابع حالتك الصحية من أدوية،إجازات مريضة،وأنشطتك البدنية في منصة واحده',
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomTextFormAuth(
                              valid: (val) {
                                return validInput(val!, 10, 12, "id_number");
                              },
                              hinttext: 'رقم الهوية الوطنية',
                              controller: mycontroller.id_number,
                              icondata: Icons.perm_identity,
                            ),
                            GetBuilder<LoginControllerImp>(
                              builder: (mycontroller) => CustomTextFormAuth(
                                obscureText: mycontroller.isShowPassword,
                                onTapIcon: () {
                                  mycontroller.showPassword();
                                },
                                valid: (val) {
                                  return validInput(val!, 5, 30, "password");
                                },
                                hinttext: ' كلمة المرور',
                                controller: mycontroller.password,
                                icondata: Icons.lock_outline,
                              ),
                            ),
                            Row(
                              textDirection: TextDirection.rtl,
                              children: [
                                Text(
                                  'هل نسيت كلمة المرور؟',
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                InkWell(
                                    onTap: () {
                                      mycontroller.goToForgetPassword();
                                    },
                                    child: Text(
                                      ' تغير كلمة المرور',
                                      style: GoogleFonts.rubik(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.blue[900],
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 60),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.blue,
                                ),
                                child: MaterialButton(
                                  height: 50,
                                  onPressed: () {
                                    mycontroller.login();
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.login_sharp,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        ' تسجيل الدخول',
                                        style: GoogleFonts.rubik(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 19,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 60),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.blue[100],
                                ),
                                child: MaterialButton(
                                  height: 50,
                                  onPressed: () {
                                    mycontroller.goToSignUp();
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.account_circle_outlined,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        ' إنشاء حساب',
                                        style: GoogleFonts.rubik(
                                          textStyle: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 19,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              textDirection: TextDirection.rtl,
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'بالضغط على تسجيل او إنشاء حساب، فانت توافق على',
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                // ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      '        الشروط والاحكام',
                                      style: GoogleFonts.rubik(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.blueGrey[700]),
                                      ),
                                    )),
                              ],
                            ),
                            Row(
                              textDirection: TextDirection.rtl,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'وانك قد قرات',
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      '  سياسة الخصوصية',
                                      style: GoogleFonts.rubik(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Colors.blueGrey[700]),
                                      ),
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    ));
  }
}
