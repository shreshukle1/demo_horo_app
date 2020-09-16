import 'package:demohoroapp/Components/datepicker.dart';
import 'package:demohoroapp/Components/passmissmatch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/rendering.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
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


  bool isValidDob(String _dob) {
    if (_dob.isEmpty){
      return true;
    }
    else{
      return false;
    }
  }

  List<String> _locations = ['Male', 'Female', 'Others']; // Option 2
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(0, 0, 0, 100),
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[

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
                                  hintText: 'First Name',
                                  hintStyle: TextStyle(
                                    color: Colors.white70,
                                  ),

                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                      borderSide: BorderSide(color: Colors.white)) ,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                      borderSide: BorderSide(color: Colors.white)),

                                ),
                                onSaved: (input) => _firstName = input,

                              ),
                              SizedBox(height: 10.0),


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
                                  hintText: 'Last Name',
                                  hintStyle: TextStyle(
                                    color: Colors.white70,
                                  ),

                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(50.0)
                                      ),
                                      borderSide: BorderSide(color: Colors.white)) ,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                      borderSide: BorderSide(color: Colors.white)),
                                ),
                                onSaved: (input) => _lastName = input,

                              ),
                              SizedBox(height: 10.0),

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
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                    color: Colors.white70,
                                  ),

                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                      borderSide: BorderSide(color: Colors.white)) ,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                      borderSide: BorderSide(color: Colors.white)),
                                ),
                                keyboardType: TextInputType.emailAddress,
                                onSaved: (input) => _email = input,

                              ),


                              SizedBox(height: 10.0),

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
                                  hintText: 'Mobile Number',
                                  hintStyle: TextStyle(
                                    color: Colors.white70,
                                  ),

                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                      borderSide: BorderSide(color: Colors.white)) ,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                      borderSide: BorderSide(color: Colors.white)),
                                ),
                                keyboardType: TextInputType.phone,
                                onSaved: (input) => _phoneNumber = input,

                              ),




                              SizedBox(height: 10.0),

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
                                  hintText: 'Password',

                                  hintStyle: TextStyle(
                                    color: Colors.white70,
                                  ),

                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                      borderSide: BorderSide(color: Colors.white)) ,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                      borderSide: BorderSide(color: Colors.white)),

                                ),
                                obscureText: true,
                                onSaved: (input) => _password = input,

                              ),
                              SizedBox(height: 10.0),

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
                                  hintText: 'Confirm Password',

                                  hintStyle: TextStyle(
                                    color: Colors.white70,
                                  ),

                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                      borderSide: BorderSide(color: Colors.white)) ,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                      borderSide: BorderSide(color: Colors.white)),

                                ),
                                obscureText: true,
                                onSaved: (input) => _confirmpassword = input,


                              ),



                              Container(
                                child: new Theme(
                                  data: Theme.of(context).copyWith(
                                    canvasColor: Color.fromRGBO(0, 0, 51, 100),
                                  ),
                                  child: DropdownButtonFormField(
                                    style: TextStyle(color: Colors.white, fontSize: 16),
                                    iconEnabledColor: Colors.white,
                                    decoration: InputDecoration(
//                                        enabledBorder: OutlineInputBorder(
//                                            borderRadius: BorderRadius.all(Radius.circular(8)),
//                                            borderSide: BorderSide(color: Colors.grey[200])),
//                                        focusedBorder: OutlineInputBorder(
//                                            borderRadius: BorderRadius.all(Radius.circular(8)),
//                                            borderSide: BorderSide(color: Colors.grey[300])),
                                        filled: true,
                                        fillColor: Color.fromARGB(0, 0, 0, 1),
                                        hintText: "Select your gender",
                                        hintStyle: TextStyle(color: Colors.white)),
                                    hint: Text(
                                      '',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    value: _gender,
                                    onChanged: (newValue) {
                                      setState(() {
                                        _gender = newValue;
                                      });
                                    },
                                    items: _locations.map((location) {
                                      return DropdownMenuItem(
                                        child: new Text(
                                          location,
                                        ),
                                        value: location,
                                      );
                                    }).toList(),
                                  ),
                                ),

                              ),
                              SizedBox(height: 10.0),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(10,20,0,10),
                                child: SingleChildScrollView(

                                  child: BasicDateField(

                                      "Date of Birth",
                                          (date) => {
                                        _dob = date.toIso8601String()
                                      }

                                  ),
                                ),
                              ),

                              SizedBox(height: 10),


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