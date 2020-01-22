import 'dart:convert';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
//import 'package:easy_localization/easy_localization_provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:flutter_icons/flutter_icons.dart';
import 'package:mobileapp/pages/Settings.dart';
import 'package:mobileapp/pages/babyInfo/babyBasicInfo.dart';
import 'package:mobileapp/pages/babyDetails.dart';
import 'package:mobileapp/pages/bottomNavigation.dart';
import 'package:mobileapp/pages/login.dart';
import 'package:mobileapp/pages/motherDetails.dart';
import 'package:mobileapp/services/familyProflieServices.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../services/globals.dart' as globals;
import 'package:image/image.dart';

import 'package:image_picker/image_picker.dart';

class Settings extends StatefulWidget {
  //Settings(Future<Family> fetchFamily);

  @override
  _SettingsState createState() => _SettingsState();
}

class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

class _SettingsState extends State<Settings> {
  //Future <Family> family = fetchFamily();

  File _image;
  String curLan; //current language

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    final div = Divider(
      height: 10.0,
      color: Colors.grey[300],
    );
    final profilePicDrawer = Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(image: AssetImage("images/mother.png")),
            /*  image: DecorationImage(
                //image: NetworkImage(snapshot.data["Profilepic"]),
               
                fit: BoxFit.cover),*/
            borderRadius: BorderRadius.all(Radius.circular(75.0)),
            boxShadow: [BoxShadow(blurRadius: 7.0, color: Colors.black)]));
    final profilePic = GestureDetector(
        onTap: () {
          setState(() {
            getImage();
            //_lights = true;
          });
        },
        child: _image == null
            ? Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('images/mother.png')),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(75.0)),
                    boxShadow: [
                      BoxShadow(blurRadius: 7.0, color: Colors.black)
                    ]),
              )
            : Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                    image: DecorationImage(image: FileImage(_image)),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(75.0)),
                    boxShadow: [
                      BoxShadow(blurRadius: 7.0, color: Colors.black)
                    ]),
              ));

    Future family = fetchFamily();
    curLan = AppLocalizations.of(context).tr('selectedlanguage');
    return EasyLocalizationProvider(
      data: data,
      child: Scaffold(
        appBar: AppBar(
          // title: Text('Settings'),
          title: Text(AppLocalizations.of(context).tr('title')),
          actions: <Widget>[
            FlatButton(
              child: Text(
                AppLocalizations.of(context).tr('save'),
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                //save Function
              },
            ),
            // FlatButton(
            //   child: Text(
            //     'Sinhala',
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   onPressed: () {
            //     this.setState(() {
            //       data.changeLocale(Locale("si", "SL"));
            //       print(Localizations.localeOf(context).languageCode);
            //     });
            //   },
            // ),
            // FlatButton(
            //   child: Text(
            //     'English',
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   onPressed: () {
            //     this.setState(() {
            //       data.changeLocale(Locale("en", "US"));
            //       print(Localizations.localeOf(context).languageCode);
            //     });
            //   },
            // ),
          ],
        ),
        body: Container(
          child: FutureBuilder<Family>(
            future: family,
            builder: (context, snapshot) {
              print(snapshot);
              if (snapshot.hasData) {
                return SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      ExpansionTile(
                        initiallyExpanded: false,
                        title: Text(AppLocalizations.of(context).tr('basicInfo')),
                        children: <Widget>[
                          Center(
                            child: profilePic,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ListTile(
                                leading: Icon(Icons.perm_identity),
                                title: Text(AppLocalizations.of(context).tr('idNo')),
                                subtitle: Text(snapshot.data.idNumber),
                              ),
                              div,
                              ListTile(
                                leading: Icon(Icons.home),
                                // title: Text(.idNo),
                                title: Text(AppLocalizations.of(context).tr('address')),
                                subtitle: Text(snapshot.data.address),
                              ),
                              div,
                              ListTile(
                                leading: Icon(Icons.ac_unit),
                                title: Text(AppLocalizations.of(context).tr('wifename')),
                                subtitle: Text(snapshot.data.wifeName),
                              ),
                              div,
                              ListTile(
                                leading: Icon(Icons.ac_unit),
                                title: Text(AppLocalizations.of(context).tr('fathername')),
                                subtitle: Text(snapshot.data.husbandName),
                              ),
                              div,
                              ListTile(
                                leading: Icon(Icons.child_friendly),
                                title: Text(AppLocalizations.of(context).tr('nooflivingchildren')),
                                subtitle: Text(snapshot.data.childrenCount),
                              ),
                            ],
                          ),
                        ),
                        ],
                      ),
                      ExpansionTile(
                        initiallyExpanded: false,
                        title: Text(AppLocalizations.of(context).tr('changepwemail')),
                        children: <Widget>[
                          ListTile(
                              title: Text(AppLocalizations.of(context).tr('email')),
                              subtitle: Text(AppLocalizations.of(context).tr('password'))),
                          ListTile(
                            title: Text(AppLocalizations.of(context).tr('password')),
                            subtitle: Text('**********'),
                          )
                        ],
                      ),
                      ExpansionTile(
                        initiallyExpanded: false,
                        title: Text(AppLocalizations.of(context).tr('changelan')),
                        children: <Widget>[
                          ListTile(
                            title: Text(AppLocalizations.of(context).tr('currentlan')),
                            subtitle: Text(AppLocalizations.of(context)
                                .tr('selectedlanguage')),
                            trailing: OutlineButton(
                              child: curLan == "English"
                                  ? Text('සිංහල')
                                  : Text('English'),
                              onPressed: () {
                                //data.changeLocale(Locale('si','SL'));
                                if (curLan == "English") {
                                  this.setState(() {
                                    data.changeLocale(Locale("si", "SL"));
                                    print(Localizations.localeOf(context)
                                        .languageCode);
                                    curLan = 'සිංහල';
                                   // logger.v(curLan);
                                  });
                                } else {
                                  this.setState(() {
                                    data.changeLocale(Locale("en", "US"));
                                    print(Localizations.localeOf(context)
                                        .languageCode);
                                    curLan = 'English';
                                    //logger.v(curLan);
                                  });
                                }
                              },
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ); //Text(snapshot.data.childrenCount);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }
}
