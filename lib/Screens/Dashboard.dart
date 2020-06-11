import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 51, 100),
      body: Center(
        child: Container(
          child: Text("hello world",style: TextStyle(color: Colors.white),),
        ),
      )
    );
  }
}
