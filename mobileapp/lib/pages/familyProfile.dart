import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:mobileapp/services/familyProflieServices.dart';

class familyProfile extends StatefulWidget {
  //familyProfile(Future<Family> fetchFamily);

  @override
  _familyProfileState createState() => _familyProfileState();
}

class _familyProfileState extends State<familyProfile> {
 // Future<Family> family;
  @override
  Widget build(BuildContext context) {
   // final Future<Family> familyProfileData = fetchFamily();
    //print(familyProfileData);
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

    final villageIdCard = Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.perm_identity),
            title: Text('Identity Number'),
            subtitle: Text('identity number form http'),
          ),
          div,
          const ListTile(
            leading: Icon(Icons.home),
            title: Text('Village ID'),
            subtitle: Text('village id form http'),
          ),
          div,
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Wife Name'),
            subtitle: Text('wife name form http'),
          ),
          div,
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Husband Name'),
            subtitle: Text('husband name form http'),
          ),
          div,
          ListTile(
            leading: Icon(Icons.child_friendly),
            title: Text('Number of Children'),
            subtitle: Text('children count form http'),
          ),
        ],
      ),
    );

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
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Row(
                children: <Widget>[
                  profilePicDrawer,
                  SizedBox(width: 5.0,),
                  Text('useremail@example.com',textAlign: TextAlign.center,)
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
      ),
      body:  Center(
          child: FutureBuilder<String>(
            future: fetchFamily(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.toString());
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
      /*SingleChildScrollView(
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
            villageIdCard,
          ],
        ),
      ),*/
    ));
  }


}
