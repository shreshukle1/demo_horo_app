import 'package:demohoroapp/Components/BottomNav.dart';
import 'package:demohoroapp/Screens/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/rendering.dart';
import 'home.dart';


class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<State> _keyLoader = new GlobalKey<State>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 77, 100),
      resizeToAvoidBottomPadding: false,

      body: Column(
        children: <Widget>[

          Container(
            padding: EdgeInsets.fromLTRB(30.0, 100.0, 30.0, 0.0),
            child:
              CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('images/topStar.png'),),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 30.0),

              Form(
                key:_formKey,
                child:
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                    ),
                    TextFormField(
                      validator: (input) {
                        if (input.isEmpty & !input.contains('@')) {
                          return 'Provide an email';
                        }
                      },
                      style: TextStyle(
                        color: Colors.white
                      ),
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            color: Colors.white
                          ),
                          border: new OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: new BorderSide(color: Colors.white)
                          )
                      ),
                      onSaved: (input) => _email = input,

                    ),
                    SizedBox(height: 5.0),
                    Container(
                      padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                    ),
                    TextFormField(
                      validator: (input) {
                        if (input.length < 6) {
                          return 'Provide a password which has more then 6 characters';
                        }
                      },
                      style: TextStyle(
                          color: Colors.white
                      ),
                      decoration: InputDecoration(
                          labelText: 'Password',

                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              color: Colors.white
                          ),
                          border: new OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: new BorderSide(color: Colors.white)
                          )

                      ),
                      obscureText: true,
                      onSaved: (input) => _password = input,

                    ),

                    SizedBox(height: 20),

//                    Container(
//
//                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
//                      alignment: Alignment(1.0, 0.0),
//                      child: InkWell(
//                          child: Text('Forgot Password',
//                            style: TextStyle(
//                              color: Colors.orangeAccent,
//                              fontWeight: FontWeight.bold,
//                              fontFamily: 'Montserrat',
//                              decoration: TextDecoration.underline,
//                            ),)
//                      ),
//                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 40,
                      width: 250,
                      child: GestureDetector(
                          onTap: signIn,
                          child: Material(

                          borderRadius: BorderRadius.circular(30.0),

                      color: Colors.white,
                      elevation: 20.0,
                            child: Center(

                              child: Text('Login',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                ),),

                            ),

                          )

                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 40,
                      width: 300,
                      child: GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                        },
                          child: Material(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.white,
                            elevation: 20.0,

                            child: Center(
                              child: Text('Sign Up',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                ),),

                            ),

                          )

                      ),
                    ),

                  ],
                ),


              )



            ],
          )

        ],


      ),
    );
  }






void signIn() async {
  if(_formKey.currentState.validate()){
    _formKey.currentState.save();
    print(_email);
    print(_password);
    try{
      Dialogs.showLoadingDialog(context, _keyLoader);
      AuthResult  result= await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
      Navigator.of(_keyLoader.currentContext,rootNavigator: true).pop();//close the dialoge
      Navigator.push(context, MaterialPageRoute(builder: (context) => bottomNavigationBar()));
    }catch(e){
    }catch(e){
      print(e.message);
      Navigator.of(_keyLoader.currentContext,rootNavigator: true).pop();
    }
  }
}
}

class Dialogs {
  static Future<void> showLoadingDialog(
      BuildContext context, GlobalKey key) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new WillPopScope(
              onWillPop: () async => false,
              child: SimpleDialog(
                  key: key,
                  backgroundColor: Colors.black54,
                  children: <Widget>[
                    Center(
                      child: Column(children: [
                        CircularProgressIndicator(),
                        SizedBox(height: 10,),
                        Text("Please Wait....",style: TextStyle(color: Colors.blueAccent),)
                      ]),
                    )
                  ]));
        });
  }
}
