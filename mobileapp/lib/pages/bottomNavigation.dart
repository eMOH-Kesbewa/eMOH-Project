/**
 * Bottom navigation bar
 */
import 'package:flutter/material.dart';
import 'package:mobileapp/pages/babyDetails.dart';
import 'package:mobileapp/pages/familyProfile.dart';
import 'package:mobileapp/pages/messages.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    FamilyProfile(),
    Messages(),
    BabyDetails(),
  ];

//change widget when tapping
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          //Home Icon
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          //Schedule Icon
          BottomNavigationBarItem(
            icon: Icon(Icons.data_usage),
            title: Text('Schedule'),
          ),
          //Baby Icon
          BottomNavigationBarItem(
            icon: Icon(Icons.child_care),
            title: Text('Baby'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
