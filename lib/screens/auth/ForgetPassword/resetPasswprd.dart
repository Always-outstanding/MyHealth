import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/class/routes.dart';
import '../../../data/controller/ResetPassword_Controller.dart';
import '../../../routes.dart';

class resetPasswprd extends StatelessWidget {
  const resetPasswprd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool secourText = true;

    ResetPasswordControllerImp mycontroller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            tooltip: 'رجوع',
            onPressed: () {
              mycontroller.goToForgrtPassword();
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
          'Reset Password',
          style: GoogleFonts.rubik(
              textStyle: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          )),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              ' كملة المرور الجديدة',
              style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 24,
              )),
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'الرجاء إدخال  كلمة المرور الجديدة',
              style: GoogleFonts.rubik(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: mycontroller.password_controller,
              obscureText: secourText,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintStyle: TextStyle(fontFamily: 'GoogleFonts.rubik'),
                filled: true,
                suffixIcon: Icon(Icons.lock_outline),
                hintText: 'كلمة المرور',
              ),
              textAlign: TextAlign.end,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: mycontroller.repassword_controller,
              obscureText: secourText,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintStyle: TextStyle(fontFamily: 'GoogleFonts.rubik'),
                filled: true,
                suffixIcon: Icon(Icons.lock_outline),
                hintText: 'تاكيد كلمة المرور',
              ),
              textAlign: TextAlign.end,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue[100],
                ),
                child: MaterialButton(
                  height: 50,
                  onPressed: () {
                    mycontroller.goToSuccessResetPassword();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.blue,
                      ),
                      Text(
                        ' حفظ',
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
          ],
          // ),
        ),
      ),
    );
  }
}
