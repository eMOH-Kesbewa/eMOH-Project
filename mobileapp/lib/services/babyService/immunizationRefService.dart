import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobileapp/widgets/growthCard.dart';
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
  var date = List();
  var reason = List();
  var place = List();
  var notes = List();
  String date1, date2, date3, date4, date5, date6, date7, date8, date9, date10;
  String batchNo1,
      batchNo2,
      batchNo3,
      batchNo4,
      batchNo5,
      batchNo6,
      batchNo7,
      batchNo8,
      batchNo9,
      batchNo10;

  Baby({
    this.date,
    this.reason,
    this.place,
    this.notes,
    this.date1,
    this.date2,
    this.date3,
    this.date4,
    this.date5,
    this.date6,
    this.date7,
    this.date8,
    this.date9,
    this.date10,
    this.batchNo1,
    this.batchNo2,
    this.batchNo3,
    this.batchNo4,
    this.batchNo5,
    this.batchNo6,
    this.batchNo7,
    this.batchNo8,
    this.batchNo9,
    this.batchNo10,
  });

  factory Baby.fromJson(Map<String, dynamic> json) {
    return Baby(
      // // idNumber: json['Identity_number'],
      // vilID: json['village_id'],
      // wifeName: json['Name_of_wife'],
      // husbandName: json['Name_of_husband'],
      // childrenCount: json['Number_of_living_childern']

      date: json['date_of_refferals'],
      reason: json['reason_for_referrals'],
      place: json['place_of_refferal'],
      notes: json['notes_on_back'],

      date1: json['A_vitamine_six_month_date'],
      date2: json['A_vitamine_one_year_date'],
      date3: json['A_vitamine_one_half_year_date'],
      date4: json['A_vitamine_two_year_date'],
      date5: json['A_vitamine_two_half_year_date'],
      date6: json['A_vitamine_three_year_date'],
      date7: json['A_vitamine_three_half_year_date'],
      date8: json['A_vitamine_four_year_date'],
      date9: json['A_vitamine_four_half_year_date'],
      date10: json['A_vitamine_five_year_date'],
      batchNo1 : json['A_vitamine_six_month_batch_no'],
      batchNo2: json['A_vitamine_one_year_batch_no'],
      batchNo3:json['A_vitamine_one_half_year_batch_no'],
      batchNo4 :json['A_vitamine_two_year_batch_no'],
      batchNo5:json['A_vitamine_two_half_year_batch_no'],
      batchNo6 : json['A_vitamine_three_year_batch_no'],
      batchNo7 :json['A_vitamine_three_half_year_batch_no'],
      batchNo8 :json['A_vitamine_four_year_batch_no'],
      batchNo9 :json['A_vitamine_four_half_year_batch_no'],
      batchNo10 :json['A_vitamine_five_year_batch_no']

      // childrenCount:
      //     json["total_Number_of_children_alive_including_this_child"].toString(),
    );
  }
}
