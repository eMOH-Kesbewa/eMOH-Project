import 'dart:convert';
import 'dart:io';

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

class _SettingsState extends State<Settings> {
  //Future <Family> family = fetchFamily();

  File _image;

  @override
  Widget build(BuildContext context) {
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

//                     new Container(
//   child: new OverflowBox(
//     minWidth: 0.0,
//     minHeight: 0.0,
//     maxWidth: double.infinity,
//     child: new Image(
//       image: new AssetImage('assets/images/bubbles.jpg'),
//       fit: BoxFit.cover))
// ),

    // child: Container(
    //     width: 150.0,
    //     height: 150.0,
    //     child: _image == null
    //         ? Image.asset("images/mother.png")
    //         : Image.file(_image),
    //     decoration: BoxDecoration(
    //         color: Colors.white,
    //         // image: _image == null
    //         //     ? DecorationImage(image: AssetImage("images/mother.png"))
    //         //     : Image.file(_image),
    //         //image: DecorationImage(image: AssetImage("images/mother.png")),

    //         /*  image: DecorationImage(
    //           //image: NetworkImage(snapshot.data["Profilepic"]),

    //           fit: BoxFit.cover),*/
    //         borderRadius: BorderRadius.all(Radius.circular(75.0)),
    //         boxShadow: [BoxShadow(blurRadius: 7.0, color: Colors.black)])),

    Future family = fetchFamily();
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        actions: <Widget>[
          FlatButton(
            child: Text('Save',style:TextStyle(color: Colors.white),),
            onPressed: () {
              //save Function
            },
          )
        ],
      ),
      body: Container(
        child: Center(
          child: FutureBuilder<Family>(
            future: family,
            builder: (context, snapshot) {
              print(snapshot);
              if (snapshot.hasData) {
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
                              title: Text('Identity Number'),
                              subtitle: Text(snapshot.data.idNumber),
                            ),
                            div,
                            ListTile(
                              leading: Icon(Icons.home),
                              title: Text('Village ID'),
                              subtitle: Text(snapshot.data.vilID),
                            ),
                            div,
                            ListTile(
                              leading: Icon(Icons.ac_unit),
                              title: Text('Wife Name'),
                              subtitle: Text(snapshot.data.wifeName),
                            ),
                            div,
                            ListTile(
                              leading: Icon(Icons.ac_unit),
                              title: Text('Husband Name'),
                              subtitle: Text(snapshot.data.husbandName),
                            ),
                            div,
                            ListTile(
                              leading: Icon(Icons.child_friendly),
                              title: Text('Number of Children'),
                              subtitle: Text(snapshot.data.childrenCount),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ); //Text(snapshot.data.childrenCount);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
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
