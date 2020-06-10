import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key, this.user}) : super(key: key);
  final FirebaseUser user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home${user.email})'),
      ),
      body: Form(
        child: Column(
        children: <Widget>[
          Text(user.email)],
      )
    )

    );
  }
}