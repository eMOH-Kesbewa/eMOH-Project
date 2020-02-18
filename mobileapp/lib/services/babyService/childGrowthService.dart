import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import '../globals.dart' as globals;

Logger logger = Logger();

Future<Baby> fetchBaby() async {
  print('fetch Baby function');
  //String _babyId = globals.BabyId + babyIndex;
  final response = await http.get(
      'https://emohbackherokuapp.com/babies/viewbybabyid/${globals.babyId}');
  print('status code');
  print(response.statusCode);
  print(globals.babyId);
  print(response.body);
  // final json = jsonDecode(response.body);
  if (response.statusCode == 200) {
    return Baby.fromJson(json.decode(response.body)[0]);
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load Baby');
  }
}

class Baby {
  String layingFaceDownOcc, layingFaceDownCon, layingFaceDownOf;
  String movingObjectOcc, movingObjectCon, movingObjectOf;
  String bigSoundOcc, bigSoundCon, bigSoundOf;
  String ohhOcc, ohhCon, ohhOf;
  String smileOcc, smileCon, smileOf;

  String raiseHeadOcc, raiseHeadCon, raiseHeadOf;
  String playFingersOcc, playFingersCon, playFingersOf;
  String strechHandOcc, strechHandCon, strechHandOf;
  String soundTurnOcc, soundTurnCon, soundTurnOf;
  String singleLetterSoundOcc, singleLetterSoundCon, singleLetterSoundOf;
  String laughtLoudOcc, laughtLoudCon, laughtLoudOf;

  String raiseHead2Occ, raiseHead2Con, raiseHead2Of;
  String turnFaceUpDownOcc, turnFaceUpDownCon, turnFaceUpDownOf;
  String switchObjectsOcc, switchObjectCon, switchObjectOf;
  String makeSoundOcc, makeSoundCon, makeSoundOf;

  String sittingOcc, sittingCon, sittingOf;
  String holdingHimSelfOcc, holdingHimSelfCon, holdingHimSelfOf;
  String thumbForeOcc, thumbForeCon, thumbForeOf;
  String followingVoiceOcc, followingVoiceCon, followingVoiceOf;
  String proWordsOcc, proWordsCon, proWordsOf;
  String understandOcc, understandCon, understandOf;

  String walkingWithHelpOcc, walkingWithHelpCon, walkingWithHelpOf;
  String canSpeakOcc, canSpeakCon, canSpeakOf;
  String handPointOcc, handPointCon, handPointOf;
  String canRollOcc, canRollCon, canRollOf;
  String canIdentifyOcc, canIdentifyCon, canIdentifyOf;

  String walkingWithoutHelpOcc, walkingWithoutHelpCon, walkingWithoutHelpOf;
  String canClimbOcc, canClimbCon, canClimbOf;
  String makeTowerOcc, makeTowerCon, makeTowerOf;
  String eatHimselfOcc, eatHimselfCon, eatHimselfOf;
  String canTalkTenOcc, canTalkTenCon, canTalkTenOf;
  String lipsShapeOcc, lipsShapeCon, lipsShapeOf;

  String runWithoutFallingOcc, runWithoutFallingCon, runWithoutFallingOf;
  String upDownStairOcc, upDownStairCon, upDownStairOf;
  String canCopyOcc, canCopyCon, canCopyOf;
  String canCreateOcc, canCreateCon, canCreateOf;

