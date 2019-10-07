/*import 'package:flutter/material.dart';
import 'package:mobileapp/pages/bottomNavigation.dart';

class EyeTest extends StatefulWidget {
  @override
  _EyeTestState createState() => _EyeTestState();
}

class _EyeTestState extends State<EyeTest> {
  bool switchVal = false;
  bool lightCheck = false;
  bool faceCheck = false;
  bool turnCheck = false;
  bool theneyesCheck = false;
  bool lookingCheck = false;
  bool touchCheck = false;
  bool squintCheck = false;
  bool ringCheck = false;
  bool askCheck = false;
  bool talkCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eye Test'),
        actions: <Widget>[
          Switch(
              activeColor: Colors.red,
              value: switchVal,
              onChanged: (bool newValue) {
                setState(() {
                  switchVal = !switchVal;
                });
              }),
        ],

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              /*Switch(
                  activeColor: Colors.red,
                  value: switchVal,
                  onChanged: (bool newValue) {
                    setState(() {
                      switchVal = !switchVal;
                    });
                  }),*/
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  //child: Text('From the First Month of Birth'),
                ),
                label: Text('From the First Month of Birth'),
              ),
              SizedBox(
                height: 0.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Does the baby look at light? '),

                  Checkbox(
                      activeColor: Colors.red,
                      value: lightCheck,
                      onChanged: (bool newValue) {
                        setState(() {
                          lightCheck = !lightCheck;
                        });
                      }),

                  /*Radio(
                      value: lightRadio,
                      activeColor: Colors.red,
                      onChanged: (bool newValue) {
                        setState(() {
                          lightRadio = !lightRadio;
                          print(lightRadio);
                        });
                      }*/
                  // onChanged: (bool val) {
                  //   setState(() {
                  //     lightRadio = !lightRadio;
                  //     print(lightRadio);
                  //   });
                  // },
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Does the baby look at your face? '),
                  Checkbox(
                      activeColor: Colors.red,
                      value: faceCheck,
                      onChanged: (bool newValue) {
                        setState(() {
                          faceCheck = !faceCheck;
                        });
                      }),
                ],
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  //child: Text('From the First Month of Birth'),
                ),
                label: Text('When two months'),
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: Text(
                      'When you turn your head from side to side, the child smile in response while looking at your face?',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                      activeColor: Colors.red,
                      value: turnCheck,
                      onChanged: (bool newValue) {
                        setState(() {
                          turnCheck = !turnCheck;
                        });
                      }),
                ],
              ),
              Row(
                children: <Widget>[
                  Text('Then eyes? '),
                  SizedBox(
                    width: 100.0,
                  ),
                  Checkbox(
                      activeColor: Colors.red,
                      value: theneyesCheck,
                      onChanged: (bool newValue) {
                        setState(() {
                          theneyesCheck = !theneyesCheck;
                        });
                      }),
                ],
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  //child: Text('From the First Month of Birth'),
                ),
                label: Text('When six months'),
              ),
              Row(
                children: <Widget>[
                  Text('look?'),
                  SizedBox(
                    width: 100.0,
                  ),
                  Checkbox(
                      activeColor: Colors.red,
                      value: lookingCheck,
                      onChanged: (bool newValue) {
                        setState(() {
                          lookingCheck = !lookingCheck;
                        });
                      }),
                ],
              ),
              Row(
                children: <Widget>[
                  Text('Touch?'),
                  SizedBox(
                    width: 100.0,
                  ),
                  Checkbox(
                      activeColor: Colors.red,
                      value: touchCheck,
                      onChanged: (bool newValue) {
                        setState(() {
                          touchCheck = !touchCheck;
                        });
                      }),
                ],
              ),
              Row(
                children: <Widget>[
                  Text('Squint?'),
                  SizedBox(
                    width: 100.0,
                  ),
                  Checkbox(
                      activeColor: Colors.red,
                      value: squintCheck,
                      onChanged: (bool newValue) {
                        setState(() {
                          squintCheck = !squintCheck;
                        });
                      }),
                ],
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  //child: Text('From the First Month of Birth'),
                ),
                label: Text('When ten months'),
              ),
              Row(
                children: <Widget>[
                  Text('Ring?'),
                  SizedBox(
                    width: 100.0,
                  ),
                  Checkbox(
                      activeColor: Colors.red,
                      value: ringCheck,
                      onChanged: (bool newValue) {
                        setState(() {
                          ringCheck = !ringCheck;
                        });
                      }),
                ],
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  //child: Text('From the First Month of Birth'),
                ),
                label: Text('When ten months'),
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: Text(
                      'Ask?',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                      activeColor: Colors.red,
                      value: askCheck,
                      onChanged: (bool newValue) {
                        setState(() {
                          askCheck = !askCheck;
                        });
                      }),
                ],
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: Text(
                      'Talk?',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                      activeColor: Colors.red,
                      value: talkCheck,
                      onChanged: (bool newValue) {
                        setState(() {
                          talkCheck = !talkCheck;
                        });
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        onPressed: (){},
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/eyeTestService.dart';
import 'package:http/http.dart' as http;
class EyeTest extends StatefulWidget {
  @override
  _EyeTestState createState() => _EyeTestState();
}

class _EyeTestState extends State<EyeTest> {
  Future <Baby> baby = fetchBaby2();
  bool switchVal = false;
  // bool lightCheck = false;
  bool faceCheck = false;
  // bool turnCheck = false;
  // bool theneyesCheck = false;
  // bool lookingCheck = false;
  // bool touchCheck = false;
  // bool squintCheck = false;
  // bool ringCheck = false;
  // bool askCheck = false;
  // bool talkCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eye Test'),
        actions: <Widget>[
          Switch(
              activeColor: Colors.red,
              value: switchVal,
              onChanged: (bool newValue) {
                setState(() {
                  switchVal = !switchVal;
                });
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<Baby>(
          future: baby,
          builder: (context, snapshot){
            return SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  //child: Text('From the First Month of Birth'),
                ),
                label: Text('From the First Month of Birth'),
              ),
              SizedBox(
                height: 0.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Does the baby look at your face? '),
                  Checkbox(
                      activeColor: Colors.red,
                      value: snapshot.data.faceCheck,
                      onChanged: (bool newValue) {
                        setState(() {
                          snapshot.data.faceCheck = !snapshot.data.faceCheck;
                          faceCheck = !snapshot.data.faceCheck;
                        });
                      }),
                ],
                ),
                
                ],
              ),
            );
              
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        onPressed: (){
          updateDetails(faceCheck);
        },
      ),
    );
  }

  updateDetails(bool face)async{
    Map data = {'does_the_child_look_good_on_your_face': face.toString()};
    var jsonResponse = null;
    var response = await http.post(
        "https://protected-bayou-52277.herokuapp.com/babies/update",
        body: data);
    print("****status");
    if(response.statusCode == 200){
      print("Done");
    }
  }
}
