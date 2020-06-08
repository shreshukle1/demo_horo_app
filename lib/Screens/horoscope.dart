import 'package:flutter/material.dart';
import 'package:horoscope/horoscope/Horopscope.dart';
import 'package:horoscope/horoscope/HoroscopeDetails.dart';
import 'package:horoscope/horoscope/ZodiacSigns.dart';
import 'package:horoscope/horoscope_flutter.dart';

class horoscope extends StatelessWidget {
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
                  body: Container(
                    child: TabBar(
                      tabs: [
                        Tab(child: Text("Today",style: TextStyle(color:Colors.black),),),
                        Tab(child: Text("Weekly",style: TextStyle(color:Colors.black)),),
                        Tab(child: Text("Yearly",style: TextStyle(color:Colors.black)),),
                      ],
                    ),
                  ),
                ),
               ),
            ),
          ),
      ],
    ),
    );
  }
}
