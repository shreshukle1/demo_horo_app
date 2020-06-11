import 'package:demohoroapp/Components/datepicker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/rendering.dart';

import 'database.dart';
import 'login.dart';

class SignUp extends StatefulWidget {

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _firstName, _lastName,_email,_password,_confirmpassword,_phoneNumber,_gender;
  var _dob;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomPadding: false,
        body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/horoscope.jpg'),
                          fit: BoxFit.cover)


                  ),
                  child: Column(
                    children: <Widget>[

                      Container(
                        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
                        child: Text('My Daily Horoscope Sign Up Page',
                            style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 10.0),
                          Container(
                            // padding: EdgeInsets.fromLTRB(10.0, 5.0, 1.0, 5.0),
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  validator: (input) {
                                    if (input.isEmpty) {
                                      return 'Provide a First Name';
                                    }
                                  },
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                  decoration: InputDecoration(
                                      labelText: 'First Name',
                                      labelStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat',
                                        color: Colors.orangeAccent,
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.greenAccent)
                                      )
                                  ),
                                  onSaved: (input) => _firstName = input,

                                ),
                                SizedBox(height: 1.0),
                                Container(
                                  //  padding: EdgeInsets.fromLTRB(10.0, 5.0, 1.0, 5.0),
                                ),

                                TextFormField(
                                  validator: (input) {
                                    if (input.isEmpty) {
                                      return 'Provide a Last Name';
                                    }
                                  },
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                  decoration: InputDecoration(
                                      labelText: 'Last Name',
                                      labelStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat',
                                        color: Colors.orangeAccent,
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.greenAccent)
                                      )
                                  ),
                                  onSaved: (input) => _lastName = input,

                                ),
                                SizedBox(height: 1.0),
                                Container(
                                  //  padding: EdgeInsets.fromLTRB(10.0, 5.0, 1.0, 5.0),

                                ),

                                TextFormField(
                                  validator: (input) {
                                    if (input.isEmpty) {
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
                                        color: Colors.orangeAccent,
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.greenAccent)
                                      )
                                  ),
                                  onSaved: (input) => _email = input,

                                ),
                                SizedBox(height: 3.0),

                                BasicDateField(
                                    "Date of Birth",
                                        (date) => {
                                      _dob = date.toIso8601String()
                                    }
                                ),
                                SizedBox(height: 1.0),
                                Container(
                                  // padding: EdgeInsets.fromLTRB(10.0, 5.0, 1.0, 5.0),

                                ),

                                TextFormField(
                                  validator: (input) {
                                    if (input.length<10 || input.length>10 || input.isEmpty) {
                                      return 'Provide a valid Phone Number';
                                    }
                                  },
                                  style: TextStyle(
                                      color: Colors.white
                                  ),

                                  decoration: InputDecoration(
                                      labelText: 'Mobile Number',
                                      labelStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat',
                                        color: Colors.orangeAccent,
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.greenAccent)
                                      )
                                  ),
                                  onSaved: (input) => _phoneNumber = input,

                                ),
                                SizedBox(height: 1.0),
                                Container(
                                  //  padding: EdgeInsets.fromLTRB(10.0, 5.0, 1.0, 5.0),
                                ),

                                TextFormField(
                                  validator: (input) {
                                    if (input.isEmpty) {
                                      return 'Provide a Gender';
                                    }
                                  },
                                  style: TextStyle(
                                      color: Colors.white
                                  ),

                                  decoration: InputDecoration(
                                      labelText: 'Gender',
                                      labelStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat',
                                        color: Colors.orangeAccent,
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.greenAccent)
                                      )
                                  ),
                                  onSaved: (input) => _gender = input,

                                ),

                                SizedBox(height: 1.0),
                                Container(
                                  // padding: EdgeInsets.fromLTRB(10.0, 5.0, 1.0, 5.0),
                                ),
                                TextFormField(
                                  validator: (input) {
                                    if (input.isEmpty) {
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
                                          color: Colors.orangeAccent
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.greenAccent)
                                      )

                                  ),
                                  obscureText: true,
                                  onSaved: (input) => _password = input,

                                ),
                                SizedBox(height: 1.0),
                                Container(
                                  // padding: EdgeInsets.fromLTRB(10.0, 5.0, 1.0, 0.0),
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
                                      labelText: 'Confirm Password',

                                      labelStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Montserrat',
                                          color: Colors.orangeAccent
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.greenAccent)
                                      )

                                  ),
                                  obscureText: true,
                                  onSaved: (input) => _confirmpassword = input,

                                ),

                                SizedBox(height: 7),


                                Container(
                                  height: 40,
                                  width: 250,
                                  child: GestureDetector(
                                      onTap: Register,
                                      child: Material(
                                        borderRadius: BorderRadius.circular(30.0),
                                        shadowColor: Colors.amber,
                                        color: Colors.blue,
                                        elevation: 20.0,

                                        child: Center(
                                          child: Text('Register',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Montserrat',
                                            ),),

                                        ),

                                      )

                                  ),
                                ),
                              ],
                            ),

                          ),







                        ],
                      )

                    ],


                  )
              ),
            )
        )
    );
  }






  void Register() async {


    if(_formKey.currentState.validate()){

      if (_password == _confirmpassword){
        try{
          _formKey.currentState.validate();
          _formKey.currentState.save();
          AuthResult result = await FirebaseAuth.instance.createUserWithEmailAndPassword(
              email: _email, password: _password);
          // create a document with the user id i.e create the user in the database
          FirebaseAuth _auth = FirebaseAuth.instance;
          final FirebaseUser user = await _auth.currentUser();

          await DatabaseServices(uid:user.uid).updateUserData(_firstName, _lastName, _email, _dob
              , _phoneNumber, _gender);
          print(_email);
          print(_password);
          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));

        }catch(e){
          print(e.message);
        }
      }
    }
  }



}