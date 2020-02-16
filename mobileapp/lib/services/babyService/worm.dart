import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../globals.dart' as globals;

Future<Baby> fetchBaby() async {
  print('fetch Baby function');
  //String _babyId = globals.BabyId + babyIndex;
  final response = await http.get(
      'https://emohback.herokuapp.com/babies/viewbybabyid/${globals.babyId}');
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
  final String date1h,
      batchNo1h,
      date2,
      batchNo2,
      date2h,
      batchNo2h,
      date3,
      batchNo3,
      date3h,
      batchNo3h,
      date4,
      batchNo4,
      date4h,
      batchNo4h,
      date5,
      batchNo5;

  Baby({
    this.date2h,
    this.batchNo2h,
    this.date3h,
    this.batchNo3h,
    this.date4h,
    this.batchNo4h,
    this.date1h,
    this.batchNo1h,
    this.date2,
    this.batchNo2,
    this.date3,
    this.batchNo3,
    this.date4,
    this.batchNo4,
    this.date5,
    this.batchNo5,
  });

  factory Baby.fromJson(Map<String, dynamic> json) {
    return Baby(
      // // idNumber: json['Identity_number'],
      // vilID: json['village_id'],
      // wifeName: json['Name_of_wife'],
      // husbandName: json['Name_of_husband'],
      // childrenCount: json['Number_of_living_childern']

      date1h: json["warm_treat_one_half_year_date"],
      batchNo1h: json["warm_treat_one_half_year_batch_no"],
      date2: json["warm_treat_two_year_date"],
      batchNo2: json["warm_treat_two_year_batch_no"],

      date2h: json["warm_treat_two_half_year_date"],
      batchNo2h: json["warm_treat_two_half_year_batch_no"],

      date3: json["warm_treat_three_year_date"],
      batchNo3: json["warm_treat_three_year_batch_no"],

      date3h: json["warm_treat_three_half_year_date"],
      batchNo3h: json["warm_treat_three_half_year_batch_no"],

      date4: json["warm_treat_four_year_date"],
      batchNo4: json["warm_treat_four_year_batch_no"],

      date4h: json["warm_treat_four_half_year_date"],
      batchNo4h: json["warm_treat_four_half_year_batch_no"],

      date5: json["warm_treat_five_year_date"],
      batchNo5: json["warm_treat_five_year_batch_no"],
      // childrenCount:]
      //     json["total_Number_of_children_alive_including_this_child"].toString(),
    );
  }
}
