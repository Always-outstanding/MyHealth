import 'package:flutter/material.dart';

class family_secreen extends StatefulWidget {
  const family_secreen({super.key});

  @override
  State<family_secreen> createState() => _family_secreenState();
}

class _family_secreenState extends State<family_secreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('عائلتي',
          style: TextStyle(color: Colors.blue[500], fontSize: 50)),
    );
  }
}
