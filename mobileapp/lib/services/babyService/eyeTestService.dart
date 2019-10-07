import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../globals.dart' as globals;

Future<Baby> fetchBaby() async {
  print('fetch Baby function');
  //String _babyId = globals.BabyId + babyIndex;
  final response = await http.get(
      'https://protected-bayou-52277.herokuapp.com/babies/viewbyid/${globals.babyId}');
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
  bool lightCheck;
  bool faceCheck;
  bool turnCheck;
  bool theneyesCheck;
  bool lookingCheck;
  bool touchCheck;
  bool squintCheck;
  bool ringCheck;
  bool askCheck;
  bool talkCheck;

  Baby(
      {//this.switchVal,
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
    
    
    return Baby(
      // // idNumber: json['Identity_number'],
      // vilID: json['village_id'],
      // wifeName: json['Name_of_wife'],
      // husbandName: json['Name_of_husband'],
      // childrenCount: json['Number_of_living_childern']

      //switchVal: json["baby_id"],
      lightCheck: json["does_child_eyes_toward_the_light"],
      faceCheck: json["does_the_child_look_good_on_your_face"],
      turnCheck: json["when_you_turn_your_face_to_the_side_do_you_see_the_child_smiling_in_response"],
      theneyesCheck: json["then_the_baby_eyes_move"],
      lookingCheck: json["does_the_child_look_arround"],
      askCheck: json["is_child_streching_out_his_hand_and_tryimg_to_touch_something"],
      squintCheck: json["do_you_suspect_that_your_child_has_a_problem"],
      ringCheck: json["is_it_possible_for_a_child_to_pickup_small_things_with_a_thumb_and_forefinger"],
      talkCheck: json["if_the_person_identifies_them_the_child_will_recognize_them_before_they_call_them"],
      // childrenCount:
      //     json["total_Number_of_children_alive_including_this_child"].toString(),
    );
  }
}
