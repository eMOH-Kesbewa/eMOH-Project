/**
 * Update and view eye test data
 * 
 */

import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/eyeTestService.dart';
import 'package:toast/toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';

Future<Baby> baby = fetchBaby(); //get baby data from eyeTestService.dart file

//To update check boxes
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

//To update details
String switchValS = "no";
String lightCheckS = "no";
String faceCheckS = "no";
String turnCheckS = "no";
String theneyesCheckS = "no";
String lookingCheckS = "no";
String touchCheckS = "no";
String squintCheckS = "no";
String ringCheckS = "no";
String askCheckS = "no";
String talkCheckS = "no";

class EyeTest extends StatefulWidget {
  @override
  _EyeTestState createState() => _EyeTestState();
}

class _EyeTestState extends State<EyeTest> {
  // this function runs only one time when widget creating
  initState() {
    super.initState();
    baby.then((it) {
      //if faceCheck is no OR null, faceCheck check box is false,else true
      if (it.faceCheck.toString() == "no" || it.faceCheck == null) {
        faceCheck = false;
      } else {
        faceCheck = true;
      }
      if (it.lightCheck.toString() == "no" || it.lightCheck == null) {
        lightCheck = false;
      } else {
        lightCheck = true;
      }
      if (it.turnCheck.toString() == "no" || it.turnCheck == null) {
        turnCheck = false;
      } else {
        turnCheck = true;
      }
      if (it.theneyesCheck.toString() == "no" || it.theneyesCheck == null) {
        theneyesCheck = false;
      } else {
        theneyesCheck = true;
      }
      if (it.lookingCheck.toString() == "no" || it.lookingCheck == null) {
        lookingCheck = false;
      } else {
        lookingCheck = true;
      }
      if (it.touchCheck.toString() == "no" || it.touchCheck == null) {
        touchCheck = false;
      } else {
        touchCheck = true;
      }
      if (it.squintCheck.toString() == "no" || it.squintCheck == null) {
        squintCheck = false;
      } else {
        squintCheck = true;
      }
      if (it.ringCheck.toString() == "no" || it.ringCheck == null) {
        ringCheck = false;
      } else {
        ringCheck = true;
      }
      if (it.askCheck.toString() == "no" || it.askCheck == null) {
        askCheck = false;
      } else {
        askCheck = true;
      }
      if (it.talkCheck.toString() == "no" || it.talkCheck == null) {
        talkCheck = false;
      } else {
        talkCheck = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
      data: data,
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).tr('eyetest')),
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
              logger.i('light check');

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                    child: CircularProgressIndicator()); //when loading
              } else if (snapshot.hasData) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        //Chip widget to display label
                        Chip(
                          avatar: CircleAvatar(
                            backgroundImage: AssetImage("images/mother.png"),
                            backgroundColor: Colors.grey.shade800,
                          ),
                          label: Text(AppLocalizations.of(context)
                              .tr('fromthefirstmonth')),
                        ),
                        SizedBox(
                          height: 0.0,
                        ),
                        //Card widget to display details
                        Card(
                            child: ListTile(
                          title: Text(AppLocalizations.of(context)
                              .tr('does_child_eyes_toward_the_light')),
                          trailing: Checkbox(
                              activeColor: Colors.red,
                              value: lightCheck,
                              onChanged: (bool newValue) {
                                if (switchVal == true) {
                                  setState(() {
                                    lightCheck = !lightCheck;
                                    if (lightCheck == true) {
                                      lightCheckS = "yes";
                                    } else {
                                      lightCheckS = "no";
                                    }
                                  });
                                }
                              }),
                        )),
                        Card(
                            child: ListTile(
                          title: Text(AppLocalizations.of(context)
                              .tr('does_the_child_look_good_on_your_face')),
                          trailing: Checkbox(
                              activeColor: Colors.red,
                              value: faceCheck,
                              onChanged: (bool newValue) {
                                if (switchVal == true) {
                                  setState(() {
                                    faceCheck = !faceCheck;

                                    if (faceCheck == true) {
                                      faceCheckS = "yes";
                                    } else {
                                      faceCheckS = "no";
                                    }
                                  });
                                }
                              }),
                        )),
                        Chip(
                          avatar: CircleAvatar(
                            backgroundImage: AssetImage("images/mother.png"),
                            backgroundColor: Colors.grey.shade800,
                          ),
                          label: Text(
                              AppLocalizations.of(context).tr('whentwomonths')),
                        ),
                        Card(
                            child: ListTile(
                          title: Text(AppLocalizations.of(context).tr(
                              'when_you_turn_your_face_to_the_side_do_you_see_the_child_smiling_in_response')),
                          trailing: Checkbox(
                              activeColor: Colors.red,
                              value: turnCheck,
                              onChanged: (bool newValue) {
                                if (switchVal == true) {
                                  setState(() {
                                    turnCheck = !turnCheck;

                                    if (turnCheck == true) {
                                      turnCheckS = "yes";
                                    } else {
                                      turnCheckS = "no";
                                    }
                                  });
                                }
                              }),
                        )),
                        Card(
                          child: ListTile(
                            title: Text(AppLocalizations.of(context)
                                .tr('then_the_baby_eyes_move')),
                            trailing: Checkbox(
                                activeColor: Colors.red,
                                value: theneyesCheck,
                                onChanged: (bool newValue) {
                                  if (switchVal == true) {
                                    setState(() {
                                      theneyesCheck = !theneyesCheck;

                                      if (theneyesCheck == true) {
                                        theneyesCheckS = "yes";
                                      } else {
                                        theneyesCheckS = "no";
                                      }
                                    });
                                  }
                                }),
                          ),
                        ),
                        Chip(
                          avatar: CircleAvatar(
                            backgroundImage: AssetImage("images/mother.png"),
                            backgroundColor: Colors.grey.shade800,
                          ),
                          label: Text(
                              AppLocalizations.of(context).tr('whensixmonths')),
                        ),
                        Card(
                          child: ListTile(
                            title: Text(AppLocalizations.of(context)
                                .tr('does_the_child_look_arround')),
                            trailing: Checkbox(
                                activeColor: Colors.red,
                                value: lookingCheck,
                                onChanged: (bool newValue) {
                                  if (switchVal == true) {
                                    setState(() {
                                      lookingCheck = !lookingCheck;

                                      if (lookingCheck == true) {
                                        lookingCheckS = "yes";
                                      } else {
                                        lookingCheckS = "no";
                                      }
                                    });
                                  }
                                }),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text(AppLocalizations.of(context).tr(
                                'is_child_streching_out_his_hand_and_trying_to_touch_something')),
                            trailing: Checkbox(
                                activeColor: Colors.red,
                                value: touchCheck,
                                onChanged: (bool newValue) {
                                  if (switchVal == true) {
                                    setState(() {
                                      touchCheck = !touchCheck;

                                      if (touchCheck == true) {
                                        touchCheckS = "yes";
                                      } else {
                                        touchCheckS = "no";
                                      }
                                    });
                                  }
                                }),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text(AppLocalizations.of(context).tr(
                                'do_you_suspect_that_your_child_has_a_problem')),
                            trailing: Checkbox(
                                activeColor: Colors.red,
                                value: squintCheck,
                                onChanged: (bool newValue) {
                                  if (switchVal) {
                                    setState(() {
                                      squintCheck = !squintCheck;

                                      if (squintCheck == true) {
                                        squintCheckS = "yes";
                                      } else {
                                        squintCheckS = "no";
                                      }
                                    });
                                  }
                                }),
                          ),
                        ),
                        Chip(
                          avatar: CircleAvatar(
                            backgroundImage: AssetImage("images/mother.png"),
                            backgroundColor: Colors.grey.shade800,
                          ),
                          label: Text(
                              AppLocalizations.of(context).tr('whentenmonths')),
                        ),
                        Card(
                          child: ListTile(
                            title: Text(AppLocalizations.of(context).tr(
                                'is_it_possible_for_a_child_to_pickup_small_things_with_a_thumb_and_forefinger')),
                            trailing: Checkbox(
                                activeColor: Colors.red,
                                value: ringCheck,
                                onChanged: (bool newValue) {
                                  if (switchVal == true) {
                                    setState(() {
                                      ringCheck = !ringCheck;

                                      if (ringCheck == true) {
                                        ringCheckS = "yes";
                                      } else {
                                        ringCheckS = "no";
                                      }
                                    });
                                  }
                                }),
                          ),
                        ),
                        Chip(
                          avatar: CircleAvatar(
                            backgroundImage: AssetImage("images/mother.png"),
                            backgroundColor: Colors.grey.shade800,
                          ),
                          label: Text(AppLocalizations.of(context)
                              .tr('whentwelvemonths')),
                        ),
                        Card(
                          child: ListTile(
                            title: Text(AppLocalizations.of(context).tr(
                                'have_your_child_strech_out_his_hand_and_touch_them')),
                            trailing: Checkbox(
                                activeColor: Colors.red,
                                value: askCheck,
                                onChanged: (bool newValue) {
                                  if (switchVal == true) {
                                    setState(() {
                                      askCheck = !askCheck;

                                      if (askCheck == true) {
                                        askCheckS = "yes";
                                      } else {
                                        askCheckS = "no";
                                      }
                                    });
                                  }
                                }),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text(AppLocalizations.of(context).tr(
                                'if_the_person_identifies_them_the_child_will_recognize_them_before_they_call_them')),
                            trailing: Checkbox(
                                activeColor: Colors.red,
                                value: talkCheck,
                                onChanged: (bool newValue) {
                                  if (switchVal == true) {
                                    setState(() {
                                      talkCheck = !talkCheck;

                                      if (talkCheck == true) {
                                        talkCheckS = "yes";
                                      } else {
                                        talkCheckS = "no";
                                      }
                                    });
                                  }
                                }),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          AppLocalizations.of(context).tr('specialnoteeye'),
                          style: TextStyle(color: Colors.red[200]),
                        ),
                        SizedBox(
                          height: 70.0,
                        )
                      ],
                    ),
                  ),
                );
              } else if (snapshot.hasError) {
                logger.e(snapshot.error);
                return Text('No Data');
              }
            },
          ),
        ),
        //submit button
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.done),
          onPressed: () {
            //this function include in eyeTestService.dart file
            updateDetails(
                    lightCheckS,
                    faceCheckS,
                    turnCheckS,
                    theneyesCheckS,
                    lookingCheckS,
                    touchCheckS,
                    squintCheckS,
                    ringCheckS,
                    askCheckS,
                    talkCheckS)
                .then((res) {
              //Display a toast message
              Toast.show("Done", context,
                  duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
            }).catchError((e) {
              //Display a toast message
              Toast.show("An Error Has Occured", context,
                  duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
            });
          },
        ),
      ),
    );
  }
}
