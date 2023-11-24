import 'package:flutter/material.dart';

class health_secreen extends StatefulWidget {
  const health_secreen({super.key});

  @override
  State<health_secreen> createState() => _health_secreenState();
}

class _health_secreenState extends State<health_secreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "جودة الحياة",
      style: TextStyle(color: Colors.blue[500], fontSize: 50),
    ));
  }
}
