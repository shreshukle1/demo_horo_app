import 'package:flutter/material.dart';

class HoroscopeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("images/topStar.png",width: 50,),
      ),
      backgroundColor: Color.fromRGBO(0, 0, 51, 100),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //Aries
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
                      child: Image.asset('images/Aries.png'),
                    ),
                    title: Text('Aries',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    subtitle: Text('(March 21 - April 19)',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w100),),
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
                      child: Image.asset('images/Aries.png'),
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
                      child: Image.asset('images/Aries.png'),
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
                      child: Image.asset('images/Aries.png'),
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
                      child: Image.asset('images/Aries.png'),
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
                      child: Image.asset('images/Aries.png'),
                    ),
                    title: Text('Vigro',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
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
                      child: Image.asset('images/Aries.png'),
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
                      child: Image.asset('images/Aries.png'),
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
                      child: Image.asset('images/Aries.png'),
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
                      child: Image.asset('images/Aries.png'),
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
                      child: Image.asset('images/Aries.png'),
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
                      child: Image.asset('images/Aries.png'),
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
