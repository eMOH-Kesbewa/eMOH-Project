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
  String lightCheck;
  String faceCheck;
  String turnCheck;
  String theneyesCheck;
  String lookingCheck;
  String touchCheck;
  String squintCheck;
  String ringCheck;
  String askCheck;
  String talkCheck;

  Baby({
    //this.switchVal,
    this.lightCheck,
    this.faceCheck,
    this.turnCheck,
    this.theneyesCheck,
    this.lookingCheck,
    this.touchCheck,
    this.squintCheck,
    this.ringCheck,
    this.askCheck,
    this.talkCheck,
  });

  factory Baby.fromJson(Map<String, dynamic> json) {
    logger.e(json["does_child_eyes_toward_the_light"],'eyes');

    return Baby(
      // // idNumber: json['Identity_number'],
      // vilID: json['village_id'],
      // wifeName: json['Name_of_wife'],
      // husbandName: json['Name_of_husband'],
      // childrenCount: json['Number_of_living_childern']

      //switchVal: json["baby_id"],
      lightCheck: json["does_child_eyes_toward_the_light"],
      faceCheck: json["does_the_child_look_good_on_your_face"],
      turnCheck: json[
          "when_you_turn_your_face_to_the_side_do_you_see_the_child_smiling_in_response"],
      theneyesCheck: json["then_the_baby_eyes_move"],
      lookingCheck: json["does_the_child_look_arround"],
      touchCheck:
          json["is_child_streching_out_his_hand_and_trying_to_touch_something"],
      squintCheck: json["do_you_suspect_that_your_child_has_a_problem"],
      ringCheck: json[
          "is_it_possible_for_a_child_to_pickup_small_things_with_a_thumb_and_forefinger"],
      talkCheck: json[
          "if_the_person_identifies_them_the_child_will_recognize_them_before_they_call_them"],
      askCheck: json["have_your_child_strech_out_his_hand_and_touch_them"],
      // childrenCount:
      //     json["total_Number_of_children_alive_including_this_child"].toString(),
    );
  }
}

Future updateDetails(
    String lightCheck,
    String faceCheck,
    String turnCheck,
    String theneyesCheck,
    String lookingCheck,
    String touchCheck,
    String squintCheck,
    String ringCheck,
    String askCheck,
    String talkCheck) async {
  //Map query = {'baby_id' : 'A0000101'};

  // String lightCheckS;
  // String faceCheckS;
  // String turnCheckS;
  // String theneyesCheckS;
  // String lookingCheckS;
  // String touchCheckS;
  // String squintCheckS;
  // String ringCheckS;
  // String askCheckS;
  // String talkCheckS;

  // if (lightCheck == true) {
  //   lightCheckS = "yes";
  // } else {
  //   lightCheckS = "no";
  // }
  // if (faceCheck == true) {
  //   faceCheckS = "yes";
  // } else {
  //   faceCheckS = "no";
  // }
  // if (turnCheck == true) {
  //   turnCheckS = "yes";
  // } else {
  //   turnCheckS = "no";
  // }
  // if (theneyesCheck == true) {
  //   theneyesCheckS = "yes";
  // } else {
  //   theneyesCheckS = "no";
  // }
  // if (lookingCheck == true) {
  //   lookingCheckS = "yes";
  // } else {
  //   lookingCheckS = "no";
  // }
  // if (touchCheck == true) {
  //   touchCheckS = "yes";
  // } else {
  //   touchCheckS = "no";
  // }
  // if (squintCheck == true) {
  //   squintCheckS = "yes";
  // } else {
  //   squintCheckS = "no";
  // }
  // if (ringCheck == true) {
  //   ringCheckS = "yes";
  // } else {
  //   ringCheckS = "no";
  // }
  // if (askCheck == true) {
  //   askCheckS = "yes";
  // } else {
  //   askCheckS = "no";
  // }
  // if (talkCheck == true) {
  //   talkCheckS = "yes";
  // } else {
  //   talkCheckS = "no";
  // }

  Map data = {
    'baby_id': globals.babyId,
    'does_child_eyes_toward_the_light': lightCheck,
    'does_the_child_look_good_on_your_face': faceCheck,
    'when_you_turn_your_face_to_the_side_do_you_see_the_child_smiling_in_response':
        turnCheck,
    'then_the_baby_eyes_move': theneyesCheck,
    'does_the_child_look_arround': lookingCheck,
    /** */

    
    'is_child_streching_out_his_hand_and_tryimg_to_touch_something': touchCheck,
    'do_you_suspect_that_your_child_has_a_problem': squintCheck,
    'is_it_possible_for_a_child_to_pickup_small_things_with_a_thumb_and_forefinger':
        ringCheck,
    'if_the_person_identifies_them_the_child_will_recognize_them_before_they_call_them':
        talkCheck,
    'have_your_child_strech_out_his_hand_and_touch_them': askCheck
  };
  //Map data = {'does_the_child_look_good_on_your_face': face.toString()};
  print('***face***');
  print(faceCheck.toString());
  print(lightCheck.toString());
  print(turnCheck.toString());
  var response = await http.put("https://emohback.herokuapp.com/babies/eyetest",
      body: data);
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
