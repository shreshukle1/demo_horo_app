import 'package:demohoroapp/Components/datepicker.dart';
import 'package:demohoroapp/Components/passmissmatch.dart';
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
        backgroundColor: Color.fromRGBO(40, 40, 77, 100),
        resizeToAvoidBottomPadding: false,
        body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                  child: Column(
                    children: <Widget>[

                      Container(
                        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
                        child: Text('My Daily Horoscope',
                            style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
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
                                          color: Colors.white,
                                        ),
                                        border: new OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(4)),
                                          borderSide: new BorderSide(color: Colors.white),
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
                                          color: Colors.white,
                                        ),
                                        border: new OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(4)),
                                          borderSide: new BorderSide(color: Colors.white),
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
                                          color: Colors.white,
                                        ),
                                        border: new OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(4)),
                                          borderSide: new BorderSide(color: Colors.white),
                                        )
                                    ),
                                    keyboardType: TextInputType.emailAddress,
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
                                          color: Colors.white,
                                        ),
                                        border: new OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(4)),
                                          borderSide: new BorderSide(color: Colors.white),
                                        )
                                    ),
                                    keyboardType: TextInputType.phone,
                                    onSaved: (input) => _phoneNumber = input,

                                  ),
                                  SizedBox(height: 1.0),

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
                                          color: Colors.white,
                                        ),
                                        border: new OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(4)),
                                          borderSide: new BorderSide(color: Colors.white),
                                        )
                                    ),
                                    onSaved: (input) => _gender = input,

                                  ),

                                  SizedBox(height: 1.0),

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
                                            color: Colors.white
                                        ),
                                        border: new OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(4)),
                                          borderSide: new BorderSide(color: Colors.white),
                                        )

                                    ),
                                    obscureText: true,
                                    onSaved: (input) => _password = input,

                                  ),
                                  SizedBox(height: 1.0),

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
                                            color: Colors.white
                                        ),
                                        border: new OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(4)),
                                          borderSide: new BorderSide(color: Colors.white),
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
                                          color: Colors.white,
                                          elevation: 20.0,

                                          child: Center(
                                            child: Text('Register',
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
                            ),
                          ],
                        ),
                      )
                    ],
                  )
              ),
            )
        )
    );
  }

  void Register() async {
    if(_formKey.currentState.validate()) {
      _formKey.currentState.save();
      if (_password == _confirmpassword) {
        try{
          AuthResult result = await FirebaseAuth.instance.createUserWithEmailAndPassword(
              email: _email, password: _password);
          // create a document with the user id i.e create the user in the database
          FirebaseAuth _auth = FirebaseAuth.instance;
          final FirebaseUser user = await _auth.currentUser();
          await DatabaseServices(uid:user.uid).updateUserData(_firstName, _lastName, _email, _dob
              , _phoneNumber, _gender);

          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));

        }catch(e){
          print(e.message);
          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
        }
      }
      else{
        Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordMissmatch())); }
    }

  }



}
