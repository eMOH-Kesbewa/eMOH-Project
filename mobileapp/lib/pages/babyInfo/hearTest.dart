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
  bool respondNameNoise = false;
  bool byeNoise = false;

  String bigNoiseS;
  String vehicleNoiseS;
  String guardianNoiseS;
  String turnToNoiseS;
  String turnToGuardianNoiseS;
  String dailyNoiseS;
  String hiddenNoiseS;
  String rythmeicNoiseS;
  String respondNameNoiseS;
  String byeNoiseS;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    baby.then((it) {
      if (it.bigNoise.toString() == "no" || it.bigNoise == null) {
        //this gives the error
        bigNoise = false;
      } else {
        bigNoise = true;
      }
      if (it.vehicleNoise.toString() == "no" || it.vehicleNoise == null) {
        //this gives the error
        vehicleNoise = false;
      } else {
        vehicleNoise = true;
      }
      if (it.guardianNoise.toString() == "no" || it.guardianNoise == null) {
        //this gives the error
        guardianNoise = false;
      } else {
        guardianNoise = true;
      }
      if (it.turnToNoise.toString() == "no" || it.turnToNoise == null) {
        //this gives the error
        turnToNoise = false;
      } else {
        turnToNoise = true;
      }
      if (it.guardianNoise.toString() == "no" || it.guardianNoise == null) {
        //this gives the error
        guardianNoise = false;
      } else {
        guardianNoise = true;
      }
      if (it.turnToGuardianNoise.toString() == "no" ||
          it.turnToGuardianNoise == null) {
        //this gives the error
        turnToGuardianNoise = false;
      } else {
        turnToGuardianNoise = true;
      }
      if (it.dailyNoise.toString() == "no" || it.dailyNoise == null) {
        //this gives the error
        dailyNoise = false;
      } else {
        dailyNoise = true;
      }
      if (it.hiddenNoise.toString() == "no" || it.hiddenNoise == null) {
        //this gives the error
        hiddenNoise = false;
      } else {
        hiddenNoise = true;
      }
      if (it.rythmeicNoise.toString() == "no" || it.rythmeicNoise == null) {
        //this gives the error
        rythmeicNoise = false;
      } else {
        rythmeicNoise = true;
      }
      if (it.respondNameNoise.toString() == "no" ||
          it.respondNameNoise == null) {
        //this gives the error
        respondNameNoise = false;
      } else {
        respondNameNoise = true;
      }
      if (it.byeNoise.toString() == "no" || it.byeNoise == null) {
        //this gives the error
        byeNoise = false;
      } else {
        byeNoise = true;
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
                                  value: bigNoise,
                                  onChanged: (bool newValue) {
                                    if (switchVal == true) {
                                      setState(() {
                                        bigNoise = !bigNoise;

                                        if(bigNoise == true){
                                          bigNoiseS = "yes";
                                        }else{
                                          bigNoiseS = "no";
                                        }
                                        
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
                                  value: vehicleNoise,
                                  onChanged: (bool newValue) {
                                    if (switchVal == true) {
                                      setState(() {
                                        vehicleNoise = !vehicleNoise;
                                        vehicleNoise = vehicleNoise;

                                        if(vehicleNoise == true){
                                          vehicleNoiseS = "yes";
                                        }else{
                                          vehicleNoiseS = "no";
                                        }

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
                                  value: guardianNoise,
                                  onChanged: (bool newValue) {
                                    if (switchVal == true) {
                                      setState(() {
                                        guardianNoise = !guardianNoise;
                                        guardianNoise = guardianNoise;
                                        // faceCheck = !faceCheck;
                                        if(guardianNoise == true){
                                          guardianNoiseS = "yes";
                                        }else{
                                          guardianNoiseS = "no";
                                        }
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
                                  value: turnToNoise,
                                  onChanged: (bool newValue) {
                                    if (switchVal == true) {
                                      setState(() {
                                        turnToNoise = !turnToNoise;
                                        turnToNoise = turnToNoise;
                                        // faceCheck = !faceCheck;

                                        if(turnToNoise == true){
                                          turnToNoiseS = "yes";
                                        }else{
                                          turnToNoiseS = "no";
                                        }

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
                                  value: turnToGuardianNoise,
                                  onChanged: (bool newValue) {
                                    if (switchVal == true) {
                                      setState(() {
                                        turnToGuardianNoise =
                                            !turnToGuardianNoise;
                                        turnToGuardianNoise =
                                            turnToGuardianNoise;
                                        // faceCheck = !faceCheck;

                                        if(turnToGuardianNoise == true){
                                          turnToGuardianNoiseS = "yes";
                                        }else{
                                          turnToGuardianNoiseS = "no";
                                        }

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
                                  value: dailyNoise,
                                  onChanged: (bool newValue) {
                                    if (switchVal == true) {
                                      setState(() {
                                        dailyNoise = !dailyNoise;
                                        dailyNoise = dailyNoise;
                                        // faceCheck = !faceCheck;

                                        if(dailyNoise == true){
                                          dailyNoiseS = "yes";
                                        }else{
                                          dailyNoiseS = "no";
                                        }

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
                                  value: hiddenNoise,
                                  onChanged: (bool newValue) {
                                    if (switchVal == true) {
                                      setState(() {
                                        hiddenNoise = !hiddenNoise;
                                        hiddenNoise = hiddenNoise;
                                        // faceCheck = !faceCheck;

                                        if(hiddenNoise == true){
                                          hiddenNoiseS = "yes";
                                        }else{
                                          hiddenNoiseS = "no";
                                        }

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
                                  value: rythmeicNoise,
                                  onChanged: (bool newValue) {
                                    if (switchVal == true) {
                                      setState(() {
                                        rythmeicNoise = !rythmeicNoise;
                                        rythmeicNoise = rythmeicNoise;
                                        // faceCheck = !faceCheck;

                                        if(rythmeicNoise == true){
                                          rythmeicNoiseS = "yes";
                                        }else{
                                          rythmeicNoiseS = "no";
                                        }

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
                                  value: respondNameNoise,
                                  onChanged: (bool newValue) {
                                    if (switchVal == true) {
                                      setState(() {
                                        respondNameNoise = !respondNameNoise;
                                        respondNameNoise = respondNameNoise;
                                        // faceCheck = !faceCheck;

                                        if(respondNameNoise == true){
                                          respondNameNoiseS = "yes";
                                        }else{
                                          respondNameNoiseS = "no";
                                        }


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
                                  value: byeNoise,
                                  onChanged: (bool newValue) {
                                    if (switchVal == true) {
                                      setState(() {
                                        byeNoise = !byeNoise;
                                        byeNoise = byeNoise;
                                        // faceCheck = !faceCheck;

                                        if(byeNoise == true){
                                          byeNoiseS = "yes";
                                        }else{
                                          byeNoiseS = "no";
                                        }

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
                    bigNoiseS,
                    vehicleNoiseS,
                    guardianNoiseS,
                    turnToNoiseS,
                    turnToGuardianNoiseS,
                    dailyNoiseS,
                    hiddenNoiseS,
                    rythmeicNoiseS,
                    respondNameNoiseS,
                    byeNoiseS)
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
