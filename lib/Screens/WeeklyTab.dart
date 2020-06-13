import 'package:flutter/material.dart';
import 'package:horoscope/horoscope/Horopscope.dart';
import 'package:horoscope/horoscope/HoroscopeDetails.dart';
import 'package:horoscope/horoscope/ZodiacSigns.dart';
import 'package:horoscope/horoscope_flutter.dart';

class WeeklyTab extends StatelessWidget {
  String selectedZodiac;

  WeeklyTab(String sunsign) {
    this.selectedZodiac = sunsign;
  }

  Future<WeeklyHoroscope> apiCall() async {
    WeeklyHoroscope response =
        await Horoscope.getWeeklyHoroscope(selectedZodiac);
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WeeklyHoroscope>(
        future: apiCall(),
        builder: (ctx, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
                child: Text(
              snapshot.data.horoscope == null ? "" : snapshot.data.horoscope,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ));
          } else {
            return new CircularProgressIndicator();
          }
        });
  }
}
