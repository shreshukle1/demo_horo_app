import 'package:flutter/material.dart';

class horoscope extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 51, 100),
      body: Container(
          child: Image.asset("image/aries.jpg"),),
    );
  }
}
