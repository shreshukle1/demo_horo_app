import 'package:flutter/material.dart';
import 'package:horoscope/horoscope/Horopscope.dart';
import 'package:horoscope/horoscope/HoroscopeDetails.dart';
import 'package:horoscope/horoscope/ZodiacSigns.dart';
import 'package:horoscope/horoscope_flutter.dart';

class DailyTab extends StatelessWidget {
  String selectedZodiac;

  DailyTab(String sunsign) {
    this.selectedZodiac = sunsign;
  }

  Future<DailyHoroscope> apiCall() async {
    DailyHoroscope response = await Horoscope.getDailyHoroscope(selectedZodiac);
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DailyHoroscope>(
        future: apiCall(),
        builder: (ctx, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
                child: Text(
              snapshot.data.horoscope == null ? "" : snapshot.data.horoscope,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ));
          } else {
            return new CircularProgressIndicator();
          }
        });
  }
}
