import 'package:flutter/material.dart';
import 'package:mobileapp/pages/login.dart';
/*import 'package:teamapp/Pages/addNewMember.dart';
import 'package:teamapp/Pages/check.dart';
import 'package:teamapp/Pages/createSheet.dart';
import 'package:teamapp/Pages/home.dart';
import 'package:teamapp/Pages/selectProfile.dart';
import 'package:teamapp/Pages/signIn.dart';
import 'package:teamapp/Pages/viewSheet.dart';*/


void main() => runApp(MyApp());

final ThemeData themeData = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.brown,
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      home: Login(),

    );
  }
}

