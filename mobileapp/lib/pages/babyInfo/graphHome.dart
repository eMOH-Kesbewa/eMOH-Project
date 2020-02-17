import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    var data = EasyLocalizationProvider.of(context).data;

    final chartw = Container(
      width: 315.0,
      height: 48.0,
      child: new RaisedButton(
        color: Color(0xffFEEAE6),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0)),
        child: new Text(
          'Weight Chart',
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xff442C2E)),
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => GraphW())),
      ),
    );
    final charth = Container(
      width: 315.0,
      height: 48.0,
      child: new RaisedButton(
        color: Color(0xffFEEAE6),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0)),
        child: new Text(
          'Height Chart',
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xff442C2E)),
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => GraphH())),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Graph'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Center(child: charth),
            SizedBox(height: 50.0),
            Center(child: chartw)
            // MaterialButton(
            //   child: Text('Weight Graph'),
            //   onPressed: () => Navigator.push(
            //       context, MaterialPageRoute(builder: (context) => GraphW())),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // MaterialButton(
            //   child: Text('Height Graph'),
            //   onPressed: () => Navigator.push(
            //       context, MaterialPageRoute(builder: (context) => GraphH())),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // MaterialButton(
            //   child: Text('Weight Height Graph'),
            //   onPressed: () => Navigator.push(
            //       context, MaterialPageRoute(builder: (context) => GraphWH())),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
          ],
        ),
      ),
    );
  }
}
