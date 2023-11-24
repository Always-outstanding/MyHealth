import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_health/screens/home_secreen.dart';

import '../components/custom_drawer.dart';
import 'date_secreen.dart';
import 'family_secreen.dart';
import 'health_secreen.dart';
import 'my_health_secreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectindex = 2;
  String str = "الصفحة الرئيسية";
  List<Widget> widgetPages = [
    my_health_secreen(),
    date_secreen(),
    home_screen(),
    family_secreen(),
    health_secreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          str,
          style: TextStyle(
              letterSpacing: 3,
              color: Colors.blue,
              fontSize: 33,
              fontWeight: FontWeight.bold),
        ),
      ),
      drawer: CustomDrawer(),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.blue,
        backgroundColor: Colors.white,
        height: 65,
        animationCurve: Curves.bounceOut,
        animationDuration: Duration(
          milliseconds: 300,
        ),
        index: 2,
        items: <Widget>[
          Icon(Icons.health_and_safety_outlined, color: Colors.white, size: 30),
          Icon(
            Icons.date_range,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.home,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.family_restroom,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.monitor_heart_rounded,
            color: Colors.white,
            size: 30,
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            setState(() {
              str = 'صحتي';
              selectindex = index;
            });
          } else if (index == 1) {
            setState(() {
              str = 'المواعيد';
              selectindex = index;
            });
          } else if (index == 2) {
            setState(() {
              str = "الصفحة الرئيسية";
              selectindex = index;
            });
          } else if (index == 3) {
            setState(() {
              str = 'عائلتي';
              selectindex = index;
            });
          } else if (index == 4) {
            setState(() {
              str = 'جودة الحياة';
              selectindex = index;
            });
          } else {
            str = '';
          }
        },
      ),
      body: widgetPages.elementAt(selectindex),
    );
  }
}
