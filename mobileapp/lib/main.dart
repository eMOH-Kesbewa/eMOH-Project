import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/pages/bottomNavigation.dart';
import 'package:mobileapp/pages/familyProfile.dart';
import 'package:mobileapp/pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'globals.dart' as globals;
import 'package:mobileapp/services/globals.dart' as globals;
import 'package:mobileapp/widgets/notificationViewCard.dart';
/*import 'package:teamapp/Pages/addNewMember.dart';
import 'package:teamapp/Pages/check.dart';
import 'package:teamapp/Pages/createSheet.dart';
import 'package:teamapp/Pages/home.dart';
import 'package:teamapp/Pages/selectProfile.dart';
import 'package:teamapp/Pages/signIn.dart';
import 'package:teamapp/Pages/viewSheet.dart';*/
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

//void main() => runApp(MyApp());
var logger = Logger();
/*Future<void> main() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('email');
  print(email);
  // globals.getGlobals();
  // logger.d(globals.globalEmail);
  // SharedPreferences.getInstance().then((res){
  //   getKeys('email');
  //   logger.i();
  // });
  runApp(EasyLocalization(
      child: MaterialApp(home: email == null ? Login() : BottomNavigation())));
}*/

//uncomment above main() function to login with SP.

void main() => runApp(EasyLocalization(child: MyApp()));

final ThemeData themeData = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.brown,
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
      data: data,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: themeData,
        home: Login(),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          //app-specific localization
          EasylocaLizationDelegate(locale: data.locale, path: 'assets'),
        ],
        supportedLocales: [Locale('en', 'US'), Locale('si', 'SL')],
        locale: data.savedLocale,
      ),
    );
  }
}
