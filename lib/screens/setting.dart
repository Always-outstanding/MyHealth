// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_health/screens/auth/login_screen.dart';

class sitting extends StatelessWidget {
  const sitting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'الاعدادات',
          style: TextStyle(
              letterSpacing: 3,
              color: Colors.blue,
              fontSize: 33,
              fontWeight: FontWeight.bold),
        ),
      ),
      body:
          // لعرض بروفايل والبيانات الرثيسيةس
          Column(
        children: [
          Stack(),
        ],
      ),
    );
  }
}
