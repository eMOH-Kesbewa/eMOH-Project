import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/pages/bottomNavigation.dart';
import 'package:mobileapp/pages/familyProfile.dart';
import 'package:mobileapp/pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'globals.dart' as globals;
import 'package:mobileapp/services/globals.dart'as globals;
import 'package:mobileapp/widgets/notificationViewCard.dart';
/*import 'package:teamapp/Pages/addNewMember.dart';
import 'package:teamapp/Pages/check.dart';
import 'package:teamapp/Pages/createSheet.dart';
import 'package:teamapp/Pages/home.dart';
import 'package:teamapp/Pages/selectProfile.dart';
import 'package:teamapp/Pages/signIn.dart';
import 'package:teamapp/Pages/viewSheet.dart';*/

//void main() => runApp(MyApp());
var logger = Logger();
Future<void> main() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('email');
  print(email);
  // globals.getGlobals();
  // logger.d(globals.globalEmail);
  // SharedPreferences.getInstance().then((res){
  //   getKeys('email');
  //   logger.i();
  // });
  runApp(MaterialApp(home: email == null ? Login() : BottomNavigation()));
}

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
