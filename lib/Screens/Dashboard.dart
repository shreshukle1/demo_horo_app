import 'package:demohoroapp/Screens/database.dart';
import 'package:demohoroapp/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:demohoroapp/Screens/Palm.dart';
import 'package:intl/intl.dart';
import 'package:horoscope/horoscope_flutter.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
   String sunsign = "Sunsign",
      time = "Time of Horoscope",
      horoscope = "Click on Button Above to get Horoscope";

  String selectedZodiac = ZodiacSigns.CAPRICORN;
  
  User user = new User("firstName", "Lastname", "Email", DateTime.now().toIso8601String(), "Phone Number", "");
   static String getFormattedDate(String date) {
    return DateFormat("yyyy-MM-dd").format(DateTime.parse(date));
  }


String getRashiFromDate() {
      
  var a = DateTime.parse(getFormattedDate("${user.dob}"));
if( (a.month == 1 && a.day >= 20) || (a.month == 2 && a.day <= 18 ) ) {
print("this is aquaries");
return "AQUARIOUS";
}
else if( (a.month == 2 && a.day >= 19) || (a.month == 3 && a.day <= 20 ) ) {
print("it is pisces");
return 'PISCES';
}
else if( (a.month == 3 && a.day >= 21) || (a.month == 4 && a.day <= 19 ) ) {
print("it is aries");
return 'ARIES';
}
else if( (a.month == 4 && a.day >= 20) || (a.month == 5 && a.day <= 20 ) ) {
print("it is Taurus");
return 'TAURUS';
}
else if( (a.month == 5 && a.day >= 21) || (a.month == 6 && a.day <= 20 ) ) {
print("it is Gemini");
return 'GEMINI';
}
else if( (a.month == 6 && a.day >= 21) || (a.month == 7 && a.day <= 22 ) ) {
print("it is Cancer");
return 'CANCER';
}
else if( (a.month == 7 && a.day >= 23) || (a.month == 8 && a.day <= 22 ) ) {
print("it is leo");
return 'LEO';
}
else if( (a.month == 8 && a.day >= 23) || (a.month == 9 && a.day <= 22 ) ) {
print("it is Virgo");
return 'VIRGO';
}
else if( (a.month == 9 && a.day >= 23) || (a.month == 10 && a.day <= 22 ) ) {
print("it is libra");
return 'LIBRA';
}
else if( (a.month == 10 && a.day >= 23) || (a.month == 11 && a.day <= 21 ) ) {
print("it is Scorpio");
return 'SCORPIO';
}
else if( (a.month == 11 && a.day >= 22) || (a.month == 12 && a.day <= 21 ) ) {
print("it is Sagittarius");
return 'SAGITTARIUS';
}
else if( (a.month == 12 && a.day >= 22) || (a.month == 12 && a.day <= 219 ) ) {
print("it is Capricorn");
return 'CAPRICORN';
}
return "last";
}

@override
  void initState() {
    
     Horoscope.getDailyHoroscope(getRashiFromDate()).then((val) {
                      if (val != null) {
                        setState(() {
                          time = user.dob.toString();
                          horoscope = val.horoscope;
                          sunsign = val.sunsign;
                          print(val.horoscope);
                        });
                      }
                    });
     FirebaseAuth auth = FirebaseAuth.instance;
    auth.currentUser().then((fu) => {
          DatabaseServices.getUser(fu.email).then((_user) => {
                setState(() => {user = _user})
              })
        });
        print(user.dob);
           super.initState();
    return;
    // TODO: implement initState
 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          Navigator.push(context, MaterialPageRoute(builder: (context) => CameraScreen()));
        },
        child: Icon(Icons.pan_tool, size: 40,),
        backgroundColor: Color.fromRGBO(0, 0, 51, 100),
      ),
      backgroundColor: Color.fromRGBO(0, 0, 51, 100),
      body: Center(
        child:  Column(
          children: <Widget>[

//            SizedBox(height: 200),
//            Container(
//              child: Text("Scan Your Palm",style: TextStyle(
//                fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,
//                  letterSpacing: 4
//              ),),
//            ),
            SizedBox(height: 100,),
            Text( horoscope,style: TextStyle(color: Colors.white),),
            if(sunsign=='Aquarius')
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Image.asset("images/aquarius.jpg",width: 100,height: 100,),
            ),
            if(sunsign=='ARIES')
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Image.asset("images/aries.jpg",width: 100,height: 100,),
            ),
            if(sunsign=='CANCER')
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Image.asset("images/cancer.jpg",width: 100,height: 100,),
            ),
            if(sunsign=='CAPRICORN')
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Image.asset("images/capricorn.jpg",width: 100,height: 100,),
              ),
            if(sunsign=='GEMINI')
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Image.asset("images/gemini.jpg",width: 100,height: 100,),
              ),
            if(sunsign=='LEO')
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Image.asset("images/leo.jpg",width: 100,height: 100,),
              ),
            if(sunsign=='LIBRA')
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Image.asset("images/libra.jpg",width: 100,height: 100,),
              ),
            if(sunsign=='PISCES')
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Image.asset("images/pisces.jpg",width: 100,height: 100,),
              ),
            if(sunsign=='SAGITTARIUS')
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Image.asset("images/sagittarius.jpg",width: 100,height: 100,),
              ),
            if(sunsign=='SCORPIO')
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Image.asset("images/scorpio.jpg",width: 100,height: 100,),
              ),
            if(sunsign=='TAURUS')
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Image.asset("images/taurus.jpg",width: 100,height: 100,),
              ),
            if(sunsign=='VIRGO')
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Image.asset("images/virgo.jpg",width: 100,height: 100,),
              ),
          ],
        ),
      ),
    );
  }
}
