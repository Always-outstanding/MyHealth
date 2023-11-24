import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/class/routes.dart';
import '../../../data/controller/forgetpassword_controller.dart';
import '../../../routes.dart';

class forgetPassword extends StatelessWidget {
  const forgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp mycontroller =
        Get.put(ForgetPasswordControllerImp());
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
          'Forget Password',
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
              '! التحقق من البريد الإلكتروني',
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
              'الرجاء إدخال عنوان بريدك الإلكتروني لتلقي رمز التحقق',
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
              textAlign: TextAlign.end,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.number,
              cursorColor: Colors.red,
              // controller: mycontroller.id_num_controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintStyle: TextStyle(fontFamily: 'GoogleFonts.rubik'),
                filled: true,
                suffixIcon: Icon(Icons.alternate_email_rounded),
                hintText: 'البريد الاكتروني  ',
              ),
              onTap: () {},
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
                    mycontroller.goToVrerfiyCode();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.blue,
                      ),
                      Text(
                        ' تحقق',
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
