import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/services/babyService/childGrowthService.dart';
import 'package:mobileapp/services/globals.dart';
import 'package:mobileapp/widgets/cardDisplay.dart';
import 'package:mobileapp/widgets/growthCard.dart';
import 'package:mobileapp/widgets/sixWToThreeM.dart';
import 'package:toast/toast.dart';
import 'package:mobileapp/services/globals.dart' as globals;
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';

//Update function no tworking

Future<Baby> baby = fetchBaby();
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
    switchObjectsOcc,
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

String layingFaceDownCon,
    movingObjectCon,
    bigSoundCon,
    ohhCon,
    smileCon,
    raiseHeadCon,
    playFingersCon,
    strechHandCon,
    soundTurnCon,
    singleLetterSoundCon,
    laughtLoudCon,
    raiseHead2Con,
    turnFaceUpDownCon,
    switchObjectsCon,
    makeSoundCon,
    sittingCon,
    holdingHimSelfCon,
    thumbForeCon,
    followingVoiceCon,
    proWordsCon,
    understandCon,
    walkingWithHelpCon,
    canSpeakCon,
    handPointCon,
    canRollCon,
    canIdentifyCon,
    walkingWithoutHelpCon,
    canClimbCon,
    makeTowerCon,
    eatHimselfCon,
    canTalkTenCon,
    lipsShapeCon,
    runWithoutFallingCon,
    upDownStairCon,
    canCopyCon,
    canCreateCon;

String layingFaceDownOf,
    movingObjectOf,
    bigSoundOf,
    ohhOf,
    smileOf,
    raiseHeadOf,
    playFingersOf,
    strechHandOf,
    soundTurnOf,
    singleLetterSoundOf,
    laughtLoudOf,
    raiseHead2Of,
    turnFaceUpDownOf,
    switchObjectsOf,
    makeSoundOf,
    sittingOf,
    holdingHimSelfOf,
    thumbForeOf,
    followingVoiceOf,
    proWordsOf,
    understandOf,
    walkingWithHelpOf,
    canSpeakOf,
    handPointOf,
    canRollOf,
    canIdentifyOf,
    walkingWithoutHelpOf,
    canClimbOf,
    makeTowerOf,
    eatHimselfOf,
    canTalkTenOf,
    lipsShapeOf,
    runWithoutFallingOf,
    upDownStairOf,
    canCopyOf,
    canCreateOf;

class GrowingView extends StatefulWidget {
  @override
  _GrowingViewState createState() => _GrowingViewState();
}

class _GrowingViewState extends State<GrowingView> {
  TabController _tabController;

