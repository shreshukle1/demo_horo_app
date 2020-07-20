import 'package:demohoroapp/Screens/database.dart';
import 'package:demohoroapp/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:demohoroapp/Screens/Palm.dart';
import 'package:intl/intl.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  
  User user = new User("firstName", "Lastname", "Email", DateTime.now().toIso8601String(), "Phone Number", "");
   static String getFormattedDate(String date) {
    return DateFormat("MM, dd, yyyy").format(DateTime.parse(date));
  }
  void main() {
var a = DateTime.parse(getFormattedDate(user.dob));

if( (a.month == 1 && a.day >= 20) || (a.month == 2 && a.day <= 18 ) ) {
print("this is aquaries");
}
else if( (a.month == 2 && a.day >= 19) || (a.month == 3 && a.day <= 20 ) ) {
print("it is not pisces");
}
else if( (a.month == 3 && a.day >= 21) || (a.month == 4 && a.day <= 19 ) ) {
print("it is not aries");
}

} 
String getRashiFromDate() {
  var a = DateTime.parse(getFormattedDate(user.dob));
if( (a.month == 1 && a.day >= 20) || (a.month == 2 && a.day <= 18 ) ) {
print("this is aquaries");
return "aqauries";
}
else if( (a.month == 2 && a.day >= 19) || (a.month == 3 && a.day <= 20 ) ) {
print("it is pisces");
return 'pisces';
}
else if( (a.month == 3 && a.day >= 21) || (a.month == 4 && a.day <= 19 ) ) {
print("it is aries");
return 'aries';
}
else if( (a.month == 4 && a.day >= 20) || (a.month == 5 && a.day <= 20 ) ) {
print("it is Taurus");
return 'taurus';
}
else if( (a.month == 5 && a.day >= 21) || (a.month == 6 && a.day <= 20 ) ) {
print("it is Gemini");
return 'gemini';
}
else if( (a.month == 6 && a.day >= 21) || (a.month == 7 && a.day <= 22 ) ) {
print("it is Cancer");
return 'cancer';
}
else if( (a.month == 7 && a.day >= 23) || (a.month == 8 && a.day <= 22 ) ) {
print("it is leo");
return 'Leo';
}
else if( (a.month == 8 && a.day >= 23) || (a.month == 9 && a.day <= 22 ) ) {
print("it is Virgo");
return 'virgo';
}
else if( (a.month == 9 && a.day >= 23) || (a.month == 10 && a.day <= 22 ) ) {
print("it is libra");
return 'libra';
}
else if( (a.month == 10 && a.day >= 23) || (a.month == 11 && a.day <= 21 ) ) {
print("it is Scorpio");
return 'scorpio';
}
else if( (a.month == 11 && a.day >= 22) || (a.month == 12 && a.day <= 21 ) ) {
print("it is Sagittarius");
return 'sagittarius';
}
else if( (a.month == 12 && a.day >= 22) || (a.month == 12 && a.day <= 219 ) ) {
print("it is Capricorn");
return 'Capricorn';
}
return "last";
}
@override
  void initState() {
     FirebaseAuth auth = FirebaseAuth.instance;
    auth.currentUser().then((fu) => {
          DatabaseServices.getUser(fu.email).then((_user) => {
                setState(() => {user = _user})
              })
        });
           super.initState();
    return;
    // TODO: implement initState
 
  }
// void main() {
// var d = "2020-06-02";
// var a = DateTime.parse(d);
// print(getRashiFromDate(a));
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromRGBO(0, 0, 51, 100),
      body: Center(
        child:  Column(
          children: <Widget>[


          ],
        ),
      ),
    );
  }
}
