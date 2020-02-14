import 'package:flutter/material.dart';
import 'package:mobileapp/pages/babyInfo/graphH.dart';
import 'package:mobileapp/pages/babyInfo/graphW.dart';
import 'package:mobileapp/pages/babyInfo/graphWH.dart';

class GraphHome extends StatefulWidget {
  @override
  _GraphHomeState createState() => _GraphHomeState();
}

class _GraphHomeState extends State<GraphHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Graph'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            MaterialButton(
              child: Text('Weight Graph'),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => GraphW())),
            ),
            SizedBox(
              height: 30.0,
            ),
            MaterialButton(
              child: Text('Height Graph'),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => GraphH())),
            ),
            SizedBox(
              height: 30.0,
            ),
            MaterialButton(
              child: Text('Weight Height Graph'),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => GraphWH())),
            ),
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
