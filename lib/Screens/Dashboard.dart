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
        child:  Column(
          children: <Widget>[

            SizedBox(height: 200),
            Container(
              child: Text("Scan Your Palm",style: TextStyle(
                fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,
                  letterSpacing: 4
              ),),
            ),
            SizedBox(height: 100,),
            Container(
              height: 85,
              width: 85,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CameraScreen()));
                },
                child: Icon(Icons.center_focus_strong, size: 80,),
                backgroundColor: Color.fromRGBO(0, 0, 51, 100),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
