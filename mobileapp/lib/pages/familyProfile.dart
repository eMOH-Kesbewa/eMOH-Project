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
  //Future <Family> family = fetchFamily();
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
      
      body: Center(
        child: FutureBuilder<Family>(
          future: fetchFamily(),
          builder: (context, snapshot) {
           print(snapshot);
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
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
