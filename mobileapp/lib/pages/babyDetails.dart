import 'package:flutter/material.dart';
import 'package:mobileapp/pages/baby/basicInfo.dart';
import 'package:mobileapp/pages/bottomNavigation.dart';
import 'package:mobileapp/pages/familyProfile.dart';
import 'package:mobileapp/pages/motherDetails.dart';
import '../services/globals.dart' as globals;

class BabyDetails extends StatefulWidget {
  @override
  _BabyDetailsState createState() => _BabyDetailsState();
}

class _BabyDetailsState extends State<BabyDetails> {
 
  @override
  Widget build(BuildContext context) {
     final basicInfoBtn = Material(
      elevation: .0,
      borderRadius: BorderRadius.circular(0.0),
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
              'Basic Information',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
        //minWidth: MediaQuery.of(context).size.width / 2,
        //height: MediaQuery.of(context).size.width / 4,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => BasicInfoBaby())),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Babies'),
      ),
      body: CustomScrollView(
  primary: false,
  slivers: <Widget>[
    SliverPadding(
      padding: const EdgeInsets.all(20),
      sliver: SliverGrid.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          basicInfoBtn,
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Colors.green[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Sound of screams but the'),
            color: Colors.green[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Who scream'),
            color: Colors.green[400],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution is coming...'),
            color: Colors.green[500],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution, they...'),
            color: Colors.green[600],
          ),
        ],
      ),
    ),
  ],
),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
