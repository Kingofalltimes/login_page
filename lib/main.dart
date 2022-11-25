import 'package:flutter/material.dart';
import 'package:login_page/Login_Page.dart';
import 'package:login_page/signup_page.dart';
import 'package:login_page/welcome%20page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: loginpage());
  }
}
