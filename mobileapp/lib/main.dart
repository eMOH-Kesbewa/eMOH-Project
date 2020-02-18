import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/pages/bottomNavigation.dart';
import 'package:mobileapp/pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

var logger = Logger();

void main() => runApp(EasyLocalization(child: MyApp()));

var email;
final ThemeData themeData = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
);
Future getemail() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  email = prefs.getString('email');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    getemail();
    return EasyLocalizationProvider(
      data: data,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: themeData,
        debugShowCheckedModeBanner: false,
        // home: MaterialApp(home: email == null ? Login() : BottomNavigation()),
        // home: email == null ? Login() : BottomNavigation()));
        //home: Login(),
        home: email == null ? Login() : BottomNavigation(),
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
