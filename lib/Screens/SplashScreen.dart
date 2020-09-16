import 'dart:async';
import 'package:demohoroapp/Screens/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
//    Navigator.pushAndRemoveUntil(
//      context,
//      MaterialPageRoute(builder: (context) => LoginPage()),
//          (Route<dynamic> route) => false,
//    );

   Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Center(
        child: new Image.asset('images/zodo.jpg', fit: BoxFit.cover,alignment: Alignment.center,),
      ),
    );
  }
}