import 'package:demohoroapp/Screens/database.dart';
import 'package:demohoroapp/Screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:demohoroapp/Screens/ContactUs.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../user.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  User user = new User("firstName", "Lastname", "Email", DateTime.now().toString(), "Phone Number", "");

  static String getFormattedDate(String date) {
    return DateFormat("MM, dd, yyyy").format(DateTime.parse(date));
  }

  @override
  void initState() {
    super.initState();
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.currentUser().then((fu) => {
      DatabaseServices.getUser(fu.email).then((_user) => {
        setState(() => {user = _user})
      })
    });
    print(user.dob);
    return;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color.fromRGBO(0, 0, 0, 100),

        body: new Stack(

          children: <Widget>[
            ClipPath(
              child: Container(
                  color: Color.fromRGBO(0, 0, 51, 100)),
              clipper: getClipper(),
            ),
            Positioned(

                width: MediaQuery.of(context).size.width,
                top: MediaQuery.of(context).size.height / 5,
                child: Column(
                  children: <Widget>[
                    user.gender=='male'?
                    Container(
                        alignment: Alignment.topCenter,
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                                image: AssetImage("images/male.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(75.0)),
                            boxShadow: [
//                              BoxShadow(blurRadius: 7.0, color: Colors.black)
                            ])):
                    Container(
                        alignment: Alignment.topCenter,
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                                image: AssetImage("images/female.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(75.0)),
                            boxShadow: [
//                              BoxShadow(blurRadius: 7.0, color: Colors.black)
                            ])),

                    Text(
                      user.firstName,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                    Container(
                      padding: new EdgeInsets.all(8.0),
                      child: new Center(
                        child: new Column(
                          children: <Widget>[
                            new Card(
                              child: new Container(
                                child: new Column(
                                  children: <Widget>[
                                    new ListTile(
                                      leading:
                                      Icon(Icons.email, color: Color.fromRGBO(0, 0, 51, 100),),
                                      title: Text("${user.email}",
                                          style: TextStyle(
                                            color: Colors.blueGrey,
                                          )),


                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                      child: Divider(
                                        height: 2,
                                      ),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.phone_android,
                                          color: Color.fromRGBO(0, 0, 51, 100)),
                                      title: Text("${user.phoneNumber}",
                                          style: TextStyle(
                                            color: Colors.blueGrey,
                                          )),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                      child: Divider(
                                        height: 2,
                                      ),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.cake, color: Color.fromRGBO(0, 0, 51, 100)),
                                      title: Text(getFormattedDate(user.dob),
                                          style: TextStyle(
                                              color: Color.fromRGBO(0, 0, 51, 100)
                                          )),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                      child: Divider(
                                        height: 2,
                                      ),
                                    ),
                                    ListTile(
                                      onTap: () {
//                                    Navigator.push(
//                                        context,
//                                        MaterialPageRoute(
//                                            builder: (context) =>
//                                                FormScreen()));
                                      },
                                      leading: Icon(
                                          Icons.help,
                                          color: Color.fromRGBO(0, 0, 51, 100)
                                      ),
                                      title: Text("Contact Us",
                                          style: TextStyle(
                                            color: Colors.blueGrey,
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(

                      onTap: ()  async {
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        prefs.remove('_email');
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (BuildContext ctx) => LoginPage ()));
                      },

                      child: Container(
                        child: Text("LOGOUT",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                letterSpacing: 4,
                                fontSize: 15,
                                color: Colors.white
                            )),
                      ),
                    )
                  ],
                ))
          ],
        ));
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 165, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}