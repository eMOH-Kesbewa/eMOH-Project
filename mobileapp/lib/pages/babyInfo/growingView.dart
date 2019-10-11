import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/services/babyService/childGrowthService.dart';
import 'package:mobileapp/services/globals.dart';
import 'package:mobileapp/widgets/cardDisplay.dart';
import 'package:mobileapp/widgets/growthCard.dart';
import 'package:mobileapp/widgets/sixWToThreeM.dart';

class GrowingView extends StatefulWidget {
  @override
  _GrowingViewState createState() => _GrowingViewState();
}

class _GrowingViewState extends State<GrowingView> {
  Future<Baby> baby = fetchBaby();
  TabController _tabController;
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
    //_tabController = new TabController( vsync: ,length: choices.length);
  }

  /*@override
  void dispose() {
    _tabController.dispose();
    super.dispose();
    // baby.then((it) {
    //   layingFaceDownOcc = it.layingFaceDownOcc;
    //   layingFaceDownCon = it.layingFaceDownCon;
    //   layingFaceDownOf = it.layingFaceDownOf;
    //   movingObjectOcc = it.movingObjectOcc;
    //   bigSoundOcc = it.bigSoundOcc;
    //   ohhOcc = it.ohhOcc;
    //   smileOcc = it.smileOcc;

    //   ///
    //   raiseHeadOcc = it.raiseHeadOcc;
    //   playFingersOcc = it.playFingersOcc;
    //   strechHandOcc = it.strechHandOcc;
    //   soundTurnOcc = it.soundTurnOcc;
    //   singleLetterSoundOcc = it.singleLetterSoundOcc;
    //   laughtLoudOcc = it.laughtLoudOcc;

    //   ///
    //   raiseHead2Occ = it.raiseHead2Occ;
    //   turnFaceUpDownOcc = it.turnFaceUpDownOcc;
    //   switchObjectOcc = it.switchObjectsOcc;
    //   makeSoundOcc = it.makeSoundOcc;

    //   ///
    //   sittingOcc = it.sittingOcc;
    //   holdingHimSelfOcc = it.holdingHimSelfOcc;
    //   thumbForeOcc = it.thumbForeOcc;
    //   followingVoiceOcc = it.followingVoiceOcc;
    //   proWordsOcc = it.proWordsOcc;
    //   understandOcc = it.understandOcc;

    //   ///
    //   walkingWithHelpOcc = it.walkingWithHelpOcc;
    //   canSpeakOcc = canSpeakOcc;
    //   handPointOcc = it.handPointOcc;
    //   canRollOcc = it.canRollOcc;
    //   canIdentifyOcc = it.canIdentifyOcc;

    //   ///
    //   walkingWithoutHelpOcc = it.walkingWithoutHelpOcc;
    //   canClimbOcc = it.canClimbOcc;
    //   makeTowerOcc = it.makeTowerOcc;
    //   eatHimselfOcc = it.eatHimselfOcc;
    //   canTalkTenOcc = it.canTalkTenOcc;
    //   lipsShapeOcc = it.lipsShapeOcc;

    //   ///
    //   runWithoutFallingOcc = it.runWithoutFallingOcc;
    //   upDownStairOcc = it.upDownStairOcc;
    //   canCopyOcc = it.canCopyOcc;
    //   canCreateOcc = it.canCreateOcc;

    //   // bigNoise = it.bigNoise;
    //   // vehicleNoise = it.vehicleNoise;
    //   // guardianNoise = it.guardianNoise;
    //   // turnToNoise = it.turnToNoise;
    //   // turnToGuardianNoise = it.turnToGuardianNoise;
    //   // dailyNoise = it.dailyNoise;
    //   // hiddenNoise = it.hiddenNoise;
    //   // rythmeicNoise = it.rythmeicNoise;
    //   // respondNameNoice = it.respondNameNoice;
    //   // byeNoise = it.byeNoise;
    // });
  }*/

  // static bool layingFaceDownVis,
  //     movingObjectVis,
  //     ohhVis,
  //     bigSoundVis,
  //     smileVis,
  //     raiseHeadVis,
  //     playFingersVis,
  //     strechHandVis,
  //     soundTurnVis,
  //     singleLetterSoundVis,
  //     laughtLoudVis,
  //     raiseHead2Vis,
  //     turnFaceUpDownVis,
  //     switchObjectVis,
  //     makeSoundVis,
  //     sittingVis,
  //     holdingHimSelfVis,
  //     thumbForeVis,
  //     followingVoiceVis,
  //     proWordsVis,
  //     understandVis,
  //     walkingWithHelpVis,
  //     canSpeakVis,
  //     handPointVis,
  //     canRollVis,
  //     canIdentifyVis,
  //     walkingWithoutHelpVis,
  //     canClimbVis,
  //     makeTowerVis,
  //     eatHimselfVis,
  //     canTalkTenVis,
  //     lipsShapeVis,
  //     runWithoutFallingVis,
  //     upDownStairVis,
  //     canCopyVis,
  //     canCreateVis = false;

  GrowthCard card1, card2, card3, card4, card5, card6;

