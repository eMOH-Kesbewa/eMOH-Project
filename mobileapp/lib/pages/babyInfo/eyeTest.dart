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
//import 'package:fluttertoast/fluttertoast.dart';
//import 'package:fluttertoast/fluttertoast.dart' as prefix0;
import 'package:mobileapp/services/babyService/eyeTestService.dart';
import 'package:http/http.dart' as http;
import 'package:toast/toast.dart';

class EyeTest extends StatefulWidget {
  @override
  _EyeTestState createState() => _EyeTestState();
}

class _EyeTestState extends State<EyeTest> {
  Future<Baby> baby = fetchBaby();
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
  // initState() {
  //   super.initState();
  //   baby.then((it) {
  //     faceCheck = it.faceCheck;
  //   });

  //   print(faceCheck);
  // }

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
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return Center(child: CircularProgressIndicator());
            else {
              //print('faceCheck');
              // print(snapshot.data.faceCheck);
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Chip(
                        avatar: CircleAvatar(
                          backgroundImage: AssetImage("images/mother.png"),
                          backgroundColor: Colors.grey.shade800,
                          //child: Text('From the First Month of Birth'),
                        ),
                        label: Text('From the First Month of Birth'),
                      ),
                      SizedBox(
                        height: 0.0,
                      ),
                      Card(
                          child: ListTile(
                        title: Text('Does child eyes toward the light?'),
                        trailing: Checkbox(
                            activeColor: Colors.red,
                            value: snapshot.data.lightCheck,
                            onChanged: (bool newValue) {
                              if (switchVal == true) {
                                setState(() {
                                  snapshot.data.lightCheck =
                                      !snapshot.data.lightCheck;
                                  lightCheck = snapshot.data.lightCheck;
                                  // faceCheck = !faceCheck;
                                });
                              } else {
                                return null;
                              }
                            }),
                      )),
                      Card(
                          child: ListTile(
                        title: Text('Does the baby look at your face?'),
                        trailing: Checkbox(
                            activeColor: Colors.red,
                            value: snapshot.data.faceCheck,
                            onChanged: (bool newValue) {
                              if (switchVal == true) {
                                setState(() {
                                  snapshot.data.faceCheck =
                                      !snapshot.data.faceCheck;
                                  faceCheck = snapshot.data.faceCheck;
                                  // faceCheck = !faceCheck;
                                });
                              } else {
                                return null;
                              }
                            }),
                      )),
                      Chip(
                        avatar: CircleAvatar(
                          backgroundImage: AssetImage("images/mother.png"),
                          backgroundColor: Colors.grey.shade800,
                          //child: Text('From the First Month of Birth'),
                        ),
                        label: Text('When Two Months.'),
                      ),
                      Card(
                          child: ListTile(
                        title: Text(
                            'When you turn your face to the side do you see the child smiling in response?'),
                        trailing: Checkbox(
                            activeColor: Colors.red,
                            value: snapshot.data.turnCheck,
                            onChanged: (bool newValue) {
                              if (switchVal == true) {
                                setState(() {
                                  snapshot.data.turnCheck =
                                      !snapshot.data.turnCheck;
                                  turnCheck = snapshot.data.turnCheck;
                                  // faceCheck = !faceCheck;
                                });
                              } else {
                                return null;
                              }
                            }),
                      )),
                      Card(
                        child: ListTile(
                          title: Text('Then the baby eyes move?'),
                          trailing: Checkbox(
                              activeColor: Colors.red,
                              value: snapshot.data.theneyesCheck,
                              onChanged: (bool newValue) {
                                if (switchVal == true) {
                                  setState(() {
                                    snapshot.data.theneyesCheck =
                                        !snapshot.data.theneyesCheck;
                                    theneyesCheck = snapshot.data.theneyesCheck;
                                    // faceCheck = !faceCheck;
                                  });
                                } else {
                                  return null;
                                }
                              }),
                        ),
                      ),
                      Chip(
                        avatar: CircleAvatar(
                          backgroundImage: AssetImage("images/mother.png"),
                          backgroundColor: Colors.grey.shade800,
                          //child: Text('From the First Month of Birth'),
                        ),
                        label: Text('When Six Months.'),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('Does the child look arround?'),
                          trailing: Checkbox(
                              activeColor: Colors.red,
                              value: snapshot.data.lookingCheck,
                              onChanged: (bool newValue) {
                                if (switchVal == true) {
                                  setState(() {
                                    snapshot.data.lookingCheck =
                                        !snapshot.data.lookingCheck;
                                    lookingCheck = snapshot.data.lookingCheck;
                                    // faceCheck = !faceCheck;
                                  });
                                } else {
                                  return null;
                                }
                              }),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text(
                              'Is child streching out his hand and trying to touch something?'),
                          trailing: Checkbox(
                              activeColor: Colors.red,
                              value: snapshot.data.touchCheck,
                              onChanged: (bool newValue) {
                                if (switchVal == true) {
                                  setState(() {
                                    snapshot.data.touchCheck =
                                        !snapshot.data.touchCheck;
                                    touchCheck = snapshot.data.touchCheck;
                                    // faceCheck = !faceCheck;
                                  });
                                } else {
                                  return null;
                                }
                              }),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text(
                              'Do you suspect that your child has a problem?'),
                          trailing: Checkbox(
                              activeColor: Colors.red,
                              value: snapshot.data.squintCheck,
                              onChanged: (bool newValue) {
                                if (switchVal == true) {
                                  setState(() {
                                    snapshot.data.squintCheck =
                                        !snapshot.data.squintCheck;
                                    squintCheck = snapshot.data.squintCheck;
                                    // faceCheck = !faceCheck;
                                  });
                                } else {
                                  return null;
                                }
                              }),
                        ),
                      ),
                      Chip(
                        avatar: CircleAvatar(
                          backgroundImage: AssetImage("images/mother.png"),
                          backgroundColor: Colors.grey.shade800,
                          //child: Text('From the First Month of Birth'),
                        ),
                        label: Text('When Ten Months.'),
                      ),
                      Card(
                        child: ListTile(
                          title: Text(
                              'Is it possible for a child to pickup small things with a thumb and forefinger?'),
                          trailing: Checkbox(
                              activeColor: Colors.red,
                              value: snapshot.data.ringCheck,
                              onChanged: (bool newValue) {
                                if (switchVal == true) {
                                  setState(() {
                                    snapshot.data.ringCheck =
                                        !snapshot.data.ringCheck;
                                    ringCheck = snapshot.data.ringCheck;
                                    // faceCheck = !faceCheck;
                                  });
                                } else {
                                  return null;
                                }
                              }),
                        ),
                      ),
                      Chip(
                        avatar: CircleAvatar(
                          backgroundImage: AssetImage("images/mother.png"),
                          backgroundColor: Colors.grey.shade800,
                          //child: Text('From the First Month of Birth'),
                        ),
                        label: Text('When Twelve Months.'),
                      ),
                      Card(
                        child: ListTile(
                          title: Text(
                              'Does your child pointed various thing and ask for them?'),
                          trailing: Checkbox(
                              activeColor: Colors.red,
                              value: snapshot.data.askCheck,
                              onChanged: (bool newValue) {
                                if (switchVal == true) {
                                  setState(() {
                                    snapshot.data.askCheck =
                                        !snapshot.data.askCheck;
                                    askCheck = snapshot.data.askCheck;
                                    // faceCheck = !faceCheck;
                                  });
                                } else {
                                  return null;
                                }
                              }),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text(
                              'When the child sees known people, does the child recognize them before they talk to the child?'),
                          trailing: Checkbox(
                              activeColor: Colors.red,
                              value: snapshot.data.talkCheck,
                              onChanged: (bool newValue) {
                                if (switchVal == true) {
                                  setState(() {
                                    snapshot.data.talkCheck =
                                        !snapshot.data.talkCheck;
                                    talkCheck = snapshot.data.talkCheck;
                                    // faceCheck = !faceCheck;
                                  });
                                } else {
                                  return null;
                                }
                              }),
                        ),
                      ),
                      SizedBox(
                        height: 70.0,
                      )
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        onPressed: () {
          updateDetails(
                  lightCheck,
                  faceCheck,
                  turnCheck,
                  theneyesCheck,
                  lookingCheck,
                  touchCheck,
                  squintCheck,
                  ringCheck,
                  askCheck,
                  talkCheck)
              .then((res) {
            Toast.show("Done", context,
                duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
            /* Fluttertoast.showToast(
          msg: "Done",
          toastLength: prefix0.Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIos: 1,
          backgroundColor: Colors.black54,
          textColor: Colors.white,
          fontSize: 16.0);*/
          }).catchError((e) {
            Toast.show("An Error Has Occured", context,
                duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
            /* Fluttertoast.showToast(
          msg: "Done",
          toastLength: prefix0.Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIos: 1,
          backgroundColor: Colors.black54,
          textColor: Colors.white,
          fontSize: 16.0);*/
          });
        },
      ),
    );
  }

//  updateDetails(String name)async{
//     Map data = {'name_of_child': name};
//     print('***face***');
//     print(name);
//     var response = await http.put(
//         "https://protected-bayou-52277.herokuapp.com/babies/update/A0000101",
//         body: data);
//     print("****status");
//     print(response.statusCode);
//     if(response.statusCode == 200){
//       print("Done");
//     }
//   }
//}

}