  @override
  var logger = Logger();
  @override
  Widget build(BuildContext context) {
    initState() {
      logger.i('in initState');
      super.initState();
      baby.then((it) {
        layingFaceDownOcc = it.layingFaceDownOcc;
        logger.e(layingFaceDownOcc, 'layingFaceDownOcc');
        it.movingObjectOcc = movingObjectOcc;
        it.bigSoundOcc = bigSoundOcc;
        it.ohhOcc = ohhOcc;
        it.smileOcc = smileOcc;
        it.raiseHeadOcc = raiseHeadOcc;
        it.playFingersOcc = playFingersOcc;
        it.strechHandOcc = strechHandOcc;
        it.soundTurnOcc = soundTurnOcc;
        it.singleLetterSoundOcc = singleLetterSoundOcc;
        it.laughtLoudOcc = laughtLoudOcc;
        it.raiseHead2Occ = raiseHead2Occ;
        it.turnFaceUpDownOcc = turnFaceUpDownOcc;
        //it.switchObjectsOcc = switchObjectsOcc;
        it.makeSoundOcc = makeSoundOcc;
        it.sittingOcc = sittingOcc;
        it.holdingHimSelfOcc = holdingHimSelfOcc;
        it.thumbForeOcc = thumbForeOcc;
        it.followingVoiceOcc = followingVoiceOcc;
        it.proWordsOcc = proWordsOcc;
        it.understandOcc = understandOcc;
        it.walkingWithHelpOcc = walkingWithHelpOcc;
        it.canSpeakOcc = canSpeakOcc;
        it.handPointOcc = handPointOcc;
        it.canRollOcc = canRollOcc;
        it.canIdentifyOcc = canIdentifyOcc;
        it.walkingWithoutHelpOcc = walkingWithoutHelpOcc;
        it.canClimbOcc = canClimbOcc;
        it.makeTowerOcc = makeTowerOcc;
        it.eatHimselfOcc = eatHimselfOcc;
        it.canTalkTenOcc = canTalkTenOcc;
        it.lipsShapeOcc = lipsShapeOcc;
        it.runWithoutFallingOcc = runWithoutFallingOcc;
        it.upDownStairOcc = upDownStairOcc;
        it.canCopyOcc = canCopyOcc;
        it.canCreateOcc = canCreateOcc;

        it.layingFaceDownCon = layingFaceDownCon;
        it.movingObjectCon = movingObjectCon;
        it.bigSoundCon = bigSoundCon;
        it.ohhCon = ohhCon;
        it.smileCon = smileCon;
        it.raiseHeadCon = raiseHeadCon;
        it.playFingersCon = playFingersCon;
        it.strechHandCon = strechHandCon;
        it.soundTurnCon = soundTurnCon;
        it.singleLetterSoundCon = singleLetterSoundCon;
        it.laughtLoudCon = laughtLoudCon;
        it.raiseHead2Con = raiseHead2Con;
        it.turnFaceUpDownCon = turnFaceUpDownCon;
        //it.switchObjectsCon = switchObjectsCon;
        it.makeSoundCon = makeSoundCon;
        it.sittingCon = sittingCon;
        it.holdingHimSelfCon = holdingHimSelfCon;
        it.thumbForeCon = thumbForeCon;
        it.followingVoiceCon = followingVoiceCon;
        it.proWordsCon = proWordsCon;
        it.understandCon = understandCon;
        it.walkingWithHelpCon = walkingWithHelpCon;
        it.canSpeakCon = canSpeakCon;
        it.handPointCon = handPointCon;
        it.canRollCon = canRollCon;
        it.canIdentifyCon = canIdentifyCon;
        it.walkingWithoutHelpCon = walkingWithoutHelpCon;
        it.canClimbCon = canClimbCon;
        it.makeTowerCon = makeTowerCon;
        it.eatHimselfCon = eatHimselfCon;
        it.canTalkTenCon = canTalkTenCon;
        it.lipsShapeCon = lipsShapeCon;
        it.runWithoutFallingCon = runWithoutFallingCon;
        it.upDownStairCon = upDownStairCon;
        it.canCopyCon = canCopyCon;
        it.canCreateCon = canCreateCon;

        it.layingFaceDownOf = layingFaceDownOf;
        it.movingObjectOf = movingObjectOf;
        it.bigSoundOf = bigSoundOf;
        it.ohhOf = ohhOf;
        it.smileOf = smileOf;
        it.raiseHeadOf = raiseHeadOf;
        it.playFingersOf = playFingersOf;
        it.strechHandOf = strechHandOf;
        it.soundTurnOf = soundTurnOf;
        it.singleLetterSoundOf = singleLetterSoundOf;
        it.laughtLoudOf = laughtLoudOf;
        it.raiseHead2Of = raiseHead2Of;
        it.turnFaceUpDownOf = turnFaceUpDownOf;
        //it.switchObjectsOf = switchObjectsOf;
        it.makeSoundOf = makeSoundOf;
        it.sittingOf = sittingOf;
        it.holdingHimSelfOf = holdingHimSelfOf;
        it.thumbForeOf = thumbForeOf;
        it.followingVoiceOf = followingVoiceOf;
        it.proWordsOf = proWordsOf;
        it.understandOf = understandOf;
        it.walkingWithHelpOf = walkingWithHelpOf;
        it.canSpeakOf = canSpeakOf;
        it.handPointOf = handPointOf;
        it.canRollOf = canRollOf;
        it.canIdentifyOf = canIdentifyOf;
        it.walkingWithoutHelpOf = walkingWithoutHelpOf;
        it.canClimbOf = canClimbOf;
        it.makeTowerOf = makeTowerOf;
        it.eatHimselfOf = eatHimselfOf;
        it.canTalkTenOf = canTalkTenOf;
        it.lipsShapeOf = lipsShapeOf;
        it.runWithoutFallingOf = runWithoutFallingOf;
        it.upDownStairOf = upDownStairOf;
        it.canCopyOf = canCopyOf;
        it.canCreateOf = canCreateOf;
      });
    }

    Choice index;
    var data = EasyLocalizationProvider.of(context).data;

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
        canCreateVis = true;

    return FutureBuilder<Baby>(
      future: fetchBaby(),
      builder: (context, snapshot) {
        logger.w(layingFaceDownOcc, 'layingFaceDownOcc');
        if (snapshot.connectionState == ConnectionState.waiting) {
          if (layingFaceDownOcc == null) {
            layingFaceDownVis = true;
            layingFaceDownOcc = "No Data";
            layingFaceDownCon = "No Data";
            layingFaceDownOf = "No Data";
          } else {
            layingFaceDownVis = false;

            // layingFaceDownOcc = snapshot.data.layingFaceDownOcc;
            // layingFaceDownCon = snapshot.data.layingFaceDownCon;
            // layingFaceDownOf = snapshot.data.layingFaceDownOf;
          }
          if (movingObjectOcc == null) {
            movingObjectVis = true;
            movingObjectCon = "No Data";
            movingObjectOcc = "No Data";
            movingObjectOf = "No Data";
          } else {
            movingObjectVis = false;
            // movingObjectCon = snapshot.data.movingObjectCon;
            // movingObjectOcc = snapshot.data.movingObjectOcc;
            // movingObjectOf = snapshot.data.movingObjectOf;
          }
          if (bigSoundOcc == null) {
            bigSoundVis = true;
            bigSoundCon = "No Data";
            bigSoundOcc = "No Data";
            bigSoundOf = "No Data";
          } else {
            bigSoundVis = false;
            // bigSoundCon = snapshot.data.bigSoundCon;
            // bigSoundOcc = snapshot.data.bigSoundOcc;
            // bigSoundOf = snapshot.data.bigSoundOf;
          }
          if (ohhOcc == null) {
            ohhVis = true;
            ohhCon = "No Data";
            ohhOcc = "No Data";
            ohhOf = "No Data";
          } else {
            ohhVis = false;
            // ohhCon = snapshot.data.ohhCon;
            // ohhOcc = snapshot.data.ohhOcc;
            // ohhOf = snapshot.data.ohhOf;
          }
          if (smileOcc == null) {
            smileVis = true;
            smileCon = "No Data";
            smileOcc = "No Data";
            smileOf = "No Data";
          } else {
            smileVis = false;
            // smileCon = snapshot.data.smileCon;
            // smileOcc = snapshot.data.smileOcc;
            // smileOf = snapshot.data.smileOf;
          }
          if (raiseHeadOcc == null) {
            raiseHeadVis = true;
            raiseHeadCon = "No Data";
            raiseHeadOcc = "No Data";
            raiseHeadOf = "No Data";
          } else {
            raiseHeadVis = false;
            // raiseHeadCon = snapshot.data.raiseHeadCon;
            // raiseHeadOcc = snapshot.data.raiseHeadOcc;
            // raiseHeadOf = snapshot.data.raiseHeadOf;
          }
          if (playFingersOcc == null) {
            playFingersVis = true;
            playFingersCon = "No Data";
            playFingersOcc = "No Data";
            playFingersOf = "No Data";
          } else {
            playFingersVis = false;
            // playFingersCon = snapshot.data.playFingersCon;
            // playFingersOcc = snapshot.data.playFingersOcc;
            // playFingersOf = snapshot.data.playFingersOf;
          }
          if (strechHandOcc == null) {
            strechHandVis = true;
            strechHandCon = "No Data";
            strechHandOcc = "No Data";
            strechHandOf = "No Data";
          } else {
            strechHandVis = false;
            // strechHandCon = snapshot.data.strechHandCon;
            // strechHandOcc = snapshot.data.strechHandOcc;
            // strechHandOf = snapshot.data.strechHandOf;
          }
          if (soundTurnOcc == null) {
            soundTurnVis = true;
            soundTurnCon = "No Data";
            soundTurnOcc = "No Data";
            soundTurnOf = "No Data";
          } else {
            soundTurnVis = false;
            // soundTurnCon = snapshot.data.soundTurnCon;
            // soundTurnOcc = snapshot.data.soundTurnOcc;
            // soundTurnOf = snapshot.data.soundTurnOf;
          }
          if (singleLetterSoundOcc == null) {
            singleLetterSoundVis = true;
            singleLetterSoundCon = "No Data";
            singleLetterSoundOcc = "No Data";
            singleLetterSoundOf = "No Data";
          } else {
            singleLetterSoundVis = false;
            // singleLetterSoundCon = snapshot.data.singleLetterSoundCon;
            // singleLetterSoundOcc = snapshot.data.singleLetterSoundOcc;
            // singleLetterSoundOf = snapshot.data.singleLetterSoundOf;
          }
          if (laughtLoudOcc == null) {
            laughtLoudVis = true;
            laughtLoudCon = "No Data";
            laughtLoudOcc = "No Data";
            laughtLoudOf = "No Data";
          } else {
            laughtLoudVis = false;
            // laughtLoudCon = snapshot.data.laughtLoudCon;
            // laughtLoudOcc = snapshot.data.laughtLoudOcc;
            // laughtLoudOf = snapshot.data.laughtLoudOf;
          }
          if (raiseHead2Occ == null) {
            raiseHead2Vis = true;
            raiseHead2Con = "No Data";
            raiseHead2Occ = "No Data";
            raiseHead2Of = "No Data";
          } else {
            raiseHead2Vis = false;
            // raiseHead2Con = snapshot.data.raiseHead2Con;
            // raiseHead2Occ = snapshot.data.raiseHead2Occ;
            // raiseHead2Of = snapshot.data.raiseHead2Of;
          }
          if (turnFaceUpDownOcc == null) {
            turnFaceUpDownVis = true;
            turnFaceUpDownCon = "No Data";
            turnFaceUpDownOcc = "No Data";
            turnFaceUpDownOf = "No Data";
          } else {
            turnFaceUpDownVis = false;
            // turnFaceUpDownCon = snapshot.data.turnFaceUpDownCon;
            // turnFaceUpDownOcc = snapshot.data.turnFaceUpDownOcc;
            // turnFaceUpDownOf = snapshot.data.turnFaceUpDownOf;
          }
          if (switchObjectsOcc == null) {
            switchObjectVis = true;
            switchObjectsCon = "No Data";
            switchObjectsOcc = "No Data";
            switchObjectsOf = "No Data";
          } else {
            switchObjectVis = false;
            // switchObjectsCon = snapshot.data.switchObjectCon;
            // switchObjectsOcc = snapshot.data.switchObjectsOcc;
            // switchObjectsOf = snapshot.data.switchObjectOf;
          }
          if (makeSoundOcc == null) {
            makeSoundVis = true;
            makeSoundCon = "No Data";
            makeSoundOcc = "No Data";
            makeSoundOf = "No Data";
          } else {
            makeSoundVis = false;
            // makeSoundCon = snapshot.data.makeSoundCon;
            // makeSoundOcc = snapshot.data.makeSoundOcc;
            // makeSoundOf = snapshot.data.makeSoundOf;
          }
          if (sittingOcc == null) {
            sittingVis = true;
            sittingCon = "No Data";
            sittingOcc = "No Data";
            sittingOf = "No Data";
          } else {
            sittingVis = false;
            // sittingCon = snapshot.data.sittingCon;
            // sittingOcc = snapshot.data.sittingOcc;
            // sittingOf = snapshot.data.sittingOf;
          }
          if (holdingHimSelfOcc == null) {
            holdingHimSelfVis = true;
            holdingHimSelfCon = "No Data";
            holdingHimSelfOcc = "No Data";
            holdingHimSelfOf = "No Data";
          } else {
            holdingHimSelfVis = false;
            // holdingHimSelfCon = snapshot.data.holdingHimSelfCon;
            // holdingHimSelfOcc = snapshot.data.holdingHimSelfOcc;
            // holdingHimSelfOf = snapshot.data.holdingHimSelfOf;
          }
          if (thumbForeOcc == null) {
            thumbForeVis = true;
            thumbForeCon = "No Data";
            thumbForeOcc = "No Data";
            thumbForeOf = "No Data";
          } else {
            thumbForeVis = false;
            // thumbForeCon = snapshot.data.thumbForeCon;
            // thumbForeOcc = snapshot.data.thumbForeOcc;
            // thumbForeOf = snapshot.data.thumbForeOf;
          }
          if (followingVoiceOcc == null) {
            followingVoiceVis = true;
            followingVoiceCon = "No Data";
            followingVoiceOcc = "No Data";
            followingVoiceOf = "No Data";
          } else {
            followingVoiceVis = false;
            // followingVoiceCon = snapshot.data.followingVoiceCon;
            // followingVoiceOcc = snapshot.data.followingVoiceOcc;
            // followingVoiceOf = snapshot.data.followingVoiceOf;
          }
          if (proWordsOcc == null) {
            proWordsVis = true;
            proWordsCon = "No Data";
            proWordsOcc = "No Data";
            proWordsOf = "No Data";
          } else {
            proWordsVis = false;
            // proWordsCon = snapshot.data.proWordsCon;
            // proWordsOcc = snapshot.data.proWordsOcc;
            // proWordsOf = snapshot.data.proWordsOf;
          }
          if (understandOcc == null) {
            understandVis = true;
            understandCon = "No Data";
            understandOcc = "No Data";
            understandOf = "No Data";
          } else {
            understandVis = false;
            // understandCon = snapshot.data.understandCon;
            // understandOcc = snapshot.data.understandOcc;
            // understandOf = snapshot.data.understandOf;
          }
          if (walkingWithHelpOcc == null) {
            walkingWithHelpVis = true;
            walkingWithHelpCon = "No Data";
            walkingWithHelpOcc = "No Data";
            walkingWithHelpOf = "No Data";
          } else {
            walkingWithHelpVis = false;
            // walkingWithHelpCon = snapshot.data.walkingWithHelpCon;
            // walkingWithHelpOcc = snapshot.data.walkingWithHelpOcc;
            // walkingWithHelpOf = snapshot.data.walkingWithHelpOf;
          }
          if (canSpeakOcc == null) {
            canSpeakVis = true;
            canSpeakCon = "No Data";
            canSpeakOcc = "No Data";
            canSpeakOf = "No Data";
          } else {
            canSpeakVis = false;
            // canSpeakCon = snapshot.data.canSpeakCon;
            // canSpeakOcc = snapshot.data.canSpeakOcc;
            // canSpeakOf = snapshot.data.canSpeakOf;
          }
          if (handPointOcc == null) {
            handPointVis = true;
            handPointCon = "No Data";
            handPointOcc = "No Data";
            handPointOf = "No Data";
          } else {
            handPointVis = false;
            // handPointCon = snapshot.data.handPointCon;
            // handPointOcc = snapshot.data.handPointOcc;
            // handPointOf = snapshot.data.handPointOf;
          }
          if (canRollOcc == null) {
            canRollVis = true;
            canRollCon = "No Data";
            canRollOcc = "No Data";
            canRollOf = "No Data";
          } else {
            canRollVis = false;
            // canRollCon = snapshot.data.canRollCon;
            // canRollOcc = snapshot.data.canRollOcc;
            // canRollOf = snapshot.data.canRollOf;
          }
          if (canIdentifyOcc == null) {
            canIdentifyVis = true;
            canIdentifyCon = "No Data";
            canIdentifyOcc = "No Data";
            canIdentifyOf = "No Data";
          } else {
            canIdentifyVis = false;
            // canIdentifyCon = snapshot.data.canIdentifyCon;
            // canIdentifyOcc = snapshot.data.canIdentifyOcc;
            // canIdentifyOf = snapshot.data.canIdentifyOf;
          }
          if (walkingWithoutHelpOcc == null) {
            walkingWithoutHelpVis = true;
            walkingWithoutHelpCon = "No Data";
            walkingWithoutHelpOcc = "No Data";
            walkingWithoutHelpOf = "No Data";
          } else {
            walkingWithoutHelpVis = false;
            // walkingWithoutHelpCon = snapshot.data.walkingWithoutHelpCon;
            // walkingWithoutHelpOcc = snapshot.data.walkingWithoutHelpOcc;
            // walkingWithoutHelpOf = snapshot.data.walkingWithoutHelpOf;
          }
          if (canClimbOcc == null) {
            canClimbVis = true;
            canClimbCon = "No Data";
            canClimbOcc = "No Data";
            canClimbOf = "No Data";
          } else {
            canClimbVis = false;
            // canClimbCon = snapshot.data.canClimbCon;
            // canClimbOcc = snapshot.data.canClimbOcc;
            // canClimbOf = snapshot.data.canClimbOf;
          }
          if (makeTowerOcc == null) {
            makeTowerVis = true;
            makeTowerCon = "No Data";
            makeTowerOcc = "No Data";
            makeTowerOf = "No Data";
          } else {
            makeTowerVis = false;
            // makeTowerCon = snapshot.data.makeTowerCon;
            // makeTowerOcc = snapshot.data.makeTowerOcc;
            // makeTowerOf = snapshot.data.makeTowerOf;
          }
          if (eatHimselfOcc == null) {
            eatHimselfVis = true;
            eatHimselfCon = "No Data";
            eatHimselfOcc = "No Data";
            eatHimselfOf = "No Data";
          } else {
            eatHimselfVis = false;
            // eatHimselfCon = snapshot.data.eatHimselfCon;
            // eatHimselfOcc = snapshot.data.eatHimselfOcc;
            // eatHimselfOf = snapshot.data.eatHimselfOf;
          }
          if (canTalkTenOcc == null) {
            canTalkTenVis = true;
            canTalkTenCon = "No Data";
            canTalkTenOcc = "No Data";
            canTalkTenOf = "No Data";
          } else {
            canTalkTenVis = false;
            // canTalkTenCon = snapshot.data.canTalkTenCon;
            // canTalkTenOcc = snapshot.data.canTalkTenCon;
            // canTalkTenOf = snapshot.data.canTalkTenOf;
          }
          if (lipsShapeOcc == null) {
            lipsShapeVis = true;
            lipsShapeCon = "No Data";
            lipsShapeOcc = "No Data";
            lipsShapeOf = "No Data";
          } else {
            lipsShapeVis = false;
            // lipsShapeCon = snapshot.data.lipsShapeCon;
            // lipsShapeOcc = snapshot.data.lipsShapeOcc;
            // lipsShapeOf = snapshot.data.lipsShapeOf;
          }
          if (runWithoutFallingOcc == null) {
            runWithoutFallingVis = true;
            runWithoutFallingCon = "No Data";
            runWithoutFallingOcc = "No Data";
            runWithoutFallingOf = "No Data";
          } else {
            runWithoutFallingVis = false;
            // runWithoutFallingCon = snapshot.data.runWithoutFallingCon;
            // runWithoutFallingOcc = snapshot.data.runWithoutFallingOcc;
            // runWithoutFallingOf = snapshot.data.runWithoutFallingOf;
          }
          if (upDownStairOcc == null) {
            upDownStairVis = true;
            upDownStairCon = "No Data";
            upDownStairOcc = "No Data";
            upDownStairOf = "No Data";
          } else {
            upDownStairVis = false;
            // upDownStairCon = snapshot.data.understandCon;
            // upDownStairOcc = snapshot.data.upDownStairOcc;
            // upDownStairOf = snapshot.data.upDownStairOf;
          }
          if (canCopyOcc == null) {
            canCopyVis = true;
            canCopyCon = "No Data";
            canCopyOcc = "No Data";
            canCopyOf = "No Data";
          } else {
            canCopyVis = false;
            // canCopyCon = snapshot.data.canCopyCon;
            // canCopyOcc = snapshot.data.canCopyOcc;
            // canCopyOf = snapshot.data.canCopyOf;
          }
          if (canCreateOcc == null) {
            canCreateVis = true;
            canCreateCon = "No Data";
            canCreateOcc = "No Data";
            canCreateOf = "No Data";
          } else {
            canCreateVis = false;
            // canCreateCon = snapshot.data.canCreateCon;
            // canCreateOcc = snapshot.data.canCreateOcc;
            // canCreateOf = snapshot.data.canCreateOf;
          }
          return EasyLocalizationProvider(
            data: data,
            child: Scaffold(
              appBar: AppBar(
                title: Text(AppLocalizations.of(context).tr('babygrowth')),
              ),
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        } else {
          logger.i(layingFaceDownOcc, 'layingFaceDownOcc');
          List<Choice> choices = <Choice>[
            Choice(
                '01',
                Icons.book,
                AppLocalizations.of(context).tr('fromsixweeks'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromsixweekstxt1'),
                    layingFaceDownOcc.toString(),
                    layingFaceDownCon.toString(),
                    layingFaceDownOf.toString(),
                    layingFaceDownVis,
                    'lie_your_hips_and_head_up_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromsixweekstxt2'),
                    movingObjectOcc.toString(),
                    movingObjectCon.toString(),
                    movingObjectOf.toString(),
                    movingObjectVis,
                    'something_keeps_moving_from_one_place_to_another_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromsixweekstxt3'),
                    bigSoundOcc.toString(),
                    bigSoundCon.toString(),
                    bigSoundOf.toString(),
                    bigSoundVis,
                    'stopping_or_increasing_action_responds_to_a_sudden_loud_noise_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromsixweekstxt4'),
                    ohhOcc.toString(),
                    ohhCon.toString(),
                    ohhOf.toString(),
                    ohhVis,
                    'sounds_like_a_e_in_response_to_stimulus_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromsixweekstxt5'),
                    smileOcc.toString(),
                    smileCon.toString(),
                    smileOf.toString(),
                    smileVis,
                    'the_mother_recognize_and_smiles_age_at_the_time_of_occurence'),
                5),
            Choice.six(
                '02',
                Icons.book,
                AppLocalizations.of(context).tr('fromthreesixmonths'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromthreesixmonths1'),
                    raiseHeadOcc.toString(),
                    raiseHeadCon.toString(),
                    raiseHeadOf.toString(),
                    raiseHeadVis,
                    'raise_the_head_chest_while_standing_up_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromthreesixmonths2'),
                    playFingersOcc.toString(),
                    playFingersCon.toString(),
                    playFingersOf.toString(),
                    playFingersVis,
                    'they_play_when_crossing_fingers_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromthreesixmonths3'),
                    strechHandOcc.toString(),
                    strechHandCon.toString(),
                    strechHandOf.toString(),
                    strechHandVis,
                    'streching_his_hands_toward_something_he_hold_it_with_his_whole_hand_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromthreesixmonths4'),
                    soundTurnOcc.toString(),
                    soundTurnCon.toString(),
                    soundTurnOf.toString(),
                    soundTurnVis,
                    'when_heard_a_sound_he_turn_his_head_toward_that_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromthreesixmonths5'),
                    singleLetterSoundOcc.toString(),
                    singleLetterSoundCon.toString(),
                    singleLetterSoundOf.toString(),
                    singleLetterSoundVis,
                    'emits_single_letter_sounds_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromthreesixmonths6'),
                    laughtLoudOcc.toString(),
                    laughtLoudCon.toString(),
                    laughtLoudOf.toString(),
                    laughtLoudVis,
                    'smiles_loudely_age_at_the_time_of_occurence'),
                6),
            Choice.four(
                '03',
                Icons.book,
                AppLocalizations.of(context).tr('formsixtoninemonths'),
                GrowthCard(
                    AppLocalizations.of(context).tr('formsixtoninemonthstxt1'),
                    raiseHead2Occ.toString(),
                    raiseHead2Con.toString(),
                    raiseHead2Of.toString(),
                    raiseHead2Vis,
                    'lie_your_hips_and_head_up_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('formsixtoninemonthstxt2'),
                    turnFaceUpDownOcc.toString(),
                    turnFaceUpDownCon.toString(),
                    turnFaceUpDownOf.toString(),
                    turnFaceUpDownVis,
                    'turn_back_again_and_again_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('formsixtoninemonthstxt3'),
                    switchObjectsOcc.toString(),
                    switchObjectsCon.toString(),
                    switchObjectsOf.toString(),
                    switchObjectVis,
                    'change_something_another_hand_to_other_hand_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('formsixtoninemonthstxt4'),
                    makeSoundOcc.toString(),
                    makeSoundCon.toString(),
                    makeSoundOf.toString(),
                    makeSoundVis,
                    'some_sounds_are_repeated_age_at_the_time_of_occurence'),
                4),
            Choice.six(
                '04',
                Icons.book,
                AppLocalizations.of(context).tr('fromninetotwelvemonths'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromninetotwelvemonthstxt1'),
                    sittingOcc.toString(),
                    sittingCon.toString(),
                    sittingOf.toString(),
                    sittingVis,
                    'siting_without_help_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromninetotwelvemonthstxt2'),
                    holdingHimSelfOcc.toString(),
                    holdingHimSelfCon.toString(),
                    holdingHimSelfOf.toString(),
                    holdingHimSelfVis,
                    'holding_himself_alone_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromninetotwelvemonthstxt3'),
                    thumbForeOcc.toString(),
                    thumbForeCon.toString(),
                    thumbForeOf.toString(),
                    thumbForeVis,
                    'holding_small_things_using_thumb_And_forefinger_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromninetotwelvemonthstxt4'),
                    followingVoiceOcc.toString(),
                    followingVoiceCon.toString(),
                    followingVoiceOf.toString(),
                    followingVoiceVis,
                    'following_voice_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromninetotwelvemonthstxt5'),
                    proWordsOcc.toString(),
                    proWordsCon.toString(),
                    proWordsOf.toString(),
                    proWordsVis,
                    'pronounce_individual_words_makes_sounds_that_make_sense_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromninetotwelvemonthstxt6'),
                    understandOcc.toString(),
                    understandCon.toString(),
                    understandOf.toString(),
                    understandVis,
                    'understand_simple_instructions_age_at_the_time_of_occurence'),
                6),
            Choice(
                '05',
                Icons.book,
                AppLocalizations.of(context)
                    .tr('formtwelvemonthstoeighteenmonths'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('formtwelvemonthstoeighteenmonthstxt1'),
                    walkingWithHelpOcc.toString(),
                    walkingWithHelpCon.toString(),
                    walkingWithHelpOf.toString(),
                    walkingWithHelpVis,
                    'walking_with_help_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('formtwelvemonthstoeighteenmonthstxt2'),
                    canSpeakOcc.toString(),
                    canSpeakCon.toString(),
                    canSpeakOf.toString(),
                    canSpeakVis,
                    'they_can_speak_At_least_two_or_three_words_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('formtwelvemonthstoeighteenmonthstxt3'),
                    handPointOcc.toString(),
                    handPointCon.toString(),
                    handPointOf.toString(),
                    handPointVis,
                    'hand_is_pointed_out_when_hearing_familiar_things_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('formtwelvemonthstoeighteenmonthstxt4'),
                    canRollOcc.toString(),
                    canRollCon.toString(),
                    canRollOf.toString(),
                    canRollVis,
                    'they_can_roll_a_boll_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('formtwelvemonthstoeighteenmonthstxt5'),
                    canIdentifyOcc.toString(),
                    canIdentifyCon.toString(),
                    canIdentifyOf.toString(),
                    canIdentifyVis,
                    'can_identify_at_least_one_body_part_age_at_the_time_of_occurence'),
                5),
            Choice.six(
                '06',
                Icons.book,
                AppLocalizations.of(context).tr('fromeighteenmonthstotwoyears'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromeighteenmonthstotwoyearstxt1'),
                    walkingWithHelpOcc.toString(),
                    walkingWithHelpCon.toString(),
                    walkingWithHelpOf.toString(),
                    walkingWithoutHelpVis,
                    'walking_without_help_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromeighteenmonthstotwoyearstxt2'),
                    canClimbOcc.toString(),
                    canClimbCon.toString(),
                    canClimbOf.toString(),
                    canClimbVis,
                    'can_climb_the_stair_with_help_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromeighteenmonthstotwoyearstxt3'),
                    makeTowerOcc.toString(),
                    makeTowerCon.toString(),
                    makeTowerOf.toString(),
                    makeTowerVis,
                    'can_make_a_tower_using_building_blocks_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromeighteenmonthstotwoyearstxt4'),
                    eatHimselfOcc.toString(),
                    eatHimselfCon.toString(),
                    eatHimselfOf.toString(),
                    eatHimselfVis,
                    'eat_himself_alone_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromeighteenmonthstotwoyearstxt5'),
                    canTalkTenOcc.toString(),
                    canTalkTenCon.toString(),
                    canTalkTenOf.toString(),
                    canTalkTenVis,
                    'can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromeighteenmonthstotwoyearstxt6'),
                    lipsShapeOcc.toString(),
                    lipsShapeCon.toString(),
                    lipsShapeOf.toString(),
                    lipsShapeVis,
                    'the_lips_are_sharpened_to_kiss_age_at_the_time_of_occurence'),
                6),
            Choice.four(
                '07',
                Icons.book,
                AppLocalizations.of(context).tr('fromtwotothreeyears'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromtwotothreeyearstxt1'),
                    runWithoutFallingOcc.toString(),
                    runWithoutFallingCon.toString(),
                    runWithoutFallingOf.toString(),
                    runWithoutFallingVis,
                    'ability_to_run_without_falling_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromtwotothreeyearstxt2'),
                    upDownStairOcc.toString(),
                    upDownStairCon.toString(),
                    upDownStairOf.toString(),
                    upDownStairVis,
                    'ability_to_down_and_up_stair_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromtwotothreeyearstxt3'),
                    canCopyOcc.toString(),
                    canCopyCon.toString(),
                    canCopyOf.toString(),
                    canCopyVis,
                    'can_copy_an_art_with_a_circle_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromtwotothreeyearstxt4'),
                    canCreateOcc.toString(),
                    canCreateCon.toString(),
                    canCreateOf.toString(),
                    canCreateVis,
                    'can_create_a_sentence_with_three_or_more_words_age_at_the_time_of_occurence'),
                4),
          ];
          return EasyLocalizationProvider(
            child: DefaultTabController(
              length: choices.length,
              child: Scaffold(
                appBar: AppBar(
                  title: Text(AppLocalizations.of(context)
                      .tr('babygrowth')), //babygrowth
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
                    children: choices.map((Choice choice) {
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Display(
                          choice: choice,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}

class Choice {
  Choice(this.title, this.icon, this.chipTitle, this.card1, this.card2,
      this.card3, this.card4, this.card5, this.cards);
  Choice.six(this.title, this.icon, this.chipTitle, this.card1, this.card2,
      this.card3, this.card4, this.card5, this.card6, this.cards);
  Choice.four(this.title, this.icon, this.chipTitle, this.card1, this.card2,
      this.card3, this.card4, this.cards);
  IconData icon;
  int cards;
  String title, chipTitle;
  GrowthCard card1, card2, card3, card4, card5, card6;
}

//
