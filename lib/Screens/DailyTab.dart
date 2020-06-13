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
  final GlobalKey<State> _keyLoader = new GlobalKey<State>();

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    Dialogs.showLoadingDialog(context, _keyLoader);
    Horoscope.getDailyHoroscope(selectedZodiac).then((val) => {
      setState(() => {
        horoscope = val
      }),
      Navigator.of(_keyLoader.currentContext,rootNavigator: true).pop()
    });

    return new Text(
      horoscope.horoscope
    );
  }
}