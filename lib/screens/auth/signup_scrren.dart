import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_health/core/class/StatusRequest.dart';
import 'package:my_health/core/class/routes.dart';
import 'package:my_health/core/function/validinput.dart';
import 'package:my_health/screens/auth/login_screen.dart';

import '../../data/controller/signup_controller.dart';
import '../../function/alertexitapp.dart';
import '../widget/auth/Textformfield.dart';

class sigup extends StatefulWidget {
  const sigup({super.key});

  @override
  State<sigup> createState() => _sigupState();
}

class _sigupState extends State<sigup> {
  bool secourText = true;

  SignUpControllerImp mycontroller = Get.put(SignUpControllerImp());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WillPopScope(
      onWillPop: alertExitApp,
      child: GetBuilder<SignUpControllerImp>(
        builder: (mycontroller) => mycontroller.statusRequest ==
                StatusRequest.loading
            ? Center(
                child: Text("loading ...."),
              )
            : Form(
                key: mycontroller.formState,
                child: ListView(
                  children: [
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomRight,
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(45),
                                bottomLeft: Radius.circular(45)),
                            color: Colors.blue,
                          ),
                          child: Column(
                            children: [
                              Row(
                                textDirection: TextDirection.rtl,
                                children: [
                                  IconButton(
                                      tooltip: 'رجوع',
                                      onPressed: () {
                                        Get.offNamed(AppRoute.login);
                                      },
                                      icon: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                              SizedBox(height: 60),
                              Container(
                                alignment: Alignment.topRight,
                                padding: EdgeInsets.only(
                                    left: 5, right: 15, bottom: 2),
                                child: Text(
                                  '! عرفنا بنفسك أكثر   ',
                                  style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 28,
                                  )),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 15),
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  '  أدخل رقم الهوية، رقم الجوال ، وتاريخ الميلاد/ وعنوان البريد الالكتروني ،وكلمة المرور',
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Column(children: [
                            CustomTextFormAuth(
                              valid: (val) {
                                return validInput(val!, 10, 255, "username");
                              },
                              hinttext: ' الاسم الكامل ',
                              controller: mycontroller.user_name,
                              icondata: Icons.person_4_sharp,
                            ),
                            CustomTextFormAuth(
                              valid: (val) {
                                return validInput(val!, 9, 12, "id_number");
                              },
                              hinttext: 'رقم الهوية الوطنية',
                              controller: mycontroller.id_number,
                              icondata: Icons.perm_identity,
                            ),
                            CustomTextFormAuth(
                              valid: (val) {
                                return validInput(val!, 9, 10, "id_number");
                              },
                              hinttext: 'رقم الجوال ',
                              controller: mycontroller.mobile,
                              icondata: Icons.mobile_friendly,
                            ),
                            CustomTextFormAuth(
                              onTap: _SelectDate,
                              ReadOnly: true,
                              valid: (val) {},
                              hinttext: 'تاريخ الميلاد  ',
                              controller: mycontroller.birth,
                              icondata: Icons.date_range_outlined,
                            ),
                            CustomTextFormAuth(
                              valid: (val) {
                                return validInput(val!, 5, 100, "email");
                              },
                              hinttext: 'البريد الالكتروني  ',
                              controller: mycontroller.email,
                              icondata: Icons.alternate_email_rounded,
                            ),
                            GetBuilder<SignUpControllerImp>(
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
                                  'هل لديك حساب ؟',
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.offNamed(AppRoute.login);
                                  },
                                  child: Text(
                                    'تسجيل الدخول',
                                    style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.blue[900],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 300,
                              margin: EdgeInsets.symmetric(horizontal: 60),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.blue[100],
                              ),
                              child: MaterialButton(
                                height: 60,
                                onPressed: () {
                                  mycontroller.signUp();
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
                              ),
                            ),
                          ]),
                        ),
                        TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                // isScrollControlled: true,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(30))),
                                context: context,
                                builder: (context) => ListView(
                                  children: [
                                    Container(
                                      alignment: Alignment.bottomRight,
                                      child: IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: Colors.black,
                                          )),
                                    ),
                                    Column(
                                      textDirection: TextDirection.rtl,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [],
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: Text(
                              'تواصل معنا',
                              style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
      ),
    ));
  }

  Future<void> _SelectDate() async {
    DateTime? _picked = await showDatePicker(
      context: context,
      cancelText: "خروج",
      confirmText: "موافق ",
      helpText: "حدد تاريخ ميلادك",
      textDirection: TextDirection.rtl,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (_picked != null) {
      setState(() {
        mycontroller.birth.text = _picked.toString().split(" ")[0];
      });
    }
  }
}
