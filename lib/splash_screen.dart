import 'package:flutter/material.dart';

class Splash_screen extends StatelessWidget {
  const Splash_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Colors.white,
      child: Center(
        child: Container(
            height: 100,
            width: 100,
            child: CircularProgressIndicator(backgroundColor: Colors.redAccent)),
      ),
    );
  }
}
