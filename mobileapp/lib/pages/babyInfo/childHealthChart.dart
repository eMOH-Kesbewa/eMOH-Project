import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/worm.dart';

class ChildHealth extends StatefulWidget {
  @override
  _ChildHealthState createState() => _ChildHealthState();
}

class _ChildHealthState extends State<ChildHealth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Child Health Chart'),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<Baby>(
          future: fetchBaby(),
          builder: (context,snapshot){
            
          },
        ),
      ),
    );
  }
}