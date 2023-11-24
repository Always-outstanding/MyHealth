import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/class/routes.dart';
import '../../data/controller/successSignUp_controller.dart';
import '../../data/controller/verifyCodeSignUp_controller.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp mycontroller =
        Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            tooltip: 'رجوع',
            onPressed: () {
              mycontroller.goToSignUp();
            },
            icon: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.black,
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'تحقق',
          style: GoogleFonts.rubik(
              textStyle: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          )),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 200,
                color: Colors.green,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                '! تم التحقق بنجاح',
                style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                )),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              'تم التحقق من حسابك بنجاح لمتابعة تسجيل الدخول قم بالضغط على الزر التالي وشكرا',
              style: GoogleFonts.rubik(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              textAlign: TextAlign.right,
            ),
            Spacer(),
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                child: MaterialButton(
                  height: 50,
                  onPressed: () {
                    mycontroller.goToLogin();
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
          ],
        ),
      ),
    );
  }
}
