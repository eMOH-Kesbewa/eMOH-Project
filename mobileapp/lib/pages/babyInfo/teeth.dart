import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/services/babyService/teethService.dart';
import 'package:mobileapp/widgets/teethCard.dart';

class Teeth extends StatefulWidget {
  @override
  _TeethState createState() => _TeethState();
}

var logger = Logger();

class _TeethState extends State<Teeth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teeth Check'),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<Baby>(
          future: fetchBaby(),
          builder: (context, snapshot) {
            logger.w('hello');
            logger.wtf(snapshot.data.noOfTeeth6mo);
            logger.v(snapshot.data.status6mo);
            logger.i(snapshot.data.date6mo);
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return Column(
              children: <Widget>[
                TeethCard(snapshot.data.date6mo, snapshot.data.noOfTeeth6mo,
                    snapshot.data.status6mo),
              ],
            );
          },
        ),
      ),
    );
  }
}
