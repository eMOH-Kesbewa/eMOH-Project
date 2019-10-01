import 'package:flutter/material.dart';
import 'package:mobileapp/pages/bottomNavigation.dart';
import 'package:mobileapp/pages/familyProfile.dart';
import 'package:mobileapp/pages/motherDetails.dart';
import '../services/globals.dart' as globals;

class BabyDetails extends StatefulWidget {
  @override
  _BabyDetailsState createState() => _BabyDetailsState();
}

class _BabyDetailsState extends State<BabyDetails> {
 /* int _selectedIndex = globals.selectedIndex;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Mother',
      style: optionStyle,
    ),
    Text(
      'Index 2: Baby',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = globals.selectedIndex;
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
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Babies'),
      ),
      body: Center(
        child: Text('babyies'),
      ),
      bottomNavigationBar: BottomNavigation(),/*BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Mother'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Baby'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),*/
    );
  }
}
