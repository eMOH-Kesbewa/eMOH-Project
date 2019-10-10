import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:mobileapp/services/babyService/childGrowthService.dart';
import 'package:toast/toast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobileapp/services/style.dart';

import 'package:logger/logger.dart';

class UntilFive extends StatefulWidget {
  @override
  _UntilFiveState createState() => _UntilFiveState();
}

class _UntilFiveState extends State<UntilFive> {
  var logger = Logger();
  Future<Baby> baby = fetchBaby();
  String _value = 'Select';
  String dropdownValue = 'Select';
  bool switchVal = false;
  bool layingFaceDownVis,
      movingObjectVis,
      ohhVis,
      bigSoundVis,
      smileVis,
      raiseHeadVis,
      playFingersVis,
      strechHandVis,
      soundTurnVis,
      singleLetterSoundVis,
      laughtLoudVis,
      raiseHead2Vis,
      turnFaceUpDownVis,
      switchObjectVis,
      makeSoundVis,
      sittingVis,
      holdingHimSelfVis,
      thumbForeVis,
      followingVoiceVis,
      proWordsVis,
      understandVis,
      walkingWithHelpVis,
      canSpeakVis,
      handPointVis,
      canRollVis,
      canIdentifyVis,
      walkingWithoutHelpVis,
      canClimbVis,
      makeTowerVis,
      eatHimselfVis,
      canTalkTenVis,
      lipsShapeVis,
      runWithoutFallingVis,
      upDownStairVis,
      canCopyVis,
      canCreateVis = false;

  String layingFaceDownOcc,
      movingObjectOcc,
      bigSoundOcc,
      ohhOcc,
      smileOcc,
      raiseHeadOcc,
      playFingersOcc,
      strechHandOcc,
      soundTurnOcc,
      singleLetterSoundOcc,
      laughtLoudOcc,
      raiseHead2Occ,
      turnFaceUpDownOcc,
      switchObjectOcc,
      makeSoundOcc,
      sittingOcc,
      holdingHimSelfOcc,
      thumbForeOcc,
      followingVoiceOcc,
      proWordsOcc,
      understandOcc,
      walkingWithHelpOcc,
      canSpeakOcc,
      handPointOcc,
      canRollOcc,
      canIdentifyOcc,
      walkingWithoutHelpOcc,
      canClimbOcc,
      makeTowerOcc,
      eatHimselfOcc,
      canTalkTenOcc,
      lipsShapeOcc,
      runWithoutFallingOcc,
      upDownStairOcc,
      canCopyOcc,
      canCreateOcc;

  initState() {
    super.initState();
    baby.then((it) {
      layingFaceDownOcc = it.layingFaceDownOcc;
      movingObjectOcc = it.movingObjectOcc;
      bigSoundOcc = it.bigSoundOcc;
      ohhOcc = it.ohhOcc;
      smileOcc = it.smileOcc;

      ///
      raiseHeadOcc = it.raiseHeadOcc;
      playFingersOcc = it.playFingersOcc;
      strechHandOcc = it.strechHandOcc;
      soundTurnOcc = it.soundTurnOcc;
      singleLetterSoundOcc = it.singleLetterSoundOcc;
      laughtLoudOcc = it.laughtLoudOcc;

      ///
      raiseHead2Occ = it.raiseHead2Occ;
      turnFaceUpDownOcc = it.turnFaceUpDownOcc;
      switchObjectOcc = it.switchObjectsOcc;
      makeSoundOcc = it.makeSoundOcc;

      ///
      sittingOcc = it.sittingOcc;
      holdingHimSelfOcc = it.holdingHimSelfOcc;
      thumbForeOcc = it.thumbForeOcc;
      followingVoiceOcc = it.followingVoiceOcc;
      proWordsOcc = it.proWordsOcc;
      understandOcc = it.understandOcc;

      ///
      walkingWithHelpOcc = it.walkingWithHelpOcc;
      canSpeakOcc = canSpeakOcc;
      handPointOcc = it.handPointOcc;
      canRollOcc = it.canRollOcc;
      canIdentifyOcc = it.canIdentifyOcc;

      ///
      walkingWithoutHelpOcc = it.walkingWithoutHelpOcc;
      canClimbOcc = it.canClimbOcc;
      makeTowerOcc = it.makeTowerOcc;
      eatHimselfOcc = it.eatHimselfOcc;
      canTalkTenOcc = it.canTalkTenOcc;
      lipsShapeOcc = it.lipsShapeOcc;

      ///
      runWithoutFallingOcc = it.runWithoutFallingOcc;
      upDownStairOcc = it.upDownStairOcc;
      canCopyOcc = it.canCopyOcc;
      canCreateOcc = it.canCreateOcc;

      // bigNoise = it.bigNoise;
      // vehicleNoise = it.vehicleNoise;
      // guardianNoise = it.guardianNoise;
      // turnToNoise = it.turnToNoise;
      // turnToGuardianNoise = it.turnToGuardianNoise;
      // dailyNoise = it.dailyNoise;
      // hiddenNoise = it.hiddenNoise;
      // rythmeicNoise = it.rythmeicNoise;
      // respondNameNoice = it.respondNameNoice;
      // byeNoise = it.byeNoise;
    });

    //print(bigNoise);
  }

