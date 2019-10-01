import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:mobileapp/pages/babyBasicInfo.dart';
import 'package:mobileapp/pages/babyDetails.dart';
import 'package:mobileapp/pages/bottomNavigation.dart';
import 'package:mobileapp/pages/motherDetails.dart';
import 'package:mobileapp/services/familyProflieServices.dart';
import '../services/globals.dart' as globals;

class familyProfile extends StatefulWidget {
  //familyProfile(Future<Family> fetchFamily);

  @override
  _familyProfileState createState() => _familyProfileState();
}

class _familyProfileState extends State<familyProfile> {
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
      _selectedIndex = index;
      if (index == 0) {
        return Navigator.push(
            context, MaterialPageRoute(builder: (context) => familyProfile()));
      }
      if(index == 1){
               return Navigator.push(
            context, MaterialPageRoute(builder: (context) => motherDetails()));
      }
      if(index == 2){
               return Navigator.push(
            context, MaterialPageRoute(builder: (context) => BabyDetails()));
      }
    });
  }*/

  @override
  Widget build(BuildContext context) {
    final div = Divider(
      height: 10.0,
      color: Colors.grey[300],
    );
    final profilePicDrawer = Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(image: AssetImage("images/mother.png")),
            /*  image: DecorationImage(
                //image: NetworkImage(snapshot.data["Profilepic"]),
               
                fit: BoxFit.cover),*/
            borderRadius: BorderRadius.all(Radius.circular(75.0)),
            boxShadow: [BoxShadow(blurRadius: 7.0, color: Colors.black)]));
    final profilePic = Container(
        width: 150.0,
        height: 150.0,
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(image: AssetImage("images/mother.png")),
            /*  image: DecorationImage(
                //image: NetworkImage(snapshot.data["Profilepic"]),
               
                fit: BoxFit.cover),*/
            borderRadius: BorderRadius.all(Radius.circular(75.0)),
            boxShadow: [BoxShadow(blurRadius: 7.0, color: Colors.black)]));

    return Scaffold(
      appBar: AppBar(
        title: Text('Family Profile'),
        backgroundColor: Color(0xffb30089),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      /*drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  profilePicDrawer,
                  SizedBox(width: 10.0),
                  Flexible(
                    child: Text(
                      //TextOverflow.ellipsis.toString()
                      'useremail@example.com',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      //textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ), //Text('Menu',style: TextStyle(color: Colors.white, fontSize: 25.0),),
              decoration: BoxDecoration(
                color: Color(0xffb30089),
              ),
            ),
            ListTile(
              title: Text(
                'Mother Details',
                style: TextStyle(color: Color(0xff5d1049), fontSize: 15.0),
              ),
              leading: Icon(
                Icons.pregnant_woman,
                size: 30.0,
                color: Color(0xfffd96a9),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Baby Details',
                  style: TextStyle(color: Color(0xff5d1049), fontSize: 15.0)),
              leading: Icon(
                Icons.child_care,
                size: 30.0,
                color: Color(0xffc0c999),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text(
                'Notifications',
                style: TextStyle(color: Color(0xff5d1049)),
              ),
              leading: Icon(
                Icons.notifications,
                size: 30.0,
                color: Color(0xfff62dae),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),*/
      body: Center(
        child: FutureBuilder<Family>(
          future: fetchFamily(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: profilePic,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.perm_identity),
                            title: Text('Identity Number'),
                            subtitle: Text(snapshot.data.idNumber),
                          ),
                          div,
                          ListTile(
                            leading: Icon(Icons.home),
                            title: Text('Village ID'),
                            subtitle: Text(snapshot.data.vilID),
                          ),
                          div,
                          ListTile(
                            leading: Icon(Icons.ac_unit),
                            title: Text('Wife Name'),
                            subtitle: Text(snapshot.data.wifeName),
                          ),
                          div,
                          ListTile(
                            leading: Icon(Icons.ac_unit),
                            title: Text('Husband Name'),
                            subtitle: Text(snapshot.data.husbandName),
                          ),
                          div,
                          ListTile(
                            leading: Icon(Icons.child_friendly),
                            title: Text('Number of Children'),
                            subtitle: Text(snapshot.data.childrenCount),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ); //Text(snapshot.data.childrenCount);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
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
