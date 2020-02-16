import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import '../globals.dart' as globals;

Future<Baby> fetchBaby() async {
  print('fetch Baby function');
  //String _babyId = globals.BabyId + babyIndex;
  final response = await http.get(
      'https://emohback.herokuapp.com/babies/viewbybabyid/${globals.babyId}');
  print('status code');
  print(response.statusCode);
  print(globals.babyId);
  // final json = jsonDecode(response.body);
  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON.
    //return (json.decode(response.body));
    //print(Baby.fromJson(json.decode(response.body)));

    return Baby.fromJson(json.decode(response.body)[0]);
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load Baby');
  }
}

class Baby {
  //bool switchVal;
  String bigNoise;
  String vehicleNoise;
  String guardianNoise;
  String turnToNoise;
  String turnToGuardianNoise;
  String dailyNoise;
  String hiddenNoise;
  String rythmeicNoise;
  String respondNameNoise;
  String byeNoise;

  Baby({
    //this.switchVal,
    this.bigNoise,
    this.vehicleNoise,
    this.guardianNoise,
    this.turnToNoise,
    this.turnToGuardianNoise,
    this.dailyNoise,
    this.hiddenNoise,
    this.rythmeicNoise,
    this.respondNameNoise,
    this.byeNoise,
  });

  factory Baby.fromJson(Map<String, dynamic> json) {
    return Baby(
      // // idNumber: json['Identity_number'],
      // vilID: json['village_id'],
      // wifeName: json['Name_of_wife'],
      // husbandName: json['Name_of_husband'],
      // childrenCount: json['Number_of_living_childern']

      //switchVal: json["baby_id"],

      bigNoise: json[
          'if_your_child_is_startled_by_a_sudden_loud_noise_does_his_stutter_or_widden_his_eyes'],
      vehicleNoise: json[
          'does_your_child_detect_sudden_or_presistent_noises_and_begin_to_listen_quitely_to_eve'],
      guardianNoise: json[
          'if_they_cant_see_their_mother_do_they_keep_silent_or_laugh_when_their_voice_is_heard'],
      turnToNoise: json[
          'when_the_mother_speaks_from_the_side_or_from_the_back_does_child_turn_his_head_or_eyes'],
      turnToGuardianNoise:
          json['does_child_turn_to_the_mother_side_immediately_after_speaking'],
      dailyNoise:
          json['listen_to_the_familiar_sounds_does_child_hear_everyday'],
      hiddenNoise: json['does_find_out_about_noises_from_an_unknown_location'],
      rythmeicNoise: json['does_child_like_it_when_talking_to_a_loud_tune'],
      respondNameNoise:
          json['does_he_respond_to_other_familiar_sounds_nd_his_name'],
      byeNoise: json['does_he_respond_to_words_even_when_they_do_not'],
      // childrenCount:
      //     json["total_Number_of_children_alive_including_this_child"].toString(),
    );
  }
}

Future updateDetails(
  String bigNoise,
  String vehicleNoise,
  String guardianNoise,
  String turnToNoise,
  String turnToGuardianNoise,
  String dailyNoise,
  String hiddenNoise,
  String rythmeicNoise,
  String respondNameNoice,
  String byeNoise,
) async {
  //Map query = {'baby_id' : 'A0000101'};
  Map data = {
    'baby_id': globals.babyId,
    'if_your_child_is_startled_by_a_sudden_loud_noise_does_his_stutter_or_widden_his_eyes':
        bigNoise.toString(),
    'does_your_child_detect_sudden_or_presistent_noises_and_begin_to_listen_quitely_to_eve':
        vehicleNoise.toString(),
    'if_they_cant_see_their_mother_do_they_keep_silent_or_laugh_when_their_voice_is_heard':
        guardianNoise.toString(),
    'when_the_mother_speaks_from_the_side_or_from_the_back_does_child_turn_his_head_or_eyes':
        turnToNoise.toString(),
    'does_child_turn_to_the_mother_side_immediately_after_speaking':
        turnToGuardianNoise.toString(),
    'listen_to_the_familiar_sounds_does_child_hear_everyday':
        dailyNoise.toString(),
    'does_find_out_about_noises_from_an_unknown_location':
        hiddenNoise.toString(),
    'does_child_like_it_when_talking_to_a_loud_tune': rythmeicNoise.toString(),
    'does_he_respond_to_other_familiar_sounds_nd_his_name':
        respondNameNoice.toString(),
    'does_he_respond_to_words_even_when_they_do_not': byeNoise.toString(),
  };
  //Map data = {'does_the_child_look_good_on_your_face': face.toString()};
  var response = await http
      .put("https://emohback.herokuapp.com/babies/hearingtest", body: data);
  /*.then((result) {
           Fluttertoast.showToast(
          msg: "Done",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIos: 1,
          backgroundColor: Colors.black54,
          textColor: Colors.white,
          fontSize: 16.0);
        }).catchError((e){
          Fluttertoast.showToast(
          msg: "An Error Has Occured.",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIos: 1,
          backgroundColor: Colors.black54,
          textColor: Colors.white,
          fontSize: 16.0);
        });*/
  print("****status");
  print(response.statusCode);

  if (response.statusCode == 200) {
    print("Done");
    return 0;
  }
}
