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
  print(response.body);
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
  final String deliveryMethod;
  final String apgar1m;
  final String apgar5m;
  final String apgar10m;
  final String birthWeight;
  final String gridleCircumference;
  final String length;
  //final String childrenCount;
  final String dischargeWeight;
  final String vitaminK;
  final String breastFeedingFirstHr;
  final String breastFeedingUnstability;
  final String breastFeedingConnection;
  final String checkCongenitalHypothyroidism;

  Baby({
    this.deliveryMethod,
    this.apgar1m,
    this.apgar5m,
    this.apgar10m,
    this.birthWeight,
    this.gridleCircumference,
    this.length,
    this.dischargeWeight,
    this.vitaminK,
    this.breastFeedingFirstHr,
    this.breastFeedingUnstability,
    this.breastFeedingConnection,
    this.checkCongenitalHypothyroidism,
  });

  factory Baby.fromJson(Map<String, dynamic> json) {
    return Baby(
      // // idNumber: json['Identity_number'],
      // vilID: json['village_id'],
      // wifeName: json['Name_of_wife'],
      // husbandName: json['Name_of_husband'],
      // childrenCount: json['Number_of_living_childern']

      deliveryMethod: json["method_of_delivery"],
      apgar1m: json["Number_of_apgas_1m"],
      apgar5m: json["Number_of_apgas_5m"],
      apgar10m: json["Number_of_apgas_10m"],
      birthWeight: json["birth_weight"],
      gridleCircumference: json["gridle_circumference_at_birth"],
      length: json["length_of_baby_at_birth"],
      dischargeWeight: json["weight_in_discharge_from_hospital"],
      vitaminK: json["K_vitamine"],
      breastFeedingFirstHr:
          json["breast_feeding_breast_feeding_during_the_first_hour"],
      breastFeedingUnstability: json["breast_feeding_unstability"],
      breastFeedingConnection: json["breast_feeding_connection"],
      checkCongenitalHypothyroidism:
          json["does_check_congenital_hypothyroidism"],

      // childrenCount:
      //     json["total_Number_of_children_alive_including_this_child"].toString(),
    );
  }
}