// List<Display> choices = const <Display>[
//   const Display(title: 'CAR', icon: Icons.directions_car),
//   const Display(title: 'BICYCLE', icon: Icons.directions_bike),
//   const Display(title: 'BOAT', icon: Icons.directions_boat),
//   const Display(title: 'BUS', icon: Icons.directions_bus),
//   const Display(title: 'TRAIN', icon: Icons.directions_railway),
//   const Display(title: 'WALK', icon: Icons.directions_walk),
// ];

  // List choices = [
  //   SixWToThreeM(
  //     card1: GrowthCard(
  //         'While lying face downwards raise the head',
  //         layingFaceDownOcc,
  //         layingFaceDownCon,
  //         layingFaceDownOf,
  //         layingFaceDownVis),
  //     card2: GrowthCard(
  //         'While lying face downwards raise the head',
  //         layingFaceDownOcc,
  //         layingFaceDownCon,
  //         layingFaceDownOf,
  //         layingFaceDownVis),
  //     card3: GrowthCard(
  //         'While lying face downwards raise the head',
  //         layingFaceDownOcc,
  //         layingFaceDownCon,
  //         layingFaceDownOf,
  //         layingFaceDownVis),
  //     card4: GrowthCard(
  //         'While lying face downwards raise the head',
  //         layingFaceDownOcc,
  //         layingFaceDownCon,
  //         layingFaceDownOf,
  //         layingFaceDownVis),
  //     card5: GrowthCard(
  //         'While lying face downwards raise the head',
  //         layingFaceDownOcc,
  //         layingFaceDownCon,
  //         layingFaceDownOf,
  //         layingFaceDownVis),
  //     card6: GrowthCard(
  //         'While lying face downwards raise the head',
  //         layingFaceDownOcc,
  //         layingFaceDownCon,
  //         layingFaceDownOf,
  //         layingFaceDownVis),
  //   ),

  //   // SixWToThreeM(title: 'BICYCLE', icon: Icons.directions_bike),
  //   // SixWToThreeM(title: 'BOAT', icon: Icons.directions_boat),
  //   // SixWToThreeM(title: 'BUS', icon: Icons.directions_bus),
  //   // SixWToThreeM(title: 'TRAIN', icon: Icons.directions_railway),
  //   // SixWToThreeM(title: 'WALK', icon: Icons.directions_walk),
  // ];
  var logger = Logger();
  @override
  Widget build(BuildContext context) {
    Choice index;
    return FutureBuilder<Baby>(
      future: fetchBaby(),
      builder: (context, snapshot) {
     
        List<Choice> choices = <Choice>[
          Choice(
              'CAR',
              Icons.directions_car,
              'Six Week to Three Months',
              GrowthCard(
                  'While lying face downwards raise the head',
                  snapshot.data.layingFaceDownOcc.toString(),
                  snapshot.data.layingFaceDownCon.toString(),
                  snapshot.data.layingFaceDownOf.toString(),
                  layingFaceDownVis),
              GrowthCard(
                  'While lying face downwards raise the head',
                  snapshot.data.layingFaceDownOcc.toString(),
                  snapshot.data.layingFaceDownCon.toString(),
                  snapshot.data.layingFaceDownOf.toString(),
                  layingFaceDownVis)),
          Choice(
              'BUS',
              Icons.directions_car,
              'Six Week to Three Months',
              GrowthCard(
                  'While lying face downwards raise the head',
                  snapshot.data.movingObjectOcc.toString(),
                  snapshot.data.movingObjectCon.toString(),
                  snapshot.data.movingObjectOf.toString(),
                  layingFaceDownVis),
              GrowthCard(
                  'While lying face downwards raise the head',
                  snapshot.data.layingFaceDownOcc.toString(),
                  snapshot.data.layingFaceDownCon.toString(),
                  snapshot.data.layingFaceDownOf.toString(),
                  layingFaceDownVis)),
        ];
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else {
          return DefaultTabController(
            length: choices.length,
            child: Scaffold(
                appBar: AppBar(
                  title: Text('Baby Growth'),
                  bottom: TabBar(
                    isScrollable: true,
                    tabs: choices.map((Choice choice) {
                      index = choice;
                      return Tab(
                        text: choice.title,
                        icon: Icon(choice.icon),
                      );
                    }).toList(),
                  ),
                ),
                body: SizedBox(
                  
                  child: TabBarView(
                    children: choices.map((Choice choice){
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Display(choice: choice,),
                      );
                    }).toList(),
                  )/*Column(
                    children: <Widget>[
                      Display(
                        choice: index,
                      ),
                    ],
                  ),*/
                )

                //Display(choice: choice),
                ),
          );
        }
      },
    );
    /* return FutureBuilder<Baby>(
        future: fetchBaby(),
        builder: (context, snapshot) {
          List<Choice> choices = <Choice>[
            Choice(
                'CAR',
                Icons.directions_car,
                'xxx',
                GrowthCard(
                    'xxxx',
                    snapshot.data.layingFaceDownOcc,
                    snapshot.data.layingFaceDownCon,
                    snapshot.data.layingFaceDownOf,
                    layingFaceDownVis),
                GrowthCard(
                    'xxxx',
                    snapshot.data.layingFaceDownOcc,
                    snapshot.data.layingFaceDownCon,
                    snapshot.data.layingFaceDownOf,
                    layingFaceDownVis)),
          ];
         Scaffold(
            appBar: AppBar(
              title: const Text('Tabbed AppBar'),
              bottom: TabBar(
                isScrollable: true,
                tabs: choices.map((Choice choice) {
                  return Tab(
                    text: choice.title,
                    icon: Icon(choice.icon),
                  );
                }).toList(),
              ),
            ),
            body: TabBarView(
              children: choices.map((Choice choice) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Display(choice: choice),
                );
              }).toList(),
            ),
          );
       
        });

        */
  }
}

class Choice {
  //const Choicex({this.title, this.icon});
  Choice(this.title, this.icon, this.chipTitle, this.card1, this.card2);

  IconData icon;
  String title, chipTitle;
  GrowthCard card1, card2;
}

//
