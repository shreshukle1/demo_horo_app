import 'package:flutter/material.dart';


class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {

  String _name;
  String _email;
  String _phoneNumber;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Colors.white70,
        ),

        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            borderSide: BorderSide(color: Colors.white)) ,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            borderSide: BorderSide(color: Colors.white)),

        hintText: 'Name',

      ),
      validator: (String value){
        if (value.isEmpty){
          return 'Name is Required';
        }
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(
          hintStyle: TextStyle(
            color: Colors.white70,
          ),

          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide: BorderSide(color: Colors.white)) ,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide: BorderSide(color: Colors.white)),

          hintText: 'Email',
          ),
      keyboardType: TextInputType.emailAddress,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email is Required';
        }

        if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
          return 'Please enter a valid email address';
        }
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Phone Number',


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
      validator: (String value){
        if (value.isEmpty){
          return 'Phone Number is Required';
        }
      },
      onSaved: (String value) {
        _phoneNumber = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 51, 100),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 51, 100),

      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(

          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildName(),
                SizedBox(height: 10),
                _buildEmail(),
                SizedBox(height: 10),
                _buildPhoneNumber(),
                SizedBox(height: 50),

                SizedBox(
                  height: 40,
                  width: 250,
                  child: RaisedButton(
                     shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                ),
                    child: Text('Submit',
                      style: TextStyle(color:Colors.blueGrey.shade900),
                    ),
                    onPressed: () {
                      if(!_formKey.currentState.validate()){
                        return;
                      }

                      _formKey.currentState.save();

                      print(_name);
                      print(_email);
                      print(_phoneNumber);

                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}