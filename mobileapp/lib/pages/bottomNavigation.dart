import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
    'Index 0: Family',
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
      globals.selectedIndex = index;
      if (index == 0) {
        return Navigator.push(
            context, MaterialPageRoute(builder: (context) => FamilyProfile()));
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
ScrollController _hideButtonController;

  var _isVisible;
  @override
  initState() {
    super.initState();
    _isVisible = true;
    _hideButtonController = new ScrollController();
    _hideButtonController.addListener(() {
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.reverse) {
       if(_isVisible)
        setState(() {
          _isVisible = false;
          print("**** $_isVisible up");
        });
      }
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if(!_isVisible)
        setState(() {
          _isVisible = true;
          print("**** $_isVisible down");
        });
      }
    });
  }
@override
Widget build(BuildContext context) {
  return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.group),
          title: Text('Family'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.face),
          title: Text('Mother'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.child_care),
          title: Text('Baby'),
        ),
      ],
      currentIndex: globals.selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
  );
}
}