  Baby(
      {this.layingFaceDownOcc,
      this.layingFaceDownCon,
      this.layingFaceDownOf,
      this.movingObjectCon,
      this.movingObjectOcc,
      this.movingObjectOf,
      this.bigSoundCon,
      this.bigSoundOcc,
      this.bigSoundOf,
      this.ohhCon,
      this.ohhOcc,
      this.ohhOf,
      this.smileCon,
      this.smileOcc,
      this.smileOf,
      ////

      this.raiseHeadCon,
      this.raiseHeadOcc,
      this.raiseHeadOf,
      this.playFingersCon,
      this.playFingersOcc,
      this.playFingersOf,
      this.strechHandCon,
      this.strechHandOcc,
      this.strechHandOf,
      this.soundTurnCon,
      this.soundTurnOcc,
      this.soundTurnOf,
      this.singleLetterSoundCon,
      this.singleLetterSoundOcc,
      this.singleLetterSoundOf,
      this.laughtLoudCon,
      this.laughtLoudOcc,
      this.laughtLoudOf,

      ///
      this.raiseHead2Con,
      this.raiseHead2Occ,
      this.raiseHead2Of,
      this.turnFaceUpDownCon,
      this.turnFaceUpDownOcc,
      this.turnFaceUpDownOf,
      this.switchObjectCon,
      this.switchObjectOf,
      this.switchObjectsOcc,
      this.makeSoundCon,
      this.makeSoundOcc,
      this.makeSoundOf,

      ///
      this.sittingCon,
      this.sittingOcc,
      this.sittingOf,
      this.holdingHimSelfCon,
      this.holdingHimSelfOcc,
      this.holdingHimSelfOf,
      this.thumbForeCon,
      this.thumbForeOcc,
      this.thumbForeOf,
      this.followingVoiceCon,
      this.followingVoiceOcc,
      this.followingVoiceOf,
      this.proWordsCon,
      this.proWordsOcc,
      this.proWordsOf,
      this.understandCon,
      this.understandOcc,
      this.understandOf,

      ///
      this.walkingWithHelpCon,
      this.walkingWithHelpOcc,
      this.walkingWithHelpOf,
      this.canSpeakCon,
      this.canSpeakOcc,
      this.canSpeakOf,
      this.handPointCon,
      this.handPointOcc,
      this.handPointOf,
      this.canRollCon,
      this.canRollOcc,
      this.canRollOf,
      this.canIdentifyCon,
      this.canIdentifyOcc,
      this.canIdentifyOf,

      ///
      this.walkingWithoutHelpCon,
      this.walkingWithoutHelpOcc,
      this.walkingWithoutHelpOf,
      this.canClimbCon,
      this.canClimbOcc,
      this.canClimbOf,
      this.makeTowerCon,
      this.makeTowerOcc,
      this.makeTowerOf,
      this.eatHimselfCon,
      this.eatHimselfOcc,
      this.eatHimselfOf,
      this.canTalkTenCon,
      this.canTalkTenOcc,
      this.canTalkTenOf,
      this.lipsShapeCon,
      this.lipsShapeOcc,
      this.lipsShapeOf,

      ///
      this.runWithoutFallingCon,
      this.runWithoutFallingOcc,
      this.runWithoutFallingOf,
      this.upDownStairCon,
      this.upDownStairOcc,
      this.upDownStairOf,
      this.canCopyCon,
      this.canCopyOcc,
      this.canCopyOf,
      this.canCreateCon,
      this.canCreateOcc,
      this.canCreateOf});

