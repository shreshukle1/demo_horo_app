import 'package:flutter/material.dart';

class HoroscopeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 77, 100),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.white)
                ),
                child: const ListTile(
                  leading: Icon(Icons.album, size: 50),
                  title: Text('Heart Shaker'),
                  subtitle: Text('TWICE'),
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}
