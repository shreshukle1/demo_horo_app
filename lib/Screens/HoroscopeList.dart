import 'dart:ffi';
import 'package:demohoroapp/Screens/horoscope.dart';
import 'package:demohoroapp/model/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:horoscope/horoscope_flutter.dart';

class HoroscopeList extends StatefulWidget {
  HoroscopeList({Key key, this.name}) : super(key: key);
  final String name;

  @override
  _HoroscopeListState createState() => _HoroscopeListState();
}

class _HoroscopeListState extends State<HoroscopeList> {
  String selectedSunsign;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Color.fromRGBO(40, 40, 77, 100),
          centerTitle: true,
          title: Image.asset(
            "images/topStar.png",
            width: 50,
          ),
        ),
        backgroundColor: Color.fromRGBO(40, 40, 77, 100),
        body:  InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.white)),
                child: ListView.builder(
                    itemCount: options.length,
                    itemBuilder: (context, i){
                      return ListTile(
                        onTap: () => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => HoroscopeSign(options[i].sign)))
                        },
                        leading: ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: 44,
                              minHeight: 44,
                              maxWidth: 44,
                              maxHeight: 44,
                            ),

                            child:options[i].icon
                          //  Image.asset(
                          //   'images/star.jpeg',
                          //   height: 200,
                          //   width: 300,
                          //   fit: BoxFit.fill,
                          // ),
                        ),
                        title: Text(
                          options[i].sign,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        subtitle: Text(
                          options[i].date,
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w100),
                        ),
                      );
                    }
                ),
              ),
            )));
  }


}