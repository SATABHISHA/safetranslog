import 'dart:async';

import 'package:flutter/material.dart';
import 'package:safetranslog/screens/login/login_user.dart';

class SplashScreen extends StatefulWidget {
  //const SplashScreen({Key? key, required this.title}) : super(key: key);

  //final String title;
  static String id = 'SplashScreen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushNamed(context, LoginUser.id));
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // backgroundColor: Colors.redAccent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/splashscreen.png'),
              fit: BoxFit.cover
          ),

        ),

      ),
    );
  }
}