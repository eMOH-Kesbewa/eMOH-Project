import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/hearingTestService.dart';
import 'package:toast/toast.dart';

class HearTest extends StatefulWidget {
  @override
  _HearTestState createState() => _HearTestState();
}

class _HearTestState extends State<HearTest> {
  Future<Baby> baby = fetchBaby();
  bool switchVal = false;
  bool bigNoise = false;
  bool vehicleNoise = false;
  bool guardianNoise = false;
  bool turnToNoise = false;
  bool turnToGuardianNoise = false;
  bool dailyNoise = false;
  bool hiddenNoise = false;
  bool rythmeicNoise = false;
  bool respondNameNoice = false;
  bool byeNoise = false;

  // initState() {
  //   super.initState();
  //   baby.then((it) {
  //     bigNoise = it.bigNoise;
  //     vehicleNoise = it.vehicleNoise;
  //     guardianNoise = it.guardianNoise;
  //     turnToNoise = it.turnToNoise;
  //     turnToGuardianNoise = it.turnToGuardianNoise;
  //     dailyNoise = it.dailyNoise;
  //     hiddenNoise = it.hiddenNoise;
  //     rythmeicNoise = it.rythmeicNoise;
  //     respondNameNoice = it.respondNameNoice;
  //     byeNoise = it.byeNoise;

  //   });

