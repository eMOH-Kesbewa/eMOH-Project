import 'package:flutter/material.dart';
import 'package:mobileapp/pages/bottomNavigation.dart';

class motherDetails extends StatefulWidget {
  @override
  _motherDetailsState createState() => _motherDetailsState();
}

class _motherDetailsState extends State<motherDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mother Details'),
        backgroundColor: Color(0xfffd96a9),
      ),
     // bottomNavigationBar: BottomNavigation(),
    );
  }
}