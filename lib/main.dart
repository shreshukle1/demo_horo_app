import 'package:demohoroapp/Screens/login.dart';
import 'package:flutter/material.dart';
import 'Screens/SplashScreen.dart';
import 'package:demohoroapp/Components/BottomNav.dart';
import 'package:demohoroapp/Screens/login.dart';


void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner : false,
    home:  SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/Login': (BuildContext context) => new LoginPage()
    },
  ));
}