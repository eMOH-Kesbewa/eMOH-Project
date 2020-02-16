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

  // String switchValS = "no";
  // String lightCheckS = "no";
  // String faceCheckS = "no";
  // String turnCheckS = "no";
  // String theneyesCheckS = "no";
  // String lookingCheckS = "no";
  // String touchCheckS = "no";
  // String squintCheckS = "no";
  // String ringCheckS = "no";
  // String askCheckS = "no";
  // String talkCheckS = "no";

  initState() {
    super.initState();
    // setState(() {
    //   switchVal = true;
    // });
    baby.then((it) {
      if (it.faceCheck.toString() == "no" || it.faceCheck == null) {
        //this gives the error
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

    // print(faceCheck);
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
            future: fetchBaby(),
            builder: (context, snapshot) {
              // setState(() {
              //   switchVal = false;
              // });
              logger.i('light check');
              //  logger.i(snapshot.data.ringCheck);

              // if (snapshot.data.lightCheck == "no" ||
              //     snapshot.data.lightCheck == null) {
              //   lightCheck = false;
              //   logger.e('***');
              // } else {
              //   lightCheck = true;
              // }
              // if (snapshot.data.faceCheck == "no") {
              //   faceCheck = false;
              // } else {
              //   faceCheck = true;
              // }
              // if (snapshot.data.turnCheck == "no") {
              //   turnCheck = false;
              // } else {
              //   turnCheck = true;
              // }
              // if (snapshot.data.theneyesCheck == "no") {
              //   theneyesCheck = false;
              // } else {
              //   theneyesCheck = true;
              // }
              // if (snapshot.data.lookingCheck == "no") {
              //   lookingCheck = false;
              // } else {
              //   lookingCheck = true;
              // }
              // if (snapshot.data.touchCheck == "no") {
              //   touchCheck = false;
              // } else {
              //   touchCheck = true;
              // }
              // if (snapshot.data.squintCheck == "no") {
              //   squintCheck = false;
              // } else {
              //   squintCheck = true;
              // }
              // if (snapshot.data.ringCheck == "no") {
              //   lookingCheck = false;
              // } else {
              //   lookingCheck = true;
              // }
              // if (snapshot.data.lookingCheck == "no") {
              //   ringCheck = false;
              // } else {
              //   ringCheck = true;
              // }
              // if (snapshot.data.askCheck == "no") {
              //   askCheck = false;
              // } else {
              //   askCheck = true;
              // }
              // if (snapshot.data.talkCheck == "no") {
              //   talkCheck = false;
              // } else {
              //   talkCheck = true;
              // }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasData) {
                //logger.i(snapshot.data.lightCheck);
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
                                  });
                                }
                              }),
                        )),
                        Chip(
                          avatar: CircleAvatar(
                            backgroundImage: AssetImage("images/mother.png"),
                            backgroundColor: Colors.grey.shade800,
                            //child: Text('From the First Month of Birth'),
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
                                    });
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
                                    });
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
                                    });
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
      ),
    );
    // try {

    // } catch (e) {
    //   logger.e(e);
    //   return Text('No data');
    // }
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
