import 'package:flutter/material.dart';
import 'package:mobileapp/widgets/growthCard.dart';

class HelthChart extends StatefulWidget {
  @override
  _HelthChartState createState() => _HelthChartState();
}

class _HelthChartState extends State<HelthChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Helth Chart'),
      ),
      body: Column(
        children: <Widget>[
          GrowthCard('Skin Colour', snapshot.data., conAge, officer, vis, funText)
        ],
      ),
    );
  }
}