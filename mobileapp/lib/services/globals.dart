library mobileapp.globals;

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

String globalEmail;
int flag = 0;
Future getGlobals() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //prefs.setString('email', emailController.text.toString());

  globalEmail = prefs.getString('email');
}

Future getFlag()async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getInt('flag');
  
}




// Future getClinics()async{
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   return prefs.getStringList('key')
// }

 List<ListTile> msgList = <ListTile>[];

 //List<String> clinicList = <String>[];

int selectedIndex = 0;
String familyId = 'fam123';
String babyId;
String msgDiscription,msgTitle,msgDate;

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
bool layingFaceDownVis = false;
