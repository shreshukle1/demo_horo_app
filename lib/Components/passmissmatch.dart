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
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),

        ),
        Text("Password's dont match"),
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
