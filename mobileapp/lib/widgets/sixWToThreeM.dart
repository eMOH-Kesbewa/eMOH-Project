// 

import 'package:flutter/material.dart';
import 'package:mobileapp/pages/babyInfo/growingView.dart';
import 'package:mobileapp/widgets/growthCard.dart';


class Display extends StatelessWidget {
  //const Display({Key key, this.choice,}) : super(key: key);
   Display({Key key,this.choice}) : super(key:key);
  final Choice choice;
   IconData icon;
 String title,chipTitle;
 GrowthCard card1,card2;


// baby.then((it) {
//       layingFaceDownOcc = it.layingFaceDownOcc;
//       layingFaceDownCon = it.layingFaceDownCon;
//       layingFaceDownOf = it.layingFaceDownOf;
//       movingObjectOcc = it.movingObjectOcc;
//       bigSoundOcc = it.bigSoundOcc;
//       ohhOcc = it.ohhOcc;
//       smileOcc = it.smileOcc;

//       ///
//       raiseHeadOcc = it.raiseHeadOcc;
//       playFingersOcc = it.playFingersOcc;
//       strechHandOcc = it.strechHandOcc;
//       soundTurnOcc = it.soundTurnOcc;
//       singleLetterSoundOcc = it.singleLetterSoundOcc;
//       laughtLoudOcc = it.laughtLoudOcc;

//       ///
//       raiseHead2Occ = it.raiseHead2Occ;
//       turnFaceUpDownOcc = it.turnFaceUpDownOcc;
//       switchObjectOcc = it.switchObjectsOcc;
//       makeSoundOcc = it.makeSoundOcc;

//       ///
//       sittingOcc = it.sittingOcc;
//       holdingHimSelfOcc = it.holdingHimSelfOcc;
//       thumbForeOcc = it.thumbForeOcc;
//       followingVoiceOcc = it.followingVoiceOcc;
//       proWordsOcc = it.proWordsOcc;
//       understandOcc = it.understandOcc;

//       ///
//       walkingWithHelpOcc = it.walkingWithHelpOcc;
//       canSpeakOcc = canSpeakOcc;
//       handPointOcc = it.handPointOcc;
//       canRollOcc = it.canRollOcc;
//       canIdentifyOcc = it.canIdentifyOcc;

//       ///
//       walkingWithoutHelpOcc = it.walkingWithoutHelpOcc;
//       canClimbOcc = it.canClimbOcc;
//       makeTowerOcc = it.makeTowerOcc;
//       eatHimselfOcc = it.eatHimselfOcc;
//       canTalkTenOcc = it.canTalkTenOcc;
//       lipsShapeOcc = it.lipsShapeOcc;

//       ///
//       runWithoutFallingOcc = it.runWithoutFallingOcc;
//       upDownStairOcc = it.upDownStairOcc;
//       canCopyOcc = it.canCopyOcc;
//       canCreateOcc = it.canCreateOcc;

//       // bigNoise = it.bigNoise;
//       // vehicleNoise = it.vehicleNoise;
//       // guardianNoise = it.guardianNoise;
//       // turnToNoise = it.turnToNoise;
//       // turnToGuardianNoise = it.turnToGuardianNoise;
//       // dailyNoise = it.dailyNoise;
//       // hiddenNoise = it.hiddenNoise;
//       // rythmeicNoise = it.rythmeicNoise;
//       // respondNameNoice = it.respondNameNoice;
//       // byeNoise = it.byeNoise;
//     });
  static bool layingFaceDownVis,
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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
          children: <Widget>[
            Chip(
              avatar: CircleAvatar(
                backgroundImage: AssetImage("images/mother.png"),
                backgroundColor: Colors.grey.shade800,
                //child: Text('From the First Month of Birth'),
              ),
              label: Text(
                choice.chipTitle,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
            choice.card1,
            choice.card2,
            
          ],
        ),
    );
      
    
  }
}