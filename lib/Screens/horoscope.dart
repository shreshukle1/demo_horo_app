import 'package:flutter/material.dart';

class horoscope extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new PreferredSize(
            preferredSize: Size.fromHeight(320.0), // here the desired height
            child: new Container(
              color: Colors.black,
              child: new SafeArea(
                child: Column(
                  children: <Widget>[
                    new Container(
                      child:  Image.asset("images/topStar.png",height: 300,),
                    ),
                    new TabBar(
                      tabs: [
                        new Text("Today"),
                        new Text("weekly"),
                        new Text("Yearly"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: new TabBarView(
            children: <Widget>[
              new Column(
                children: <Widget>[new Text(" Page 1")],
              ),
              new Column(
                children: <Widget>[new Text("Page 2")],
              ),
              new Column(
                children: <Widget>[new Text("Page 3")],
              )
            ],
          ),
        ),
      ),
    );


  }
}
