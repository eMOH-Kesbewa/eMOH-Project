import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/services/babyService/teethService.dart';
//import 'package:mobileapp/pages/babyInfo/teethCard.dart';
import 'package:mobileapp/widgets/teethCard.dart';

class Teeth extends StatefulWidget {
  @override
  _TeethState createState() => _TeethState();
}

var logger = Logger();
bool formVis,listVis;

class _TeethState extends State<Teeth> {
Future<Baby> baby;
  @override
  void initState() {
    baby = fetchBaby();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teeth Check'),
      ),
      body: FutureBuilder<Baby>(
        future: baby,
        builder: (context, snapshot) {
          // logger.w('hello');
          // logger.wtf(snapshot.data.noOfTeeth6mo);
          // logger.v(snapshot.data.status6mo);
          logger.i(snapshot.data.date6mo);
          if(snapshot.data.date6mo == null){
            formVis = true;
            listVis = false;
          }else{
            listVis = true;
            formVis = false;
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
               // Container(width: 100.0, child: TextField()),
                TeethCard(snapshot.data.date6mo, snapshot.data.noOfTeeth6mo,
                    snapshot.data.status6mo,formVis,listVis),
              ],
            ),
          );
        },
      ),
    );
  }
}
