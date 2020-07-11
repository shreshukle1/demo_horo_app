import 'package:demohoroapp/Components/BottomNav.dart';
import 'package:demohoroapp/Components/Dialog.dart';
import 'package:demohoroapp/Screens/signup.dart';
import 'package:demohoroapp/check.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/rendering.dart';
import 'home.dart';
import 'package:shared_preferences/shared_preferences.dart';





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

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            SizedBox(height: 50.0),
            InkWell(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Check()));
                },
                child: Image.asset('images/topStar.png',height: 200,)),

            SizedBox(height: 30.0),

            Form(
              key:_formKey,
              child:
              Column(
                children: <Widget>[

                  Container(
                    decoration: BoxDecoration(
//                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: TextFormField(
                        
                      validator: (input) {
                        if (input.isEmpty & !input.contains('@')) {
                          return 'Provide an email';
                        }
                      },
                      style: TextStyle(
                          color: Colors.white
                      ),
                      decoration: InputDecoration(
                          hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.white70),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            borderSide: BorderSide(color: Colors.white)) ,

                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                      onSaved: (input) => _email = input,

                    ),
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
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white70),

                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            color: Colors.white
                        ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Color(0xFFFFFFFF))) ,

                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.white)),

                    ),
                    obscureText: true,
                    onSaved: (input) => _password = input,

                  ),


                  SizedBox(height: 30),
                  Container(
                    height: 40,
                    width: 300,
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
        ),
      ),
    );
  }






  void signIn() async {
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();
      print(_email);
      print(_password);
      print(BuildContext );
      try{
        Dialogs.showLoadingDialog(context, _keyLoader);
        AuthResult  result= await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
        Navigator.of(_keyLoader.currentContext,rootNavigator: true).pop();//close the dialoge

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => bottomNavigationBar()));

      }catch(e){
        Navigator.of(_keyLoader.currentContext,rootNavigator: true).pop();
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
      }
    }
  }
}



