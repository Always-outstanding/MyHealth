import 'package:flutter/material.dart';

class date_secreen extends StatefulWidget {
  const date_secreen({super.key});

  @override
  State<date_secreen> createState() => _date_secreenState();
}

class _date_secreenState extends State<date_secreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text("المواعيد",
            style: TextStyle(color: Colors.blue[500], fontSize: 50)));
  }
}
