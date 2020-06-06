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
                child:  ListTile(
                  leading: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 44,
                      minHeight: 44,
                      maxWidth: 44,
                      maxHeight: 44,
                    ),
                    child: Image.asset('images/Aries.png'),
                  ),
                  title: Text('Aries',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                  subtitle: Text('(March 21 - April 19)'),
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}
