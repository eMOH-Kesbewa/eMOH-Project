import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Babies'),
      ),
      body: Center(
        child: Text('babyies'),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