  @override
  Widget build(BuildContext context) {
    //need to include in builder
    // if (layingFaceDownOcc == '0') {
    //   layingFaceDownVis = true;
    // } else {
    //   layingFaceDownVis = false;
    // }
    // if (movingObjectOcc == '0') {
    //   movingObjectVis = true;
    // } else {
    //   movingObjectVis = false;
    // }
    // if (bigSoundOcc == '0') {
    //   bigSoundVis = true;
    // } else {
    //   bigSoundVis = false;
    // }
    // if (ohhOcc == '0') {
    //   ohhVis = true;
    // } else {
    //   ohhVis = false;
    // }
    // if (smileOcc == '0') {
    //   smileVis = true;
    // } else {
    //   smileVis = false;
    // }
    // if (raiseHeadOcc == '0') {
    //   raiseHeadVis = true;
    // } else {
    //   raiseHeadVis = false;
    // }
    // if (playFingersOcc == '0') {
    //   playFingersVis = true;
    // } else {
    //   playFingersVis = false;
    // }
    // if (strechHandOcc == '0') {
    //   strechHandVis = true;
    // } else {
    //   strechHandVis = false;
    // }
    // if (soundTurnOcc == '0') {
    //   soundTurnVis = true;
    // } else {
    //   soundTurnVis = false;
    // }
    // if (singleLetterSoundOcc == '0') {
    //   singleLetterSoundVis = true;
    // } else {
    //   singleLetterSoundVis = false;
    // }
    // if (laughtLoudOcc == '0') {
    //   laughtLoudVis = true;
    // } else {
    //   laughtLoudVis = false;
    // }
    // if (raiseHead2Occ == '0') {
    //   raiseHead2Vis = true;
    // } else {
    //   raiseHead2Vis = false;
    // }
    // if (turnFaceUpDownOcc == '0') {
    //   turnFaceUpDownVis = true;
    // } else {
    //   turnFaceUpDownVis = false;
    // }
    // if (switchObjectOcc == '0') {
    //   switchObjectVis = true;
    // } else {
    //   switchObjectVis = false;
    // }
    // if (makeSoundOcc == '0') {
    //   makeSoundVis = true;
    // } else {
    //   makeSoundVis = false;
    // }
    // if (sittingOcc == '0') {
    //   sittingVis = true;
    // } else {
    //   sittingVis = false;
    // }
    // if (holdingHimSelfOcc == '0') {
    //   holdingHimSelfVis = true;
    // } else {
    //   holdingHimSelfVis = false;
    // }
    // if (thumbForeOcc == '0') {
    //   thumbForeVis = true;
    // } else {
    //   thumbForeVis = false;
    // }
    // if (followingVoiceOcc == '0') {
    //   followingVoiceVis = true;
    // } else {
    //   followingVoiceVis = false;
    // }
    // if (proWordsOcc == '0') {
    //   proWordsVis = true;
    // } else {
    //   proWordsVis = false;
    // }
    // if (understandOcc == '0') {
    //   understandVis = true;
    // } else {
    //   understandVis = false;
    // }
    // if (walkingWithHelpOcc == '0') {
    //   walkingWithHelpVis = true;
    // } else {
    //   walkingWithHelpVis = false;
    // }
    // if (canSpeakOcc == '0') {
    //   canSpeakVis = true;
    // } else {
    //   canSpeakVis = false;
    // }
    // if (handPointOcc == '0') {
    //   handPointVis = true;
    // } else {
    //   handPointVis = false;
    // }
    // if (canRollOcc == '0') {
    //   canRollVis = true;
    // } else {
    //   canRollVis = false;
    // }
    // if (canIdentifyOcc == '0') {
    //   canIdentifyVis = true;
    // } else {
    //   canIdentifyVis = false;
    // }
    // if (walkingWithoutHelpOcc == '0') {
    //   walkingWithoutHelpVis = true;
    // } else {
    //   walkingWithoutHelpVis = false;
    // }
    // if (canClimbOcc == '0') {
    //   canClimbVis = true;
    // } else {
    //   canClimbVis = false;
    // }
    // if (makeTowerOcc == '0') {
    //   makeTowerVis = true;
    // } else {
    //   makeTowerVis = false;
    // }
    // if (eatHimselfOcc == '0') {
    //   eatHimselfVis = true;
    // } else {
    //   eatHimselfVis = false;
    // }
    // if (canTalkTenOcc == '0') {
    //   canTalkTenVis = true;
    // } else {
    //   canTalkTenVis = false;
    // }
    // if (lipsShapeOcc == '0') {
    //   lipsShapeVis = true;
    // } else {
    //   lipsShapeVis = false;
    // }
    // if (runWithoutFallingOcc == '0') {
    //   runWithoutFallingVis = true;
    // } else {
    //   runWithoutFallingVis = false;
    // }
    // if (upDownStairOcc == '0') {
    //   upDownStairVis = true;
    // } else {
    //   upDownStairVis = false;
    // }
    // if (canCopyOcc == '0') {
    //   canCopyVis = true;
    // } else {
    //   canCopyVis = false;
    // }
    // if (canCreateOcc == '0') {
    //   canCreateVis = true;
    // } else {
    //   canCreateVis = false;
    // }
    final selectMonth = DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      /*underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),*/
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
          layingFaceDownOcc = dropdownValue;
        });
      },
      /*{
        if (switchVal == true) {
          setState(() {
            dropdownValue = newValue;
            layingFaceDownOcc = dropdownValue;
          });
        } else {
          return null;
        }
      },*/
      items: <String>['Select', '1.5', '2', '2.5', '3']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Growth of Child Until Five Years From Birth'),
        actions: <Widget>[
          // Switch(
          //     activeColor: Colors.red,
          //     value: switchVal,
          //     onChanged: (bool newValue) {
          //       setState(() {
          //         switchVal = !switchVal;
          //       });
          //     }),
        ],
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<Baby>(
            future: baby,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting)
                return Center(child: CircularProgressIndicator());
              else {
                if (snapshot.data.layingFaceDownOcc == '0') {
                  layingFaceDownVis = true;
                } else {
                  layingFaceDownVis = false;
                }
                if (snapshot.data.movingObjectOcc == '0') {
                  movingObjectVis = true;
                } else {
                  movingObjectVis = false;
                }
                if (snapshot.data.bigSoundOcc == '0') {
                  bigSoundVis = true;
                } else {
                  bigSoundVis = false;
                }
                if (snapshot.data.ohhOcc == '0') {
                  ohhVis = true;
                } else {
                  ohhVis = false;
                }
                if (snapshot.data.smileOcc == '0') {
                  smileVis = true;
                } else {
                  smileVis = false;
                }
                if (snapshot.data.raiseHeadOcc == '0') {
                  raiseHeadVis = true;
                } else {
                  raiseHeadVis = false;
                }
                if (snapshot.data.playFingersOcc == '0') {
                  playFingersVis = true;
                } else {
                  playFingersVis = false;
                }
                if (snapshot.data.strechHandOcc == '0') {
                  strechHandVis = true;
                } else {
                  strechHandVis = false;
                }
                if (snapshot.data.soundTurnOcc == '0') {
                  soundTurnVis = true;
                } else {
                  soundTurnVis = false;
                }
                if (snapshot.data.singleLetterSoundOcc == '0') {
                  singleLetterSoundVis = true;
                } else {
                  singleLetterSoundVis = false;
                }
                if (snapshot.data.laughtLoudOcc == '0') {
                  laughtLoudVis = true;
                } else {
                  laughtLoudVis = false;
                }
                if (snapshot.data.raiseHead2Occ == '0') {
                  raiseHead2Vis = true;
                } else {
                  raiseHead2Vis = false;
                }
                if (snapshot.data.turnFaceUpDownOcc == '0') {
                  turnFaceUpDownVis = true;
                } else {
                  turnFaceUpDownVis = false;
                }
                if (snapshot.data.switchObjectsOcc == '0') {
                  switchObjectVis = true;
                } else {
                  switchObjectVis = false;
                }
                if (snapshot.data.makeSoundOcc == '0') {
                  makeSoundVis = true;
                } else {
                  makeSoundVis = false;
                }
                if (snapshot.data.sittingOcc == '0') {
                  sittingVis = true;
                } else {
                  sittingVis = false;
                }
                if (snapshot.data.holdingHimSelfOcc == '0') {
                  holdingHimSelfVis = true;
                } else {
                  holdingHimSelfVis = false;
                }
                if (snapshot.data.thumbForeOcc == '0') {
                  thumbForeVis = true;
                } else {
                  thumbForeVis = false;
                }
                if (snapshot.data.followingVoiceOcc == '0') {
                  followingVoiceVis = true;
                } else {
                  followingVoiceVis = false;
                }
                if (snapshot.data.proWordsOcc == '0') {
                  proWordsVis = true;
                } else {
                  proWordsVis = false;
                }
                if (snapshot.data.understandOcc == '0') {
                  understandVis = true;
                } else {
                  understandVis = false;
                }
                if (snapshot.data.walkingWithHelpOcc == '0') {
                  walkingWithHelpVis = true;
                } else {
                  walkingWithHelpVis = false;
                }
                if (snapshot.data.canSpeakOcc == '0') {
                  canSpeakVis = true;
                } else {
                  canSpeakVis = false;
                }
                if (snapshot.data.handPointOcc == '0') {
                  handPointVis = true;
                } else {
                  handPointVis = false;
                }
                if (snapshot.data.canRollOcc == '0') {
                  canRollVis = true;
                } else {
                  canRollVis = false;
                }
                if (snapshot.data.canIdentifyOcc == '0') {
                  canIdentifyVis = true;
                } else {
                  canIdentifyVis = false;
                }
                if (snapshot.data.walkingWithoutHelpOcc == '0') {
                  walkingWithoutHelpVis = true;
                } else {
                  walkingWithoutHelpVis = false;
                }
                if (snapshot.data.canClimbOcc == '0') {
                  canClimbVis = true;
                } else {
                  canClimbVis = false;
                }
                if (snapshot.data.makeTowerOcc == '0') {
                  makeTowerVis = true;
                } else {
                  makeTowerVis = false;
                }
                if (snapshot.data.eatHimselfOcc == '0') {
                  eatHimselfVis = true;
                } else {
                  eatHimselfVis = false;
                }
                if (snapshot.data.canTalkTenOcc == '0') {
                  canTalkTenVis = true;
                } else {
                  canTalkTenVis = false;
                }
                if (snapshot.data.lipsShapeOcc == '0') {
                  lipsShapeVis = true;
                } else {
                  lipsShapeVis = false;
                }
                if (snapshot.data.runWithoutFallingOcc == '0') {
                  runWithoutFallingVis = true;
                } else {
                  runWithoutFallingVis = false;
                }
                if (snapshot.data.upDownStairOcc == '0') {
                  upDownStairVis = true;
                } else {
                  upDownStairVis = false;
                }
                if (snapshot.data.canCopyOcc == '0') {
                  canCopyVis = true;
                } else {
                  canCopyVis = false;
                }
                if (snapshot.data.canCreateOcc == '0') {
                  canCreateVis = true;
                } else {
                  canCreateVis = false;
                }

                //String dropdownValue = snapshot.data.layingFaceDownOcc.toString();

                return SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: Chip(
                            avatar: CircleAvatar(
                              backgroundImage: AssetImage("images/mother.png"),
                              backgroundColor: Colors.grey.shade800,
                              //child: Text('From the First Month of Birth'),
                            ),
                            label: Text(
                              'From Six Weeks to Three Months',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.0,
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Text(
                                  'While lying face downwards raise the head',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                ListTile(
                                    leading: growBulletIcon,
                                    title: Text(
                                      'Occured Age (Months)',
                                      style: TextStyle(fontSize: 15.0),
                                    ),
                                    trailing: Text(layingFaceDownOcc
                                        .toString()) //Text(snapshot.data.layingFaceDownOcc.toString()),
                                    ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Visibility(
                                  child: Center(
                                    child: selectMonth,
                                  ),
                                  visible: layingFaceDownVis,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                ListTile(
                                  leading: growBulletIcon,
                                  title: Text(
                                    'Confrimed Age (Months)',
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                  trailing: Text(snapshot.data.layingFaceDownCon
                                      .toString()),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                ListTile(
                                  leading: growBulletIcon,
                                  title: Text(
                                    'Designation of the officer who confrimed',
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                  trailing: Text(snapshot.data.layingFaceDownOf
                                      .toString()),
                                ),
                              ],
                            ),
                          ),
                        ),
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
          setState(() {
           // layingFaceDownOcc = dropdownValue;
           logger.wtf("What a terrible failure log");
           print(layingFaceDownVis);
            layingFaceDownVis = false;
            print(layingFaceDownVis);
          });
          updateDetails(layingFaceDownOcc).then((res) {
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
