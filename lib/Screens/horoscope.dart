import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demohoroapp/Screens/DailyTab.dart';
import 'package:demohoroapp/Screens/WeeklyTab.dart';
import 'package:demohoroapp/Screens/YearlyTab.dart';
import 'package:horoscope/horoscope_flutter.dart';

class horoscopeSign extends StatefulWidget {
  horoscopeSign({Key key, this.selectedZodiac}) : super(key: key);

  final String selectedZodiac;
   String value;

  @override
  _HoroscopeState createState() => _HoroscopeState();
}

class _HoroscopeState extends State<horoscopeSign> {
  String sunsign = "Sunsign",
      time = "Time of Horoscope",
      horoscope = "Click on Button Above to get Horoscope";

  String value = ZodiacSigns.ARIES;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 51, 100),
      body: new Column(
        children: [
          new Container(
            child:
            Image.asset("images/aries.jpg"),
          ),
          Flexible(
            child: new Container(
              height: 380,
              width: double.infinity,
              child: DefaultTabController(
                length: 3,

                child: Scaffold(
                  appBar: AppBar(
                    bottom: TabBar(
                    tabs: [
                      Tab(child: Text("Today",style: TextStyle(color:Colors.black),)
                      ),

                      Tab(child: Text("Weekly",style: TextStyle(color:Colors.black)),),
                      Tab(child: Text("Yearly",style: TextStyle(color:Colors.black)),),
                    ],
                  ),
                ), body: TabBarView(
                  children: <Widget>[DailyTab(),
                    WeeklyTab(),
                    YearlyTab(),

    ],

               ),
            ),
          ),
    ),
    ),
    ],
      )
    );
  }
}
