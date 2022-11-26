import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_page/Login_Page.dart';
import 'package:login_page/welcome%20page.dart';

class Authcontrollar extends GetxController {
  // Authcontrollar.instance...
  static Authcontrollar instance = Get.find();
  // add password,  email,  name..
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onInit() {
    super.onInit();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialscreen);
  }

  _initialscreen(User? user) {
    if (user == null) {
      print("login page");
      Get.offAll(() => loginpage());
    } else {
      Get.offAll(() => Wecomepage());
    }
  }
}
