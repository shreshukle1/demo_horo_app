import 'package:flutter/material.dart';
import 'Screens/SplashScreen.dart';
import 'package:demohoroapp/Components/BottomNav.dart';
import 'package:horoscope/horoscope/Horopscope.dart';
import 'package:horoscope/horoscope/HoroscopeDetails.dart';
import 'package:horoscope/horoscope/ZodiacSigns.dart';
import 'package:horoscope/horoscope_flutter.dart';


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