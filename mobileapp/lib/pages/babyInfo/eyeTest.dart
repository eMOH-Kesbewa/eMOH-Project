import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//import 'package:fluttertoast/fluttertoast.dart' as prefix0;
import 'package:mobileapp/services/babyService/eyeTestService.dart';
import 'package:http/http.dart' as http;
import 'package:toast/toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';

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

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    try {
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
                logger.v('in builder');

                if (snapshot.data.lightCheck == null) {
                  lightCheck = false;
                } else {
                  lightCheck = snapshot.data.lightCheck;
                }
                if (snapshot.data.lightCheck == null) {
                  lightCheck = false;
                } else {
                  lightCheck = snapshot.data.lightCheck;
                }
                if (snapshot.data.lightCheck == null) {
                  lightCheck = false;
                } else {
                  lightCheck = snapshot.data.lightCheck;
                }
                if (snapshot.data.lightCheck == null) {
                  lightCheck = false;
                } else {
                  lightCheck = snapshot.data.lightCheck;
                }
                if (snapshot.data.lightCheck == null) {
                  lightCheck = false;
                } else {
                  lightCheck = snapshot.data.lightCheck;
                }
                if (snapshot.data.lightCheck == null) {
                  lightCheck = false;
                } else {
                  lightCheck = snapshot.data.lightCheck;
                }
                if (snapshot.data.lightCheck == null) {
                  lightCheck = false;
                } else {
                  lightCheck = snapshot.data.lightCheck;
                }
                if (snapshot.data.lightCheck == null) {
                  lightCheck = false;
                } else {
                  lightCheck = snapshot.data.lightCheck;
                }
                if (snapshot.data.lightCheck == null) {
                  lightCheck = false;
                } else {
                  lightCheck = snapshot.data.lightCheck;
                }
                if (snapshot.data.lightCheck == null) {
                  lightCheck = false;
                } else {
                  lightCheck = snapshot.data.lightCheck;
                }

                if (snapshot.connectionState == ConnectionState.waiting)
                  return Center(child: CircularProgressIndicator());
                else if (snapshot.hasData) {
                  //print('faceCheck');
                  // print(snapshot.data.faceCheck);
                  try {
                    return SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Chip(
                              avatar: CircleAvatar(
                                backgroundImage:
                                    AssetImage("images/mother.png"),
                                backgroundColor: Colors.grey.shade800,
                                //child: Text('From the First Month of Birth'),
                              ),
                              label: Text(AppLocalizations.of(context)
                                  .tr('fromthefirstmonth')),
                            ),
                            SizedBox(
                              height: 0.0,
                            ),
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
                                        //lightCheck = snapshot.data.lightCheck;
                                        // faceCheck = !faceCheck;
                                      });
                                    } else {
                                      return null;
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
                                        //faceCheck = snapshot.data.faceCheck;
                                        // faceCheck = !faceCheck;
                                      });
                                    } else {
                                      return null;
                                    }
                                  }),
                            )),
                            Chip(
                              avatar: CircleAvatar(
                                backgroundImage:
                                    AssetImage("images/mother.png"),
                                backgroundColor: Colors.grey.shade800,
                                //child: Text('From the First Month of Birth'),
                              ),
                              label: Text(AppLocalizations.of(context)
                                  .tr('whentwomonths')),
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
                                        //turnCheck = snapshot.data.turnCheck;
                                        // faceCheck = !faceCheck;
                                      });
                                    } else {
                                      return null;
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
                                          // theneyesCheck =
                                          //     snapshot.data.theneyesCheck;
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
                                backgroundImage:
                                    AssetImage("images/mother.png"),
                                backgroundColor: Colors.grey.shade800,
                                //child: Tex  //Map data = {'does_the_child_look_good_on_your_face': face.toString()};t('From the First Month of Birth'),
                              ),
                              label: Text(AppLocalizations.of(context)
                                  .tr('whensixmonths')),
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
                                          //lookingCheck =
                                          //  snapshot.data.lookingCheck;
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
                                title: Text(AppLocalizations.of(context).tr(
                                    'is_child_streching_out_his_hand_and_trying_to_touch_something')),
                                trailing: Checkbox(
                                    activeColor: Colors.red,
                                    value: touchCheck,
                                    onChanged: (bool newValue) {
                                      if (switchVal == true) {
                                        setState(() {
                                          touchCheck = !touchCheck;
                                          //touchCheck = snapshot.data.touchCheck;
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
                                title: Text(AppLocalizations.of(context).tr(
                                    'do_you_suspect_that_your_child_has_a_problem')),
                                trailing: Checkbox(
                                    activeColor: Colors.red,
                                    value: squintCheck,
                                    onChanged: (bool newValue) {
                                      if (switchVal == true) {
                                        setState(() {
                                          squintCheck = !squintCheck;
                                          //squintCheck = snapshot.data.squintCheck;
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
                                backgroundImage:
                                    AssetImage("images/mother.png"),
                                backgroundColor: Colors.grey.shade800,
                                //child: Text('From the First Month of Birth'),
                              ),
                              label: Text(AppLocalizations.of(context)
                                  .tr('whentenmonths')),
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
                                          //ringCheck = snapshot.data.ringCheck;
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
                                backgroundImage:
                                    AssetImage("images/mother.png"),
                                backgroundColor: Colors.grey.shade800,
                                //child: Text('From the First Month of Birth'),
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
                                          //askCheck = snapshot.data.askCheck;
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
                                title: Text(AppLocalizations.of(context).tr(
                                    'if_the_person_identifies_them_the_child_will_recognize_them_before_they_call_them')),
                                trailing: Checkbox(
                                    activeColor: Colors.red,
                                    value: talkCheck,
                                    onChanged: (bool newValue) {
                                      if (switchVal == true) {
                                        setState(() {
                                          talkCheck = !talkCheck;
                                          //talkCheck = snapshot.data.talkCheck;
                                          // faceCheck = !faceCheck;
                                        });
                                      } else {
                                        return null;
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
                  } catch (e) {
                    return Text('Error');
                  }
                } else {
                  return Text('Error');
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
              }).catchError((e) {
                Toast.show("An Error Has Occured", context,
                    duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
              });
            },
          ),
        ),
      );
    } catch (e) {
      return Text('No Data');
    }
  }
}
