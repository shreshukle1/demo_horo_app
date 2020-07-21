import 'package:flutter/material.dart';

class Option {
  Image icon;
  String sign;
  String date;

  Option({this.icon, this.sign, this.date});
}
// "Aries": "March 21 – April 19",
  //   "Taurus": "April 20 – May 20",
  //   "Gemini": " May 21 – June 20",
  //   "Cancer": " June 21 – July 22",
  //   "Leo": " July 23 – August 22",
  //   "Virgo": " August 23 – September 22",
  //   "Libra": " September 23 – October 22",
  //   "Scorpio": " October 23 – November 21",
  //   "Sagittarius": " November 22 – December 21",
  //   "Capricorn": " December 22 – January 19",
  //   "Aquarius": " January 20 – February 18",
  //   "Pisces": "February 19 – March 20"
final options = [
  Option(
    icon: Image.asset("images/Aries.png"),
    sign: 'Aries',
    date: 'March 21 – April 19',
  ),
  Option(
    icon: Image.asset("images/Taurus.png"),
    sign: 'Taurus',
    date: 'April 20 – May 20',
  ),
  Option(
      icon: Image.asset("images/Gemini.png"),
    sign: 'Gemini',
    date: 'May 21 – June 20',
  ),
  Option(
    icon: Image.asset("images/Cancer.png"),
    sign: 'Cancer',
    date: 'June 21 – July 22',
  ),
  Option(
     icon: Image.asset("images/Leo.png"),
    sign: 'Leo',
    date: 'July 23 – August 22',
  ),
  Option(
     icon: Image.asset("images/Virgo.png"),
    sign: 'Virgo',
    date: 'August 23 – September 22',
  ),
  Option(
      icon: Image.asset("images/Libra.png"),
    sign: 'Libra',
    date: 'September 23 – October 22',
  ),
  Option(
     icon: Image.asset("images/Scorpio.png"),
    sign: 'Scorpio',
    date: 'October 23 – November 21',
  ),
    Option(
     icon: Image.asset("images/Sagittarius.png"),
    sign: 'Sagittarius',
    date: 'November 22 – December 21',
  ),
    Option(
     icon: Image.asset("images/Capricorn.png"),
    sign: 'Capricorn',
    date: 'December 22 – January 19',
  ),
   Option(
     icon: Image.asset("images/Aquarius.png"),
    sign: 'Aquarius',
    date: 'January 20 – February 18',
  ),
   Option(
     icon: Image.asset("images/Pisces.png"),
    sign: 'Pisces',
    date: 'February 19 – March 20',
  ),
];