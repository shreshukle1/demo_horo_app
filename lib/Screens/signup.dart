import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/rendering.dart';


class SignUp extends StatefulWidget {

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _firstName, _lastName,_email,_password,_confirmpassword,_dob,_phoneNumber,_gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomPadding: false,
      key: _formKey,
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/horoscope.jpg'),
                  fit: BoxFit.cover)


          ),
          child: Column(
            children: <Widget>[

              Container(
                padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
                child: Text('My Daily Horoscope Sign Up Page',
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 2.0),
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                  ),

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
                  SizedBox(height: 2.0),
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
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
                  SizedBox(height: 2.0),
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
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
                  SizedBox(height: 2.0),
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                  ),

                  TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Provide a valid DOB';
                      }
                    },
                    style: TextStyle(
                        color: Colors.white
                    ),

                    decoration: InputDecoration(
                        labelText: 'DOB',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          color: Colors.orangeAccent,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.greenAccent)
                        )
                    ),
                    onSaved: (input) => _dob = input,

                  ),
                  SizedBox(height: 2.0),
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                  ),

                  TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Provide a valid Phone Number';
                      }
                    },
                    style: TextStyle(
                        color: Colors.white
                    ),

                    decoration: InputDecoration(
                        labelText: 'Phone Number',
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
                  SizedBox(height: 2.0),
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
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

                  SizedBox(height: 2.0),
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
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
                  SizedBox(height: 2.0),
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
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

                  SizedBox(height: 10),


                  Container(
                    height: 40,
                    width: 250,
                    child: Material(
                        borderRadius: BorderRadius.circular(30.0),
                        shadowColor: Colors.amber,
                        color: Colors.blue,
                        elevation: 20.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text('Sign Up',
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
              )

            ],


          )
      ),
    );
  }






//  void signIn() async {
//    if(_formKey.currentState.validate()){
//      _formKey.currentState.save();
//      try{
//        AuthResult result = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
//        Navigator.push(context, MaterialPageRoute(builder: (context) => Home(user: result.user)));
//      }catch(e){
//        print(e.message);
//      }
//    }
//  }
}


