
import 'dart:ffi';
import 'package:demohoroapp/Screens/horoscope.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:horoscope/horoscope_flutter.dart';

class HoroscopeList extends StatefulWidget {
  HoroscopeList({Key key, this.name}) : super(key: key);
  final String name;

  @override
  _HoroscopeListState createState() => _HoroscopeListState();
}

class _HoroscopeListState extends State<HoroscopeList> {
  String selectedSunsign;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Color.fromRGBO(40, 40, 77, 100),
          centerTitle: true,
          title: Image.asset(
            "images/topStar.png",
            width: 50,
          ),
        ),
        backgroundColor: Color.fromRGBO(40, 40, 77, 100),
        body: Container(
            child: SingleChildScrollView(
                child: Column(children: getSunSignWidgets()))));
  }

  static const SUN_SIGNS = {
    "Aries": "March 21 – April 19",
    "Taurus": "April 20 – May 20",
    "Gemini": " May 21 – June 20",
    "Cancer": " June 21 – July 22",
    "Leo": " July 23 – August 22",
    "Virgo": " August 23 – September 22",
    "Libra": " September 23 – October 22",
    "Scorpio": " October 23 – November 21",
    "Sagittarius": " November 22 – December 21",
    "Capricorn": " December 22 – January 19",
    "Aquarius": " January 20 – February 18",
    "Pisces": "February 19 – March 20"
  };

  List<InkWell> getSunSignWidgets() {
    List<InkWell> widgets = [];
    SUN_SIGNS.forEach(
            (sign, date) => {widgets.add(buildInkWellWidgetForSign(sign, date))});
    return widgets;
  }

  InkWell buildInkWellWidgetForSign(String sign, String date) {
    return InkWell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: new BorderRadius.circular(10.0),
                border: Border.all(color: Colors.white)),
            child: ListTile(
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HoroscopeSign(sign)))
              },
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 44,
                  minHeight: 44,
                  maxWidth: 44,
                  maxHeight: 44,
                ),
                child: Image.asset(
                  'images/star.jpeg',
                  height: 200,
                  width: 300,
                  fit: BoxFit.fill,
                ),
              ),
              title: Text(
                sign,
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Text(
                date,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w100),
              ),
            ),
          ),
        ));
  }
}