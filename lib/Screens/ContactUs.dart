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
          filled: true,
          fillColor: Color(0xFFF2F2F2),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1,color: Colors.blueGrey.shade900),
          ),
          labelText: 'Name'),
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
          filled: true,
          fillColor: Color(0xFFF2F2F2),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1,color: Colors.blueGrey.shade900),
          ),
          labelText: 'Email'),
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
        filled: true,
          fillColor: Color(0xFFF2F2F2),
          focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1,color: Colors.blueGrey.shade900),
          ),
          labelText: 'Phone Number'),
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
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              _buildName(),
              _buildEmail(),
              _buildPhoneNumber(),
            SizedBox(height: 100),
            RaisedButton(
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
            ],
          ),
        ),
      ),
    );
  }
}
