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
    Tab(child: Text("Today",style: TextStyle(color:Colors.white),)),
    Tab(child: Text("Weekly",style: TextStyle(color:Colors.white)),),
    Tab(child: Text("Yearly",style: TextStyle(color:Colors.white)),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
        color: Color.fromRGBO(0, 0, 51, 100),

          child: DefaultTabController(
            length: 3,

            child: Scaffold(

              appBar: AppBar(
                centerTitle: true,
                title: Text(selectedSunSign),
                backgroundColor: Color.fromRGBO(0, 0, 51, 100),

                bottom: TabBar(
                  indicatorColor: Color.fromRGBO(0, 0, 51, 100),
                    tabs: mytabs
                ),
              ),
              body: Container(
                color: Color.fromRGBO(0, 0, 51, 100),
                child: TabBarView(

                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: DailyTab(selectedSunSign),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: WeeklyTab(selectedSunSign),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: YearlyTab(selectedSunSign),
                    ),

                  ],

                ),
              ),
            ),
          ),
        )
    );
  }
}