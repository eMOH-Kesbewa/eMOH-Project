import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/pages/Settings.dart';
import 'package:mobileapp/pages/login.dart';
import 'package:mobileapp/services/familyProflieServices.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../services/globals.dart' as globals;
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';
//import '../BabyBookSinhala.json' as text;

var logger = Logger();

var text;

class FamilyProfile extends StatefulWidget {
  //FamilyProfile(Future<Family> fetchFamily);

  @override
  _FamilyProfileState createState() => _FamilyProfileState();
}

class _FamilyProfileState extends State<FamilyProfile> {
  //Future <Family> family = fetchFamily();
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
            borderRadius: BorderRadius.all(Radius.circular(75.0)),
            boxShadow: [BoxShadow(blurRadius: 7.0, color: Colors.black)]));
    final profilePic = Container(
        width: 150.0,
        height: 150.0,
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(image: AssetImage("images/mother.png")),
            borderRadius: BorderRadius.all(Radius.circular(75.0)),
            boxShadow: [BoxShadow(blurRadius: 7.0, color: Colors.black)]));

    Future family = fetchFamily();
    Future readFile() async {
      String data = await DefaultAssetBundle.of(context)
          .loadString("text/BabyBookSinhala.json");
      text = data;
    }

    return EasyLocalizationProvider(
      data: data,
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).tr('familyprofile')),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              ),
            ),
            IconButton(
              icon: Icon(Icons.undo),
              color: Colors.white,
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.remove('email');
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (BuildContext ctx) => Login()));
              },
            )
          ],
        ),
        body: Container(
          child: Center(
            child: FutureBuilder<Family>(
              future: family,
              builder: (context, snapshot) {
                var data = readFile();

                String idNumber, address, wifeName, husbandName, childrenCount;

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasData) {
                  if (snapshot.data.idNumber == null) {
                    idNumber = "No Data";
                  } else {
                    idNumber = snapshot.data.idNumber;
                  }
                  if (snapshot.data.address == null) {
                    address = "No Data";
                  } else {
                    address = snapshot.data.address;
                  }
                  if (snapshot.data.wifeName == null) {
                    wifeName = "No Data";
                  } else {
                    wifeName = snapshot.data.wifeName;
                  }
                  if (snapshot.data.husbandName == null) {
                    husbandName = "No Data";
                  } else {
                    husbandName = snapshot.data.husbandName;
                  }
                  if (snapshot.data.childrenCount == null) {
                    childrenCount = "No Data";
                  } else {
                    childrenCount = snapshot.data.childrenCount;
                  }

                  logger.i(idNumber);
                  logger.i(address);
                  logger.i(wifeName);
                  logger.i(husbandName);
                  logger.i(childrenCount);

                  globals.children = int.parse(snapshot.data.childrenCount);
                  return SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
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
                                title: Text(
                                    AppLocalizations.of(context).tr('idNo')),
                                subtitle: Text(idNumber),
                              ),
                              div,
                              ListTile(
                                leading: Icon(Icons.home),
                                // title: Text(.idNo),
                                title: Text(
                                    AppLocalizations.of(context).tr('address')),
                                subtitle: Text(address),
                              ),
                              div,
                              ListTile(
                                leading: Icon(Icons.ac_unit),
                                title: Text(AppLocalizations.of(context)
                                    .tr('wifename')),
                                subtitle: Text(wifeName),
                              ),
                              div,
                              ListTile(
                                leading: Icon(Icons.ac_unit),
                                title: Text(AppLocalizations.of(context)
                                    .tr('fathername')),
                                subtitle: Text(husbandName),
                              ),
                              div,
                              ListTile(
                                leading: Icon(Icons.child_friendly),
                                title: Text(AppLocalizations.of(context)
                                    .tr('nooflivingchildren')),
                                subtitle: Text(childrenCount),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ); //Text(snapshot.data.childrenCount);
                } else if (snapshot.hasError) {
                  return Column(
                    children: <Widget>[
                      Icon(
                        Icons.error_outline,
                        size: 50.0,
                        color: Colors.red,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Check Your Internet Connection',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red),
                      )
                    ],
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
