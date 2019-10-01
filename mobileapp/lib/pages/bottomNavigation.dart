import 'package:flutter/material.dart';
import 'package:mobileapp/pages/familyProfile.dart';
import 'package:mobileapp/pages/babyDetails.dart';
import 'package:mobileapp/pages/motherDetails.dart';
import 'package:mobileapp/services/globals.dart' as globals;

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
//int globals.selectedIndex = 0;
static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
static const List<Widget> _widgetOptions = <Widget>[
  Text(
    'Index 0: Home',
    style: optionStyle,
  ),
  Text(
     'Index 1: Business',
     style: optionStyle,
  ),
  Text(
     'Index 2: School',
     style: optionStyle,
  ),
];

 void _onItemTapped(int index) {
    setState(() {
      globals.selectedIndex = index;
      if (index == 0) {
        return Navigator.push(
            context, MaterialPageRoute(builder: (context) => familyProfile()));
      }
      if (index == 1) {
        return Navigator.push(
            context, MaterialPageRoute(builder: (context) => motherDetails()));
      }
      if (index == 2) {
        return Navigator.push(
            context, MaterialPageRoute(builder: (context) => BabyDetails()));
      }
    });
  }

@override
Widget build(BuildContext context) {
  return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          title: Text('Business'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          title: Text('School'),
        ),
      ],
      currentIndex: globals.selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
  );
}
}