  factory Baby.fromJson(Map<String, dynamic> json) {
    return Baby(
      layingFaceDownOcc:
          json['lie_your_hips_and_head_up_age_at_the_time_of_occurence'],
      layingFaceDownCon:
          json['lie_on_his_hips_and_head_up_age_at_the_confirmed'],
      layingFaceDownOf: json[
          'lie_on_his_hips_and_head_up_status_of_the_officer'], //lie_on_his_hips_and_head_up_status_of_the_officer
      movingObjectOcc: json[
          'something_keeps_moving_from_one_place_to_another_age_at_the_time_of_occurence'],
      movingObjectCon: json[
          'something_keeps_moving_from_one_place_to_another_age_at_the_confirmed'],
      movingObjectOf: json[
          'something_keeps_moving_from_one_place_to_another_status_of_the_officer'],
      bigSoundOcc: json[
          'stopping_or_increasing_action_responds_to_a_sudden_loud_noise_age_at_the_time_of_occurence'],
      bigSoundCon: json[
          'stopping_or_increasing_action_responds_to_a_sudden_loud_noise_age_at_the_confirmed'],
      bigSoundOf: json[
          'stopping_or_increasing_action_responds_to_a_sudden_loud_noise_status_of_the_officer'],
      ohhOcc: json[
          'sounds_like_a_e_in_response_to_stimulus_age_at_the_time_of_occurence'],
      ohhCon:
          json['sounds_like_a_e_in_response_to_stimulus_age_at_the_confirmed'],
      ohhOf:
          json['sounds_like_a_e_in_response_to_stimulus_status_of_the_officer'],
      smileOcc:
          json['the_mother_recognize_and_smiles_age_at_the_time_of_occurence'],
      smileCon: json['the_mother_recognize_and_smiles_age_at_the_confirmed'],
      smileOf: json['the_mother_recognize_and_smiles_status_of_the_officer'],

      raiseHeadOcc: json[
          'raise_the_head_chest_while_standing_up_age_at_the_time_of_occurence'],
      raiseHeadCon:
          json['raise_the_head_chest_while_standing_up_age_at_the_confirmed'],
      raiseHeadOf:
          json['raise_the_head_chest_while_standing_up_status_of_the_officer'],
      playFingersOcc:
          json['they_play_when_crossing_fingers_age_at_the_time_of_occurence'],
      playFingersCon:
          json['they_play_when_crossing_fingers_age_at_the_confirmed'],
      playFingersOf:
          json['they_play_when_crossing_fingers_status_of_the_officer'],

      strechHandOcc: json[
          'streching_his_hands_toward_something_he_hold_it_with_his_whole_hand_age_at_the_time_of_occurence'],
      strechHandCon: json[
          'streching_his_hands_toward_something_he_hold_it_with_his_whole_hand_age_at_the_confirmed'],
      strechHandOf: json[
          'streching_his_hands_toward_something_he_hold_it_with_his_whole_hand_status_of_the_officer'],
      soundTurnOcc: json[
          'when_heard_a_sound_he_turn_his_head_toward_that_age_at_the_time_of_occurence'],
      soundTurnCon: json[
          'when_heard_a_sound_he_turn_his_head_toward_that_age_at_the_confirmed'],
      soundTurnOf: json[
          'when_heard_a_sound_he_turn_his_head_toward_that_status_of_the_officer'],
      singleLetterSoundOcc:
          json['emits_single_letter_sounds_age_at_the_time_of_occurence'],
      singleLetterSoundCon:
          json['emits_single_letter_sounds_age_at_the_confirmed'],
      singleLetterSoundOf:
          json['emits_single_letter_sounds_status_of_the_officer'],
      laughtLoudOcc: json['smiles_loudely_age_at_the_time_of_occurence'],
      laughtLoudCon: json['smiles_loudely_age_at_the_confirmed'],
      laughtLoudOf: json['smiles_loudely_status_of_the_officer'],

      raiseHead2Occ:
          json['lie_your_hips_and_head_up_age_at_the_time_of_occurence'],
      raiseHead2Con: json['lie_your_hips_and_head_up_age_at_the_confirmed'],
      raiseHead2Of: json['lie_your_hips_and_head_up_status_of_the_officer'],
      turnFaceUpDownOcc:
          json['turn_back_again_and_again_age_at_the_time_of_occurence'],
      turnFaceUpDownCon: json['turn_back_again_and_again_age_at_the_confirmed'],
      turnFaceUpDownOf: json['turn_back_again_and_again_status_of_the_officer'],
      switchObjectsOcc: json[
          'change_something_another_hand_to_other_hand_age_at_the_time_of_occurence'],
      switchObjectCon: json[
          'change_something_another_hand_to_other_hand_age_at_the_confirmed'],
      switchObjectOf: json[
          'change_something_another_hand_to_other_hand_status_of_the_officer'],
      makeSoundOcc:
          json['some_sounds_are_repeated_age_at_the_time_of_occurence'],
      makeSoundCon: json['some_sounds_are_repeated_age_at_the_confirmed'],
      makeSoundOf: json['some_sounds_are_repeated_status_of_the_officer'],

      sittingOcc: json['siting_without_help_age_at_the_time_of_occurence'],
      sittingCon: json['siting_without_help_age_at_the_confirmed'],
      sittingOf: json['siting_without_help_status_of_the_officer'],
      holdingHimSelfOcc:
          json['holding_himself_alone_age_at_the_time_of_occurence'],
      holdingHimSelfCon: json['holding_himself_alone_age_at_the_confirmed'],
      holdingHimSelfOf: json['holding_himself_alone_status_of_the_officer'],
      thumbForeOcc: json[
          'holding_small_things_using_thumb_And_forefinger_age_at_the_time_of_occurence'],
      thumbForeCon: json[
          'holding_small_things_using_thumb_And_forefinger_age_at_the_confirmed'],
      thumbForeOf: json[
          'holding_small_things_using_thumb_And_forefinger_status_of_the_officer'],
      followingVoiceOcc: json['following_voice_age_at_the_time_of_occurence'],
      followingVoiceCon: json['following_voice_age_at_the_confirmed'],
      followingVoiceOf: json['following_voice_status_of_the_officer'],
      proWordsOcc: json[
          'pronounce_individual_words_makes_sounds_that_make_sense_age_at_the_time_of_occurence'],
      proWordsCon: json[
          'pronounce_individual_words_makes_sounds_that_make_sense_age_at_the_confirmed'],
      proWordsOf: json[
          'pronounce_individual_words_makes_sounds_that_make_sense_status_of_the_officer'],
      understandOcc:
          json['understand_simple_instructions_age_at_the_time_of_occurence'],
      understandCon:
          json['understand_simple_instructions_age_at_the_confirmed'],
      understandOf:
          json['understand_simple_instructions_status_of_the_officer'],

      walkingWithHelpOcc:
          json['walking_with_help_age_at_the_time_of_occurence'],
      walkingWithHelpCon: json['walking_with_help_age_at_the_confirmed'],
      walkingWithHelpOf: json['walking_with_help_status_of_the_officer'],
      canSpeakOcc: json[
          'they_can_speak_At_least_two_or_three_words_age_at_the_time_of_occurence'],
      canSpeakCon: json[
          'they_can_speak_At_least_two_or_three_words_age_at_the_confirmed'],
      canSpeakOf: json[
          'they_can_speak_At_least_two_or_three_words_status_of_the_officer'],
      handPointOcc: json[
          'hand_is_pointed_out_when_hearing_familiar_things_age_at_the_time_of_occurence'],
      handPointCon: json[
          'hand_is_pointed_out_when_hearing_familiar_things_age_at_the_confirmed'],
      handPointOf: json[
          'hand_is_pointed_out_when_hearing_familiar_things_status_of_the_officer'],
      canRollOcc: json['they_can_roll_a_boll_age_at_the_time_of_occurence'],
      canRollCon: json['they_can_roll_a_boll_age_at_the_confirmed'],
      canRollOf: json['they_can_roll_a_boll_status_of_the_officer'],
      canIdentifyOcc: json[
          'can_identify_at_least_one_body_part_age_at_the_time_of_occurence'],
      canIdentifyCon:
          json['can_identify_at_least_one_body_part_age_at_the_confirmed'],
      canIdentifyOf:
          json['can_identify_at_least_one_body_part_status_of_the_officer'],

      walkingWithoutHelpOcc:
          json['walking_without_help_age_at_the_time_of_occurence'],
      walkingWithoutHelpCon: json['walking_without_help_age_at_the_confirmed'],
      walkingWithoutHelpOf: json['walking_without_help_status_of_the_officer'],
      canClimbOcc:
          json['can_climb_the_stair_with_help_age_at_the_time_of_occurence'],
      canClimbCon: json['can_climb_the_stair_with_help_age_at_the_confirmed'],
      canClimbOf: json['can_climb_the_stair_with_help_status_of_the_officer'],
      makeTowerOcc: json[
          'can_make_a_tower_using_building_blocks_age_at_the_time_of_occurence'],
      makeTowerCon:
          json['can_make_a_tower_using_building_blocks_age_at_the_confirmed'],
      makeTowerOf:
          json['can_make_a_tower_using_building_blocks_status_of_the_officer'],
      eatHimselfOcc: json['eat_himself_alone_age_at_the_time_of_occurence'],
      eatHimselfCon: json['eat_himself_alone_age_at_the_confirmed'],
      eatHimselfOf: json['eat_himself_alone_status_of_the_officer'],
      canTalkTenOcc: json[
          'can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words_age_at_the_time_of_occurence'],
      canTalkTenCon: json[
          'can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words_age_at_the_confirmed'],
      canTalkTenOf: json[
          'can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words_status_of_the_officer'],
      lipsShapeOcc:
          json['the_lips_are_sharpened_to_kiss_age_at_the_time_of_occurence'],
      lipsShapeCon: json['the_lips_are_sharpened_to_kiss_age_at_the_confirmed'],
      lipsShapeOf: json['the_lips_are_sharpened_to_kiss_status_of_the_officer'],

      runWithoutFallingOcc:
          json['ability_to_run_without_falling_age_at_the_time_of_occurence'],
      runWithoutFallingCon:
          json['ability_to_run_without_falling_age_at_the_confirmed'],
      runWithoutFallingOf:
          json['ability_to_run_without_falling_status_of_the_officer'],
      upDownStairOcc:
          json['ability_to_down_and_up_stair_age_at_the_time_of_occurence'],
      upDownStairCon: json['ability_to_down_and_up_stair_age_at_the_confirmed'],
      upDownStairOf: json['ability_to_down_and_up_stair_status_of_the_officer'],
      canCopyOcc:
          json['can_copy_an_art_with_a_circle_age_at_the_time_of_occurence'],
      canCopyCon: json['can_copy_an_art_with_a_circle_age_at_the_confirmed'],
      canCopyOf: json['can_copy_an_art_with_a_circle_status_of_the_officer'],
      canCreateOcc: json[
          'can_create_a_sentence_with_three_or_more_words_age_at_the_time_of_occurence'],
      canCreateCon: json[
          'can_create_a_sentence_with_three_or_more_words_age_at_the_confirmed'],
      canCreateOf: json[
          'can_create_a_sentence_with_three_or_more_words_status_of_the_officer'],
    );
  }
}

Future updateDetails(
  //String layingFaceDownOcc,
  String field,
  String value,
  // bool lightCheck,
  // bool faceCheck,
  // bool turnCheck,
  // bool theneyesCheck,
  // bool lookingCheck,
  // bool touchCheck,
  // bool squintCheck,
  // bool ringCheck,
  // bool askCheck,
  // bool talkCheck
) async {
  //Map query = {'baby_id' : 'A0000101'};
  logger.w('field', field);
  Map data = {
    'baby_id': globals.babyId,
    'value': value,
    'field' : field

  };
  //Map data = {'does_the_child_look_good_on_your_face': face.toString()};

  var response =
      await http.put("https://emohback.herokuapp.com/babies/updategrowth",
          body: data);
  print("****status");
  print(response.statusCode);

  if (response.statusCode == 200) {
    print("Done");
    return 0;
  }
}