  //   print(bigNoise);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hearing Test'),
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
              // print('fetch baby');
              // print(snapshot.data.bigNoise);
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator(),);
              } else {
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
                          label: Text('After a Few Moments of Birth'),
                        ),
                        SizedBox(
                          height: 0.0,
                        ),
                        Card(
                            child: ListTile(
                          title: Text(
                              'When a sudden big sound was heard(ex: clapping, or  closing a door loudly),does the child shudder and blink eyes?or else look with enlarged eyes?'),
                          trailing: Checkbox(
                              activeColor: Colors.red,
                              value: snapshot.data.bigNoise,
                              onChanged: (bool newValue) {
                                if (switchVal == true) {
                                  setState(() {
                                    snapshot.data.bigNoise =
                                        !snapshot.data.bigNoise;
                                    bigNoise = snapshot.data.bigNoise;
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
                          label: Text('In One Month'),
                        ),
                        Card(
                            child: ListTile(
                          title: Text(
                              'Does the child starts to recognize and listen silently and keenly to, suddenly or continously occuring sounds(ex:sounds from vehicles)? '),
                          trailing: Checkbox(
                              activeColor: Colors.red,
                              value: snapshot.data.vehicleNoise,
                              onChanged: (bool newValue) {
                                if (switchVal == true) {
                                  setState(() {
                                    snapshot.data.vehicleNoise =
                                        !snapshot.data.vehicleNoise;
                                    vehicleNoise = snapshot.data.vehicleNoise;
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
                          label: Text('From the Four Months'),
                        ),
                        Card(
                            child: ListTile(
                          title: Text(
                              'Even if the mother or caretaker is not in sight,when thier voice was heard,does the child stay silent or else smile?'),
                          trailing: Checkbox(
                              activeColor: Colors.red,
                              value: snapshot.data.guardianNoise,
                              onChanged: (bool newValue) {
                                if (switchVal == true) {
                                  setState(() {
                                    snapshot.data.guardianNoise =
                                        !snapshot.data.guardianNoise;
                                    guardianNoise = snapshot.data.guardianNoise;
                                    // faceCheck = !faceCheck;
                                  });
                                } else {
                                  return null;
                                }
                              }),
                        )),
                        Card(
                            child: ListTile(
                          title: Text(
                              'If the mother/caretaker speaks from a side or from behind,does the child turn the head/eyes to that direction?'),
                          trailing: Checkbox(
                              activeColor: Colors.red,
                              value: snapshot.data.turnToNoise,
                              onChanged: (bool newValue) {
                                if (switchVal == true) {
                                  setState(() {
                                    snapshot.data.turnToNoise =
                                        !snapshot.data.turnToNoise;
                                    turnToNoise = snapshot.data.turnToNoise;
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
                          label: Text('From the Seven Months'),
                        ),
                        Card(
                            child: ListTile(
                          title: Text(
                              'when mother/caretaker speaks,Does the child turn around  instantly to that direction?'),
                          trailing: Checkbox(
                              activeColor: Colors.red,
                              value: snapshot.data.turnToGuardianNoise,
                              onChanged: (bool newValue) {
                                if (switchVal == true) {
                                  setState(() {
                                    snapshot.data.turnToGuardianNoise =
                                        !snapshot.data.turnToGuardianNoise;
                                    turnToGuardianNoise =
                                        snapshot.data.turnToGuardianNoise;
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
                          label: Text('In Nine Months'),
                        ),
                        Card(
                            child: ListTile(
                          title: Text(
                              'Does the child listen attentively to familiar sounds heard in day-to-day life?'),
                          trailing: Checkbox(
                              activeColor: Colors.red,
                              value: snapshot.data.dailyNoise,
                              onChanged: (bool newValue) {
                                if (switchVal == true) {
                                  setState(() {
                                    snapshot.data.dailyNoise =
                                        !snapshot.data.dailyNoise;
                                    dailyNoise = snapshot.data.dailyNoise;
                                    // faceCheck = !faceCheck;
                                  });
                                } else {
                                  return null;
                                }
                              }),
                        )),
                        Card(
                            child: ListTile(
                          title: Text(
                              'Does the child look for the sounds from a place not viewable?'),
                          trailing: Checkbox(
                              activeColor: Colors.red,
                              value: snapshot.data.hiddenNoise,
                              onChanged: (bool newValue) {
                                if (switchVal == true) {
                                  setState(() {
                                    snapshot.data.hiddenNoise =
                                        !snapshot.data.hiddenNoise;
                                    hiddenNoise = snapshot.data.hiddenNoise;
                                    // faceCheck = !faceCheck;
                                  });
                                } else {
                                  return null;
                                }
                              }),
                        )),
                        Card(
                            child: ListTile(
                          title: Text(
                              'Does the child likes ,when speaking energetically in a rhythm?'),
                          trailing: Checkbox(
                              activeColor: Colors.red,
                              value: snapshot.data.rythmeicNoise,
                              onChanged: (bool newValue) {
                                if (switchVal == true) {
                                  setState(() {
                                    snapshot.data.rythmeicNoise =
                                        !snapshot.data.rythmeicNoise;
                                    rythmeicNoise = snapshot.data.rythmeicNoise;
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
                          label: Text('In Twelve Months'),
                        ),
                        Card(
                            child: ListTile(
                          title: Text(
                              'Does the child respond to his/her name or other familiar sounds?'),
                          trailing: Checkbox(
                              activeColor: Colors.red,
                              value: snapshot.data.respondNameNoice,
                              onChanged: (bool newValue) {
                                if (switchVal == true) {
                                  setState(() {
                                    snapshot.data.respondNameNoice =
                                        !snapshot.data.respondNameNoice;
                                    respondNameNoice =
                                        snapshot.data.respondNameNoice;
                                    // faceCheck = !faceCheck;
                                  });
                                } else {
                                  return null;
                                }
                              }),
                        )),
                        Card(
                            child: ListTile(
                          title: Text(
                              'Does the child respond, even if he/she did not do the related activity for words like "No","tata"?'),
                          trailing: Checkbox(
                              activeColor: Colors.red,
                              value: snapshot.data.byeNoise,
                              onChanged: (bool newValue) {
                                if (switchVal == true) {
                                  setState(() {
                                    snapshot.data.byeNoise =
                                        !snapshot.data.byeNoise;
                                    byeNoise = snapshot.data.byeNoise;
                                    // faceCheck = !faceCheck;
                                  });
                                } else {
                                  return null;
                                }
                              }),
                        )),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          'Please meet PHM or Docter if you are suspicious of your childs hearing ability or you can not answer "Yes"or "No" to any of the above questions.',
                          style: TextStyle(color: Colors.red[200]),
                        ),
                        SizedBox(
                          height: 70.0,
                        )
                      ],
                    ),
                  ),
                );
              }
            }),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        onPressed: () {
          updateDetails(
                  bigNoise,
                  vehicleNoise,
                  guardianNoise,
                  turnToNoise,
                  turnToGuardianNoise,
                  dailyNoise,
                  hiddenNoise,
                  rythmeicNoise,
                  respondNameNoice,
                  byeNoise)
              .then((res) {
            Toast.show("Done", context,
                duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
          }).catchError((e) {
            Toast.show("An Error Has Occured", context,
                duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
          });
        },
      ),
    );
  }
}
