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
              color: Color.fromRGBO(0, 0, 51, 100),
              child: new SafeArea(
                child: Column(
                  children: <Widget>[
                    new Container(
                      child:  Image.asset("images/topStar.png",height: 300,),
                    ),
                    new TabBar(
                      tabs: [
                        new Text("Today",style: TextStyle(color: Colors.black),),
                        new Text("weekly",style: TextStyle(color: Colors.black),),
                        new Text("Yearly",style: TextStyle(color: Colors.black),),
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
                children: <Widget>[new Text("Lunches Page")],
              ),
              new Column(
                children: <Widget>[new Text("Cart Page")],
              ),
              new Column(
                children: <Widget>[new Text("Cart Page2")],
              )
            ],
          ),
        ),
      ),
    );


  }
}
