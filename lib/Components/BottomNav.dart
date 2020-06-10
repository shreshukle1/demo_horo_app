
import 'package:flutter/material.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:demohoroapp/Screens/Dashboard.dart';
import 'package:demohoroapp/Screens/Profile.dart';
import 'package:demohoroapp/Screens/HoroscopeList.dart';

class bottomNavigationBar extends StatefulWidget {

  @override
  _bottomNavigationBarState createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  int _selectedPage = 0;

  final _pageOptions = [
    Dashboard(),
    HoroscopeList(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pageOptions[_selectedPage],backgroundColor: Color.fromRGBO(0, 0, 51, 100),
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Color.fromRGBO(0, 0, 51, 100),
          selectedItemBorderColor: Colors.white,
          selectedItemBackgroundColor: Color.fromRGBO(0, 0, 51, 100),
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.white,
        ),
        selectedIndex: _selectedPage,
        onSelectTab: (index) {
          setState(() {
            _selectedPage = index;
          });
        },


        items: [
          FFNavigationBarItem(
            iconData: Icons.dashboard,
            label: 'Dashboard',
          ),
          FFNavigationBarItem(
            iconData: Icons.star,
            label: 'Horoscope List',
          ),
          FFNavigationBarItem(
            iconData: Icons.person,
            label: 'profile',
          ),

        ],
      ),
    );
  }
}

