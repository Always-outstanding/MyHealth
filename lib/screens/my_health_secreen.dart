import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

import '../components/custom_drawer.dart';
import 'date_secreen.dart';
import 'family_secreen.dart';
import 'health_secreen.dart';
import 'home_secreen.dart';

class my_health_secreen extends StatefulWidget {
  const my_health_secreen({super.key});

  @override
  State<my_health_secreen> createState() => _my_health_secreenState();
}

class _my_health_secreenState extends State<my_health_secreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text("صحتي",
            style: TextStyle(color: Colors.blue[500], fontSize: 50)));
  }
}
