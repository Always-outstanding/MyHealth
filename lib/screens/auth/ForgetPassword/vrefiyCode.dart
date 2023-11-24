import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:otp_text_field/otp_text_field.dart';
// import 'package:otp_text_field/style.dart';
import 'package:otp_text_field_v2/otp_field_v2.dart';

import '../../../core/class/routes.dart';
import '../../../data/controller/vrefiyCode_controller.dart';

class vrefiyCode extends StatelessWidget {
  const vrefiyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VryifyCodeControllerImp mycontroller = Get.put(VryifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            tooltip: 'رجوع',
            onPressed: () {
              Get.offNamed(AppRoute.login);
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
          'Verification Code',
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
              '! التحقق من الكود ',
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
              'الرجاء إدخال الكود الذي تم إرسالة الى بريدك الإلكتروني',
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
            OTPTextFieldV2(
              // controller: otpController,
              length: 5,
              fieldStyle: FieldStyle.underline,
              keyboardType: TextInputType.number,

              width: MediaQuery.of(context).size.width,
              fieldWidth: 50.0,
              textFieldAlignment: MainAxisAlignment.spaceAround,
              outlineBorderRadius: 15,
              style: TextStyle(fontSize: 17),
              onChanged: (verificaionCode) {
                print("Changed: " + verificaionCode);
              },
              onCompleted: (String verificaionCode) {
                mycontroller.goToResetPassword();

                print("Completed: " + verificaionCode);
              },
            ),
          ],
          // ),
        ),
      ),
    );
  }
}
