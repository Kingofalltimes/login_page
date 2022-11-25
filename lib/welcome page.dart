import 'package:flutter/material.dart';
import 'package:login_page/Login_Page.dart';
import 'signup_page.dart';

class Wecomepage extends StatelessWidget {
  const Wecomepage({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("Assets/signup.png"), fit: BoxFit.cover)),
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.14,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white70,
                  radius: 60,
                  backgroundImage: AssetImage("Assets/profile1.png"),
                )
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            width: w,
            margin: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                Text(
                  "a@abj.com",
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
          ),
          InkWell(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => loginpage())),
            child: Container(
              width: w * 0.5,
              height: h * 0.08,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage("Assets/loginbtn.png"),
                      fit: BoxFit.cover)),
              child: Center(
                child: Text(
                  "Sing out",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
