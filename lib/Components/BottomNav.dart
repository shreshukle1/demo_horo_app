import 'package:flutter/material.dart';
import 'package:demohoroapp/Screens/Dashboard.dart';
import 'package:demohoroapp/Screens/Profile.dart';
import 'package:demohoroapp/Screens/HoroscopeList.dart';

class bottomNavigationBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarState();
  }
}
class _BottomNavigationBarState extends State<bottomNavigationBar > {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedPage = 0;
  final _pageOptions = [
    Dashboard(),
    HoroscopeList(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

      body: _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index){
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),title: Text("Dashboard")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.star),title: Text("zodiac")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),title: Text("Profile")
          ),
        ],
      ),
    );
  }
  void onTabTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }
}
Widget _createDrawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}
Widget _createHeader() {
  return Container(
    height: 80.0,
    child: DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                image:  AssetImage('assets/drop.png'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ])),
  );
}