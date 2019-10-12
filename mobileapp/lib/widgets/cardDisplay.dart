import 'package:flutter/material.dart';
import 'package:mobileapp/pages/babyInfo/growingView.dart';
import 'package:mobileapp/services/babyService/childGrowthService.dart';
import 'package:mobileapp/widgets/growthCard.dart';

class CardDisplay extends StatefulWidget {
  Choice choice;
  CardDisplay({Key key,this.choice,this.icon,this.title,this.cardTitle,this.chipTitle,this.card1,this.card2});
  //const CardDisplay({Key key, this.choice}) : super(key: key);
  //final Choice choice;
  // CardDisplay({this.title,this.icon,this.cardTitle,this.chipTitle,this.occVal,this.conVal,this.offVal});

 IconData icon;
 String title,cardTitle,chipTitle;
 GrowthCard card1,card2;
  

  @override
  _CardDisplayState createState() => _CardDisplayState();
}

class _CardDisplayState extends State<CardDisplay> {
  Future<Baby> baby = fetchBaby();
  TabController _tabController;
  Choice choice;
  static String layingFaceDownOcc,
      layingFaceDownCon,
      layingFaceDownOf,
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
  @override
  void initState() {
    baby.then((it) {
      layingFaceDownOcc = it.layingFaceDownOcc;
      layingFaceDownCon = it.layingFaceDownCon;
      layingFaceDownOf = it.layingFaceDownOf;
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
        ],
      ),
    );
  }
}
