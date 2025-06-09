import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom_nav.dart';
//import 'package:flutter_application_1/home.dart';
//import 'package:flutter_application_1/home1.dart';



void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBar(),
    );
  }
}