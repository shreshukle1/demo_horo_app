import 'package:flutter/material.dart';
import 'package:horoscope/horoscope/Horopscope.dart';
import 'package:horoscope/horoscope/HoroscopeDetails.dart';
import 'package:horoscope/horoscope/ZodiacSigns.dart';
import 'package:horoscope/horoscope_flutter.dart';


class DailyTab extends StatefulWidget {
  DailyTab({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DailyTabState createState() => _DailyTabState();
}
class _DailyTabState extends State<DailyTab> {
  String sunsign = "Sunsign",
        time = "Time of Horoscope",
      horoscope = "Click on Button Above to get Horoscope";

  String selectedZodiac = ZodiacSigns.CAPRICORN;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Wrap(
              spacing: 3.0,
              children: <Widget>[
                Horoscope.getDailyHoroscope(selectedZodiac).then((onValue){

                }
        ],

              ),
            ],
        )

      ),
    );
  }


}