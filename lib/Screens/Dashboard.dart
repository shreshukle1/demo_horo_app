import 'package:flutter/material.dart';
import 'package:demohoroapp/Screens/Palm.dart';

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
      ),
      floatingActionButton: Container(
        height: 85,
        width: 85,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => CameraScreen()));
          },
          child: Icon(Icons.center_focus_strong, size: 40,),
          backgroundColor: Color.fromRGBO(0, 0, 51, 100),
        ),
      ),
    );
  }
}
