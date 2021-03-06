import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Screens/SplashScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:demohoroapp/Components/BottomNav.dart';



void main() async{


  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white, //top bar color
        statusBarIconBrightness: Brightness.dark, //top bar icons
        systemNavigationBarColor: Colors.white, //bottom bar color
        systemNavigationBarIconBrightness: Brightness.dark, //bottom bar icons

      )
  );
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('_email');
  print(email);

  SystemChrome.setPreferredOrientations(

  [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
         home: email==null?SplashScreen(): bottomNavigationBar())));
}

