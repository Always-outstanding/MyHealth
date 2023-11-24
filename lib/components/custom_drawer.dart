// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_health/screens/auth/login_screen.dart';
import 'package:my_health/screens/setting.dart';

import '../screens/home_secreen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Stack(),
          ListTile(
            trailing: Icon(
              Icons.settings_suggest_outlined,
              size: 30,
            ),
            title: Text(
              'الأعدادات ',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.end,
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => sitting())));
            },
          ),
          ListTile(
            trailing: Icon(
              Icons.help_outline,
              size: 30,
            ),
            title: Text(
              'عن تطبيق صحتي',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.end,
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => sitting())));
            },
          ),
          ListTile(
            trailing: Icon(
              Icons.chat,
              size: 30,
            ),
            title: Text(
              'الشروط والأحكام',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.end,
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => home_screen())));
            },
          ),
          ListTile(
            trailing: Icon(
              Icons.lock_open_rounded,
              size: 30,
            ),
            title: Text(
              'سياسة الخصوصية',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.end,
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => sitting())));
            },
          ),
          ListTile(
            trailing: Icon(
              Icons.phone_in_talk,
              size: 30,
            ),
            title: Text(
              'تواصل معنا ',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.end,
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => sitting())));
            },
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomRight,
              child: ListTile(
                trailing: Icon(
                  Icons.logout,
                  size: 30,
                ),
                title: Text(
                  'تسجيل الخروج',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.end,
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => LoginScreen())));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
