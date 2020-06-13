import 'package:flutter/material.dart';
import 'package:horoscope/horoscope/Horopscope.dart';
import 'package:horoscope/horoscope/HoroscopeDetails.dart';
import 'package:horoscope/horoscope/ZodiacSigns.dart';
import 'package:horoscope/horoscope_flutter.dart';


class DailyTab extends StatefulWidget {

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
    return new FutureBuilder(
      future: Horoscope.getDailyHoroscope(selectedZodiac).then((value) {
        if (value!=null){
          setState(() {
            sunsign = value.sunsign;
            time = value.date;
            horoscope = value.horoscope;
          });
        }
      }),

    );
  }
}