import 'package:demohoroapp/Components/Dialog.dart';
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
  DailyHoroscope horoscope = new DailyHoroscope();
  String selectedZodiac = ZodiacSigns.CAPRICORN;
  bool isDataLoaded = false;
  final GlobalKey<State> _keyLoader = new GlobalKey<State>();

   Future apiCall() async {
    DailyHoroscope response = await Horoscope.getDailyHoroscope(selectedZodiac);
      setState(() => {
      horoscope = response,
      isDataLoaded = true
      });
      return response;
  }

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
        future: apiCall(),
        builder: (ctx, snapshot) {
            return Text(
              horoscope.horoscope == null ? "" : horoscope.horoscope,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            );
        });
}
}