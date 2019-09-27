import 'package:flutter/material.dart';

class familyProfile extends StatefulWidget {
  @override
  _familyProfileState createState() => _familyProfileState();
}

class _familyProfileState extends State<familyProfile> {
  @override
  Widget build(BuildContext context) {
    final profilePic = Container(
        width: 150.0,
        height: 150.0,
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage("images/mother.png")
            ),
          /*  image: DecorationImage(
                //image: NetworkImage(snapshot.data["Profilepic"]),
               
                fit: BoxFit.cover),*/
            borderRadius: BorderRadius.all(Radius.circular(75.0)),
            boxShadow: [BoxShadow(blurRadius: 7.0, color: Colors.black)]));

    final regNoCard = Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('The Enchanted Nightingale'),
            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          ButtonTheme.bar( // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () { /* ... */ },
                ),
                FlatButton(
                  child: const Text('LISTEN'),
                  onPressed: () { /* ... */ },
                ),
              ],
            ),
          ),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Profile'),
        backgroundColor: Color(0xffb30089),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  )
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
                // print('Sudu bole');
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: profilePic,
            )
          ],
        ),
      ),
    );
  }
}
