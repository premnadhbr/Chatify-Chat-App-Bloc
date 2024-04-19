import 'dart:async';

import 'package:chat_app/app/view/home/home.dart';
import 'package:chat_app/app/view/onboard/onboard.dart';
import 'package:chat_app/app/view/root/root.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  static const String keyLogin = "login";

  @override
  void initState() {
    super.initState();
    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Image.asset(
                      'assets/images/Chatify.jpg',
                      width: constraints.maxWidth / 1,
                      height: constraints.maxHeight / 1.7,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void whereToGo() async {
    var sharedpref = await SharedPreferences.getInstance();
    var isLoggdIn = sharedpref.getBool(keyLogin);

    Timer(Duration(seconds: 2), () {
      if (isLoggdIn != null) {
        if (isLoggdIn) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ));
        } else {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => AuthenticationScreen(),
              ));
        }
      } else {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => OnBoardScreen(),
            ));
      }
    });
  }
}
