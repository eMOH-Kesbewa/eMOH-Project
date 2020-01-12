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

class GrowingView extends StatefulWidget {
  @override
  _GrowingViewState createState() => _GrowingViewState();
}

class _GrowingViewState extends State<GrowingView> {
  Future<Baby> baby = fetchBaby();
  TabController _tabController;

  @override
  var logger = Logger();
  @override
  Widget build(BuildContext context) {
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
        if (snapshot.connectionState == ConnectionState.waiting) {
          return EasyLocalizationProvider(
            data: data,
            child: Scaffold(
              appBar: AppBar(
                title: Text('Baby Growth'),
              ),
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        } else {
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

          List<Choice> choices = <Choice>[
            Choice(
                '01',
                Icons.book,
                AppLocalizations.of(context).tr('fromsixweeks'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromsixweekstxt1'),
                    snapshot.data.layingFaceDownOcc.toString(),
                    snapshot.data.layingFaceDownCon.toString(),
                    snapshot.data.layingFaceDownOf.toString(),
                    layingFaceDownVis,
                    'lie_your_hips_and_head_up_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromsixweekstxt2'),
                    snapshot.data.movingObjectOcc.toString(),
                    snapshot.data.movingObjectCon.toString(),
                    snapshot.data.movingObjectOf.toString(),
                    movingObjectVis,
                    'something_keeps_moving_from_one_place_to_another_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromsixweekstxt3'),
                    snapshot.data.bigSoundOcc.toString(),
                    snapshot.data.bigSoundCon.toString(),
                    snapshot.data.bigSoundOf.toString(),
                    bigSoundVis,
                    'stopping_or_increasing_action_responds_to_a_sudden_loud_noise_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromsixweekstxt4'),
                    snapshot.data.ohhOcc.toString(),
                    snapshot.data.ohhCon.toString(),
                    snapshot.data.ohhOf.toString(),
                    ohhVis,
                    'sounds_like_a_e_in_response_to_stimulus_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromsixweekstxt5'),
                    snapshot.data.smileOcc.toString(),
                    snapshot.data.smileCon.toString(),
                    snapshot.data.smileOf.toString(),
                    smileVis,
                    'the_mother_recognize_and_smiles_age_at_the_time_of_occurence'),
                5),
            Choice.six(
                '02',
                Icons.book,
                AppLocalizations.of(context).tr('fromthreesixmonths'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromthreesixmonthstxt1'),
                    snapshot.data.raiseHeadOcc.toString(),
                    snapshot.data.raiseHeadCon.toString(),
                    snapshot.data.raiseHeadOf.toString(),
                    raiseHeadVis,
                    'raise_the_head_chest_while_standing_up_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromthreesixmonthstxt2'),
                    snapshot.data.playFingersOcc.toString(),
                    snapshot.data.playFingersCon.toString(),
                    snapshot.data.playFingersOf.toString(),
                    playFingersVis,
                    'they_play_when_crossing_fingers_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromthreesixmonthstxt3'),
                    snapshot.data.strechHandOcc.toString(),
                    snapshot.data.strechHandCon.toString(),
                    snapshot.data.strechHandOf.toString(),
                    strechHandVis,
                    'streching_his_hands_toward_something_he_hold_it_with_his_whole_hand_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromthreesixmonthstxt4'),
                    snapshot.data.soundTurnOcc.toString(),
                    snapshot.data.soundTurnCon.toString(),
                    snapshot.data.soundTurnOf.toString(),
                    soundTurnVis,
                    'when_heard_a_sound_he_turn_his_head_toward_that_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromthreesixmonthstxt5'),
                    snapshot.data.singleLetterSoundOcc.toString(),
                    snapshot.data.singleLetterSoundCon.toString(),
                    snapshot.data.singleLetterSoundOf.toString(),
                    singleLetterSoundVis,
                    'emits_single_letter_sounds_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromthreesixmonthstxt6'),
                    snapshot.data.laughtLoudOcc.toString(),
                    snapshot.data.laughtLoudCon.toString(),
                    snapshot.data.laughtLoudOf.toString(),
                    laughtLoudVis,
                    'smiles_loudely_age_at_the_time_of_occurence'),
                6),
            Choice.four(
                '03',
                Icons.book,
                AppLocalizations.of(context).tr('formsixtoninemonths'),
                GrowthCard(
                    AppLocalizations.of(context).tr('formsixtoninemonthstxt1'),
                    snapshot.data.raiseHead2Occ.toString(),
                    snapshot.data.raiseHead2Con.toString(),
                    snapshot.data.raiseHead2Of.toString(),
                    raiseHead2Vis,
                    'lie_your_hips_and_head_up_age_at_the_time_of_occurence'),
                GrowthCard(
                    'Turn from face up to face downwards and face downwards to face up.',
                    snapshot.data.turnFaceUpDownOcc.toString(),
                    snapshot.data.turnFaceUpDownCon.toString(),
                    snapshot.data.turnFaceUpDownOf.toString(),
                    turnFaceUpDownVis,
                    'turn_back_again_and_again_age_at_the_time_of_occurence'),
                GrowthCard(
                    'Switch objects from one hand to the other.',
                    snapshot.data.switchObjectsOcc.toString(),
                    snapshot.data.switchObjectCon.toString(),
                    snapshot.data.switchObjectOf.toString(),
                    switchObjectVis,
                    'change_something_another_hand_to_other_hand_age_at_the_time_of_occurence'),
                GrowthCard(
                    'Make a certain sound again and again.(ex:Da-Da-Ba-Ba-Ta-Ta)',
                    snapshot.data.makeSoundOcc.toString(),
                    snapshot.data.makeSoundCon.toString(),
                    snapshot.data.makeSoundOf.toString(),
                    makeSoundVis,
                    'some_sounds_are_repeated_age_at_the_time_of_occurence'),
                4),
            Choice.six(
                '04',
                Icons.book,
                'From nine months to twelve months',
                GrowthCard(
                    'Sit without assistance.',
                    snapshot.data.sittingOcc.toString(),
                    snapshot.data.sittingCon.toString(),
                    snapshot.data.sittingOf.toString(),
                    sittingVis,
                    'siting_without_help_age_at_the_time_of_occurence'),
                GrowthCard(
                    'Stand alone by grabbing.',
                    snapshot.data.holdingHimSelfOcc.toString(),
                    snapshot.data.holdingHimSelfCon.toString(),
                    snapshot.data.holdingHimSelfOf.toString(),
                    holdingHimSelfVis,
                    'holding_himself_alone_age_at_the_time_of_occurence'),
                GrowthCard(
                    'Grab small things using the thumb and the index finger.',
                    snapshot.data.thumbForeOcc.toString(),
                    snapshot.data.thumbForeCon.toString(),
                    snapshot.data.thumbForeOf.toString(),
                    thumbForeVis,
                    'holding_small_things_using_thumb_And_forefinger_age_at_the_time_of_occurence'),
                GrowthCard(
                    'Imitate sounds.',
                    snapshot.data.followingVoiceOcc.toString(),
                    snapshot.data.followingVoiceCon.toString(),
                    snapshot.data.followingVoiceOf.toString(),
                    followingVoiceVis,
                    'following_voice_age_at_the_time_of_occurence'),
                GrowthCard(
                    'Speak single words.Release meaningful sounds.',
                    snapshot.data.proWordsOcc.toString(),
                    snapshot.data.proWordsCon.toString(),
                    snapshot.data.proWordsOf.toString(),
                    proWordsVis,
                    'pronounce_individual_words_makes_sounds_that_make_sense_age_at_the_time_of_occurence'),
                GrowthCard(
                    'Understand simple instructions.',
                    snapshot.data.understandOcc.toString(),
                    snapshot.data.understandCon.toString(),
                    snapshot.data.understandOf.toString(),
                    understandVis,
                    'understand_simple_instructions_age_at_the_time_of_occurence'),
                6),
            Choice(
                '05',
                Icons.book,
                'From  twelve months to eighteen months',
                GrowthCard(
                    'walk with assistance.',
                    snapshot.data.walkingWithHelpOcc.toString(),
                    snapshot.data.walkingWithHelpCon.toString(),
                    snapshot.data.walkingWithHelpOf.toString(),
                    walkingWithHelpVis,
                    'walking_with_help_age_at_the_time_of_occurence'),
                GrowthCard(
                    'At least can speak 2-3 words.(ex:"give,"that")',
                    snapshot.data.canSpeakOcc.toString(),
                    snapshot.data.canSpeakCon.toString(),
                    snapshot.data.canSpeakOf.toString(),
                    canSpeakVis,
                    'they_can_speak_At_least_two_or_three_words_age_at_the_time_of_occurence'),
                GrowthCard(
                    'When asked about familiar things show them by pointing.',
                    snapshot.data.handPointOcc.toString(),
                    snapshot.data.handPointCon.toString(),
                    snapshot.data.handPointOf.toString(),
                    handPointVis,
                    'hand_is_pointed_out_when_hearing_familiar_things_age_at_the_time_of_occurence'),
                GrowthCard(
                    'Can roll a small ball.',
                    snapshot.data.canRollOcc.toString(),
                    snapshot.data.canRollCon.toString(),
                    snapshot.data.canRollOf.toString(),
                    canRollVis,
                    'they_can_roll_a_boll_age_at_the_time_of_occurence'),
                GrowthCard(
                    'Can At least recognize one body part.',
                    snapshot.data.canIdentifyOcc.toString(),
                    snapshot.data.canIdentifyCon.toString(),
                    snapshot.data.canIdentifyOf.toString(),
                    canIdentifyVis,
                    'can_identify_at_least_one_body_part_age_at_the_time_of_occurence'),
                5),
            Choice.six(
                '06',
                Icons.book,
                'From eighteen months to two years',
                GrowthCard(
                    'Can walk without assistance.',
                    snapshot.data.walkingWithHelpOcc.toString(),
                    snapshot.data.walkingWithHelpCon.toString(),
                    snapshot.data.walkingWithHelpOf.toString(),
                    walkingWithoutHelpVis,
                    'walking_without_help_age_at_the_time_of_occurence'),
                GrowthCard(
                    'Can walk stairs with assistance.',
                    snapshot.data.canClimbOcc.toString(),
                    snapshot.data.canClimbCon.toString(),
                    snapshot.data.canClimbOf.toString(),
                    canClimbVis,
                    'can_climb_the_stair_with_help_age_at_the_time_of_occurence'),
                GrowthCard(
                    'Can make a tower using 2-3 blocks.',
                    snapshot.data.makeTowerOcc.toString(),
                    snapshot.data.makeTowerCon.toString(),
                    snapshot.data.makeTowerOf.toString(),
                    makeTowerVis,
                    'can_make_a_tower_using_building_blocks_age_at_the_time_of_occurence'),
                GrowthCard(
                    'Have the ability to eat food alone.',
                    snapshot.data.eatHimselfOcc.toString(),
                    snapshot.data.eatHimselfCon.toString(),
                    snapshot.data.eatHimselfOf.toString(),
                    eatHimselfVis,
                    'eat_himself_alone_age_at_the_time_of_occurence'),
                GrowthCard(
                    'Can talk about 10 words.At least can speak a sentence containing two words.("Give ball","Daddy come")',
                    snapshot.data.canTalkTenOcc.toString(),
                    snapshot.data.canTalkTenCon.toString(),
                    snapshot.data.canTalkTenOf.toString(),
                    canTalkTenVis,
                    'can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words_age_at_the_time_of_occurence'),
                GrowthCard(
                    'Ready the lips for kissing.',
                    snapshot.data.lipsShapeOcc.toString(),
                    snapshot.data.lipsShapeCon.toString(),
                    snapshot.data.lipsShapeOf.toString(),
                    lipsShapeVis,
                    'the_lips_are_sharpened_to_kiss_age_at_the_time_of_occurence'),
                6),
            Choice.four(
                '07',
                Icons.book,
                'From two to three years',
                GrowthCard(
                    'Can run without falling.',
                    snapshot.data.runWithoutFallingOcc.toString(),
                    snapshot.data.runWithoutFallingCon.toString(),
                    snapshot.data.runWithoutFallingOf.toString(),
                    runWithoutFallingVis,
                    'ability_to_run_without_falling_age_at_the_time_of_occurence'),
                GrowthCard(
                    'Can run ,up and down on the staircase without falling.',
                    snapshot.data.upDownStairOcc.toString(),
                    snapshot.data.upDownStairCon.toString(),
                    snapshot.data.upDownStairOf.toString(),
                    upDownStairVis,
                    'ability_to_down_and_up_stair_age_at_the_time_of_occurence'),
                GrowthCard(
                    'Can copy a circle/pictures with curves.',
                    snapshot.data.canCopyOcc.toString(),
                    snapshot.data.canCopyCon.toString(),
                    snapshot.data.canCopyOf.toString(),
                    canCopyVis,
                    'can_copy_an_art_with_a_circle_age_at_the_time_of_occurence'),
                GrowthCard(
                    'Have the ability to build up a sentence using 3 or more words.',
                    snapshot.data.canCreateOcc.toString(),
                    snapshot.data.canCreateCon.toString(),
                    snapshot.data.canCreateOf.toString(),
                    canCreateVis,
                    'can_create_a_sentence_with_three_or_more_words_age_at_the_time_of_occurence'),
                4),
          ];
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
