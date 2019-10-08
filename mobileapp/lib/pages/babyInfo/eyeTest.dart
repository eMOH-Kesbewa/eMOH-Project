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
  Future<Baby> baby = fetchBaby();
  bool switchVal = false;
  bool lightCheck = false;
  bool faceCheck = true;
  bool turnCheck = false;
  bool theneyesCheck = false;
  bool lookingCheck = false;
  bool touchCheck = false;
  bool squintCheck = false;
  bool ringCheck = false;
  bool askCheck = false;
  bool talkCheck = false;
  initState() {
    super.initState();
    baby.then((it) {
      faceCheck = it.faceCheck;
    });

    print(faceCheck);
  }

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
            //print('faceCheck');
           // print(snapshot.data.faceCheck);
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(8.0),
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
                        Flexible(
                          child: Text(
                            'Does child eyes toward the light?',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ),
                        SizedBox(
                          width: 80.0,
                        ),
                        Checkbox(
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
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: Text(
                            'Does the baby look at your face?',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ),
                        SizedBox(
                          width: 80.0,
                        ),
                        Checkbox(
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
                      ],
                    ),

                    Chip(
                      avatar: CircleAvatar(
                        backgroundColor: Colors.grey.shade800,
                        //child: Text('From the First Month of Birth'),
                      ),
                      label: Text('When Two Months.'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: Text(
                            'When you turn your face to the side do you see the child smiling in response?',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ),
                        SizedBox(
                          width: 80.0,
                        ),
                        Checkbox(
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
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: Text(
                            'Then the baby eyes move?',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ),
                        SizedBox(
                          width: 80.0,
                        ),
                        Checkbox(
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
                      ],
                    ),
                    Chip(
                      avatar: CircleAvatar(
                        backgroundColor: Colors.grey.shade800,
                        //child: Text('From the First Month of Birth'),
                      ),
                      label: Text('When Six Months.'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: Text(
                            'Does the child look arround?',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ),
                        SizedBox(
                          width: 80.0,
                        ),
                        Checkbox(
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
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: Text(
                            'Is child streching out his hand and trying to touch something?',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ),
                        SizedBox(
                          width: 80.0,
                        ),
                        Checkbox(
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
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: Text(
                            'Do you suspect that your child has a problem?',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ),
                        SizedBox(
                          width: 80.0,
                        ),
                        Checkbox(
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
                      ],
                    ),
                    Chip(
                      avatar: CircleAvatar(
                        backgroundColor: Colors.grey.shade800,
                        //child: Text('From the First Month of Birth'),
                      ),
                      label: Text('When Ten Months.'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: Text(
                            'Is it possible for a child to pickup small things with a thumb and forefinger?',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ),
                        SizedBox(
                          width: 80.0,
                        ),
                        Checkbox(
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
                      ],
                    ),
                    Chip(
                      avatar: CircleAvatar(
                        backgroundColor: Colors.grey.shade800,
                        //child: Text('From the First Month of Birth'),
                      ),
                      label: Text('When Twelve Months.'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: Text(
                            'Does your child pointed various thing and ask for them?',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ),
                        SizedBox(
                          width: 80.0,
                        ),
                        Checkbox(
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
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: Text(
                            'When the child sees known people, does the child recognize them before they talk to the child?',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ),
                        SizedBox(
                          width: 80.0,
                        ),
                        Checkbox(
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
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        onPressed: () {
          updateDetails(lightCheck,faceCheck,turnCheck,theneyesCheck,lookingCheck,touchCheck,squintCheck,ringCheck,askCheck,talkCheck);
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
  updateDetails(bool lightCheck,
  bool faceCheck,
  bool turnCheck,
  bool theneyesCheck,
  bool lookingCheck,
  bool touchCheck,
  bool squintCheck,
  bool ringCheck,
  bool askCheck,
  bool talkCheck) async {
    //Map query = {'baby_id' : 'A0000101'};
    Map data = {
      'baby_id': 'A0000101',
      'does_child_eyes_toward_the_light' : lightCheck.toString(),
      'does_the_child_look_good_on_your_face': faceCheck.toString(),
      'when_you_turn_your_face_to_the_side_do_you_see_the_child_smiling_in_response' : turnCheck.toString(),
      'then_the_baby_eyes_move' : theneyesCheck.toString(),
      'does_the_child_look_arround' : lookingCheck.toString(),
      'is_child_streching_out_his_hand_and_trying_to_touch_something': touchCheck.toString(),
      'do_you_suspect_that_your_child_has_a_problem' : squintCheck.toString(),
      'is_it_possible_for_a_child_to_pickup_small_things_with_a_thumb_and_forefinger' : ringCheck.toString(),
      'if_the_person_identifies_them_the_child_will_recognize_them_before_they_call_them' : talkCheck.toString(),
      'have_your_child_strech_out_his_hand_and_touch_them' : askCheck.toString()
    };
    //Map data = {'does_the_child_look_good_on_your_face': face.toString()};
    print('***face***');
    print(faceCheck.toString());
    print(lightCheck.toString());
    print(turnCheck.toString());
    var response = await http
        .put("https://protected-bayou-52277.herokuapp.com/babies/", body: data);
    print("****status");
    print(response.statusCode);
    if (response.statusCode == 200) {
      print("Done");
    }
  }
}
