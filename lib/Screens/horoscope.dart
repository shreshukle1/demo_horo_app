import 'package:flutter/material.dart';

class horoscope extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 51, 100),
      body: DefaultTabController(
          length: 3,
          child: Scaffold(


            body: Column(
              children: <Widget>[
                Container(
                  child: Image.asset('images/aries.jpg'),
                ),
                TabBar(indicatorSize: TabBarIndicatorSize.label, tabs: [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("APPS"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("MOVIES"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("GAMES"),
                    ),
                  ),
                ]),
                Container(
                  width: 400,
                  height: 200,
                  child: TabBarView(children: [
                    Icon(Icons.apps),
                    Icon(Icons.movie),
                    Icon(Icons.games),
                  ]),
                ),
              ],
            ),
          )
      )

    );
  }
}
