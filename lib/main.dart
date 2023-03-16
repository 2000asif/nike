import 'package:flutter/material.dart';
import 'dart:html';
import 'package:nike_project/splash_screen.dart';
import 'package:nike_project/widgets/home_screen.dart';
import 'package:nike_project/widgets/profile_screen.dart';

import 'buttom_nav_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
