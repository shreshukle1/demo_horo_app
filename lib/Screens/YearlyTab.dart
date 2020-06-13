import 'package:flutter/material.dart';
import 'package:horoscope/horoscope/Horopscope.dart';
import 'package:horoscope/horoscope/HoroscopeDetails.dart';
import 'package:horoscope/horoscope_flutter.dart';

class YearlyTab extends StatelessWidget {
  String selectedZodiac;

  YearlyTab(String sunsign) {
    this.selectedZodiac = sunsign;
  }

  Future<YearlyHoroscope> apiCall() async {
    YearlyHoroscope response =
    await Horoscope.getYearlyHoroscope(selectedZodiac);
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<YearlyHoroscope>(
        future: apiCall(),
        builder: (ctx, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
                child: Text(
                  snapshot.data.horoscope == null ? "" : snapshot.data
                      .horoscope,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ));
          } else {
            return new CircularProgressIndicator();
          }
        });
  }

}