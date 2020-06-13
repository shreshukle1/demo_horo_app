import 'package:demohoroapp/Screens/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PasswordMissmatch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.center,

      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(30.0, 250.0, 30.0, 0.0),
          child: Text("Password's dont Match, Try Again",
              style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
        RaisedButton(
          child:Text('Try Again'),
          color: Colors.blue,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
          },


        )
      ],


    );
  }
}
