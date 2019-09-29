import 'package:flutter/material.dart';
import 'package:mobileapp/pages/familyProfile.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobileapp/services/familyProflieServices.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    final familyProfileButton = Material(
      elevation: 4.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Color(0xffb30089),
      child: MaterialButton(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
              size: 70.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Family Profile',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
        //minWidth: MediaQuery.of(context).size.width / 2,
        //height: MediaQuery.of(context).size.width / 4,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => familyProfile())),
      ),
    );

    final motherDetailsButton = Material(
      elevation: 4.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Color(0xfffd96a9),
      child: MaterialButton(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Icon(
              Icons.pregnant_woman,
              color: Colors.white,
              size: 70.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Mother Details',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
        //minWidth: MediaQuery.of(context).size.width / 2,
        //height: MediaQuery.of(context).size.width / 4,
        onPressed: (){},
      ),
    );
    final babyDetailsButton  = Material(
      elevation: 4.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Color(0xffc0c999),
      child: MaterialButton(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Icon(
              Icons.child_care,
              color: Colors.white,
              size: 70.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Baby Details',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
        //minWidth: MediaQuery.of(context).size.width / 2,
        //height: MediaQuery.of(context).size.width / 4,
        onPressed: (){},
      ),
    );

    final notificationsButton = Material(
      elevation: 4.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Color(0xfff62dae),
      child: MaterialButton(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Icon(
              Icons.notifications,
              color: Colors.white,
              size: 70.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Notification',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
        //minWidth: MediaQuery.of(context).size.width / 2,
        //height: MediaQuery.of(context).size.width / 4,
        onPressed: (){},
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          familyProfileButton,
          motherDetailsButton,
          babyDetailsButton,
          notificationsButton,
        ],
      ),
    );
  }
}
