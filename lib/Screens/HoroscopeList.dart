import 'dart:ffi';
import 'package:demohoroapp/Screens/horoscope.dart';
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
  String sunsign = "Sunsign",
      time = "Time of Horoscope",
      horoscope = "Click on Button Above to get Horoscope";



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 51, 100),
        centerTitle: true,
        title: Image.asset("images/topStar.png",width: 50,),
      ),
      backgroundColor: Color.fromRGBO(0, 0, 51, 100),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //Aries
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => horoscopeSign(selectedZodiac: 'ARIES')));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.white)
                    ),

                    child:  ListTile(
                      leading: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: 44,
                          minHeight: 44,
                          maxWidth: 44,
                          maxHeight: 44,
                        ),
                        child: Image.asset('images/star.jpeg',
                        height: 200,
                        width: 300,fit: BoxFit.fill,),
                      ),

                      title: Text('Aries',style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,fontSize: 20),),
                      subtitle: Text('(March 21 - April 19)',style:
                      TextStyle(color: Colors.white,fontWeight: FontWeight.w100),),

                    ),

                  ),
                ),

              ),

              //Taurus
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.white)
                  ),
                  child:  ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 44,
                        maxHeight: 44,
                      ),
                      child: Image.asset('images/star.jpeg',
                        height: 200,
                        width: 300,fit: BoxFit.fill,),
                    ),
                    title: Text('Taurus',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    subtitle: Text(' (April 20 - May 20)',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w100),),
                  ),
                ),
              ),
              //Gemini
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.white)
                  ),
                  child:  ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 44,
                        maxHeight: 44,
                      ),
                      child: Image.asset('images/star.jpeg',
                        height: 200,
                        width: 300,fit: BoxFit.fill,),
                    ),
                    title: Text('Gemini',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    subtitle: Text('(May 21 - June 20)',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w100),),
                  ),
                ),
              ),
              //Cancer
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.white)
                  ),
                  child:  ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 44,
                        maxHeight: 44,
                      ),
                      child: Image.asset('images/star.jpeg',
                        height: 200,
                        width: 300,fit: BoxFit.fill,),
                    ),
                    title: Text('Cancer',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    subtitle: Text('(June 21 - July 22)',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w100),),
                  ),
                ),
              ),
              //Leo
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.white)
                  ),
                  child:  ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 44,
                        maxHeight: 44,
                      ),
                      child: Image.asset('images/star.jpeg',
                        height: 200,
                        width: 300,fit: BoxFit.fill,),
                    ),
                    title: Text('Leo',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    subtitle: Text('(July 23 - August 22)',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w100),),
                  ),
                ),
              ),
              //Virgo
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.white)
                  ),
                  child:  ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 44,
                        maxHeight: 44,
                      ),
                      child: Image.asset('images/star.jpeg',
                        height: 200,
                        width: 300,fit: BoxFit.fill,),
                    ),
                    title: Text('Virgo',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    subtitle: Text('(August 23 - September 22)',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w100),),
                  ),
                ),
              ),
              //Libra
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.white)
                  ),
                  child:  ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 44,
                        maxHeight: 44,
                      ),
                      child: Image.asset('images/star.jpeg',
                        height: 200,
                        width: 300,fit: BoxFit.fill,),
                    ),
                    title: Text('Libra',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    subtitle: Text('(September 23 - October 22)',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w100),),
                  ),
                ),
              ),
              //Scorpio
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.white)
                  ),
                  child:  ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 44,
                        maxHeight: 44,
                      ),
                      child: Image.asset('images/star.jpeg',
                      height: 200,
                      width: 300,fit: BoxFit.fill,),
                    ),
                    title: Text('Scorpio',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    subtitle: Text('(October 23 - November 21)',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w100),),
                  ),
                ),
              ),
              //Sagittarius
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.white)
                  ),
                  child:  ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 44,
                        maxHeight: 44,
                      ),
                      child: Image.asset('images/star.jpeg',
                        height: 200,
                        width: 300,fit: BoxFit.fill,),
                    ),
                    title: Text('Sagittarius',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    subtitle: Text('(November 22 - December 21)',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w100),),
                  ),
                ),
              ),
              //Capricorn
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.white)
                  ),
                  child:  ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 44,
                        maxHeight: 44,
                      ),
                      child: Image.asset('images/star.jpeg',
                        height: 200,
                        width: 300,fit: BoxFit.fill,),
                    ),
                    title: Text('Capricorn',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    subtitle: Text('(December 22 - January 19)',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w100),),
                  ),
                ),
              ),
              //Aquarius
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.white)
                  ),
                  child:  ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 44,
                        maxHeight: 44,
                      ),
                      child: Image.asset('images/star.jpeg',
                      height: 200,
                      width: 300,fit: BoxFit.fill,),
                    ),
                    title: Text('Aquarius',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    subtitle: Text('(January 20 - February 18)',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w100),),
                  ),
                ),
              ),
              //Pisces
              Padding(
                padding: const EdgeInsets.fromLTRB(8,8,8,0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.white)
                  ),
                  child:  ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 44,
                        maxHeight: 44,
                      ),
                      child: Image.asset('images/star.jpeg',
                        height: 200,
                        width: 300,fit: BoxFit.fill,),
                    ),
                    title: Text('Pisces',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    subtitle: Text('(February 19 - March 20)',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w100),),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
