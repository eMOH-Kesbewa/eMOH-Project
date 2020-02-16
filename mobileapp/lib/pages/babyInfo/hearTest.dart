import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/hearingTestService.dart';
import 'package:toast/toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';

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

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
      data: data,
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).tr('hearingTest')),
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
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
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
                                  .tr('afterfewmonthsofbirth')),
                            ),
                            SizedBox(
                              height: 0.0,
                            ),
                            Card(
                                child: ListTile(
                              title: Text(AppLocalizations.of(context)
                                  .tr('afterfewmonthsofbirthtxt')),
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
                                backgroundImage:
                                    AssetImage("images/mother.png"),
                                backgroundColor: Colors.grey.shade800,
                                //child: Text('From the First Month of Birth'),
                              ),
                              label: Text(AppLocalizations.of(context)
                                  .tr('inonemonth')),
                            ),
                            Card(
                                child: ListTile(
                              title: Text(AppLocalizations.of(context)
                                  .tr('inonemonthtxt')),
                              trailing: Checkbox(
                                  activeColor: Colors.red,
                                  value: snapshot.data.vehicleNoise,
                                  onChanged: (bool newValue) {
                                    if (switchVal == true) {
                                      setState(() {
                                        snapshot.data.vehicleNoise =
                                            !snapshot.data.vehicleNoise;
                                        vehicleNoise =
                                            snapshot.data.vehicleNoise;
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
                                  .tr('fromthefourmonths')),
                            ),
                            Card(
                                child: ListTile(
                              title: Text(AppLocalizations.of(context)
                                  .tr('fromthefourmonthstxt1')),
                              trailing: Checkbox(
                                  activeColor: Colors.red,
                                  value: snapshot.data.guardianNoise,
                                  onChanged: (bool newValue) {
                                    if (switchVal == true) {
                                      setState(() {
                                        snapshot.data.guardianNoise =
                                            !snapshot.data.guardianNoise;
                                        guardianNoise =
                                            snapshot.data.guardianNoise;
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
                                  .tr('fromthefourmonthstxt2')),
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
                                backgroundImage:
                                    AssetImage("images/mother.png"),
                                backgroundColor: Colors.grey.shade800,
                                //child: Text('From the First Month of Birth'),
                              ),
                              label: Text(AppLocalizations.of(context)
                                  .tr('fromthesevenmonths')),
                            ),
                            Card(
                                child: ListTile(
                              title: Text(AppLocalizations.of(context)
                                  .tr('fromthesevenmonthstxt1')),
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
                                backgroundImage:
                                    AssetImage("images/mother.png"),
                                backgroundColor: Colors.grey.shade800,
                                //child: Text('From the First Month of Birth'),
                              ),
                              label: Text(AppLocalizations.of(context)
                                  .tr('inninemonths')),
                            ),
                            Card(
                                child: ListTile(
                              title: Text(AppLocalizations.of(context)
                                  .tr('inninemonthstxt1')),
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
                              title: Text(AppLocalizations.of(context)
                                  .tr('inninemonthstxt2')),
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
                              title: Text(AppLocalizations.of(context)
                                  .tr('inninemonthstxt3')),
                              trailing: Checkbox(
                                  activeColor: Colors.red,
                                  value: snapshot.data.rythmeicNoise,
                                  onChanged: (bool newValue) {
                                    if (switchVal == true) {
                                      setState(() {
                                        snapshot.data.rythmeicNoise =
                                            !snapshot.data.rythmeicNoise;
                                        rythmeicNoise =
                                            snapshot.data.rythmeicNoise;
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
                                  .tr('intwelvemonths')),
                            ),
                            Card(
                                child: ListTile(
                              title: Text(AppLocalizations.of(context)
                                  .tr('intwelvemonthstxt1')),
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
                              title: Text(AppLocalizations.of(context)
                                  .tr('intwelvemonthstxt2')),
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
                              AppLocalizations.of(context).tr('specialnote'),
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
                    return Text('NO Data');
                  }
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
      ),
    );
  }
}
