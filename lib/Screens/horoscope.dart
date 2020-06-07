import 'package:flutter/material.dart';

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
          new Container(
            child: DefaultTabController(
              length: 3,
              child: Scaffold(
                appBar: AppBar(
                  bottom: TabBar(
                    tabs: [
                    Tab(child: Text("Today"),),
                    Tab(child: Text("Weekly"),),
                    Tab(child: Text("Yearly"),),
                  ],
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
