import 'package:flutter/material.dart';

class BabyBasicInfo extends StatefulWidget {
  @override
  _BabyBasicInfoState createState() => _BabyBasicInfoState();
}

class _BabyBasicInfoState extends State<BabyBasicInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Information'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                
              ],
            ),
          ),
        )/*Column(
          children: <Widget>[
             Text('hellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellov')
          ],
        )*/
      ),
    );
  }
}