import 'package:flutter/material.dart';
import 'Screens/SplashScreen.dart';
import 'package:demohoroapp/Components/BottomNav.dart';



void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner : false,
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/Login': (BuildContext context) => new bottomNavigationBar()
    },
  ),
  );
}