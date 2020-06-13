import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demohoroapp/Screens/DailyTab.dart';
import 'package:demohoroapp/Screens/WeeklyTab.dart';
import 'package:demohoroapp/Screens/YearlyTab.dart';
import 'package:horoscope/horoscope_flutter.dart';

class HoroscopeSign extends StatelessWidget {

  String selectedSunSign;

  HoroscopeSign(String sunsign){
    this.selectedSunSign = sunsign;
  }

  TabController controller;
  final List<Tab> mytabs = <Tab>[
    Tab(child: Text("Today",style: TextStyle(color:Colors.black),)),
    Tab(child: Text("Weekly",style: TextStyle(color:Colors.black)),),
    Tab(child: Text("Yearly",style: TextStyle(color:Colors.black)),),
  ];

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
                    tabs: mytabs
                  ),
                ), body: TabBarView(
                  children: <Widget>[DailyTab(selectedSunSign),
                    WeeklyTab(selectedSunSign),
                    YearlyTab(selectedSunSign),

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
