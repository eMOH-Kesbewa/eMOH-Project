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
  String noOfTeeth6mo,
      status6mo,
      date6mo,
      noOfTeeth7mo,
      status7mo,
      date7mo,
      noOfTeeth8mo,
      status8mo,
      date8mo,
      noOfTeeth9mo,
      status9mo,
      date9mo,
      noOfTeeth10mo,
      status10mo,
      date10mo,
      noOfTeeth11mo,
      status11mo,
      date11mo,
      noOfTeeth12mo,
      status12mo,
      date12mo,
      noOfTeeth13mo,
      status13mo,
      date13mo,
      noOfTeeth14mo,
      status14mo,
      date14mo,
      noOfTeeth15mo,
      status15mo,
      date15mo,
      noOfTeeth16mo,
      status16mo,
      date16mo,
      noOfTeeth17mo,
      status17mo,
      date17mo,
      noOfTeeth18mo,
      status18mo,
      date18mo;

  Baby(
      {this.noOfTeeth6mo,
      this.status6mo,
      this.date6mo,
      this.noOfTeeth7mo,
      this.status7mo,
      this.date7mo,
      this.noOfTeeth8mo,
      this.status8mo,
      this.date8mo,
      this.noOfTeeth9mo,
      this.status9mo,
      this.date9mo,
      this.noOfTeeth10mo,
      this.status10mo,
      this.date10mo,
      this.noOfTeeth11mo,
      this.status11mo,
      this.date11mo,
      this.noOfTeeth12mo,
      this.status12mo,
      this.date12mo,
      this.noOfTeeth13mo,
      this.status13mo,
      this.date13mo,
      this.noOfTeeth14mo,
      this.status14mo,
      this.date14mo,
      this.noOfTeeth15mo,
      this.status15mo,
      this.date15mo,
      this.noOfTeeth16mo,
      this.status16mo,
      this.date16mo,
      this.noOfTeeth17mo,
      this.status17mo,
      this.date17mo,
      this.noOfTeeth18mo,
      this.status18mo,
      this.date18mo});

  factory Baby.fromJson(Map<String, dynamic> json) {
    return Baby(
      // // idNumber: json['Identity_number'],
      // vilID: json['village_id'],
      // wifeName: json['Name_of_wife'],
      // husbandName: json['Name_of_husband'],
      // childrenCount: json['Number_of_living_childern']

      noOfTeeth6mo: json["six_Number_of_teeth"].toString(),
      status6mo: json["six_status"],
      date6mo: json["six_date"],
     // date6mo: "date",
      noOfTeeth7mo: json["seven_Number_of_teeth"].toString(),
      status7mo: json["seven_status"],
      date7mo: json["seven_date"],
      noOfTeeth8mo: json["eight_Number_of_teeth"].toString(),
      status8mo: json["eight_status"],
      date8mo: json["eight_date"],
      noOfTeeth9mo: json["nine_Number_of_teeth"].toString(),
      status9mo: json["nine_status"],
      date9mo: json["nine_date"],
      noOfTeeth10mo: json["ten_Number_of_teeth"].toString(),
      status10mo: json["ten_status"],
      date10mo: json["ten_date"],
      noOfTeeth11mo: json["eleven_Number_of_teeth"].toString(),
      status11mo: json["eleven_status"],
      date11mo: json["eleven_date"],
      noOfTeeth12mo: json["twelve_Number_of_teeth"].toString(),
      status12mo: json["twelve_status"],
      date12mo: json["twelve_date"],
      noOfTeeth13mo: json["thirteen_Number_of_teeth"].toString(),
      status13mo: json["thirteen_status"],
      date13mo: json["thirteen_date"],
      noOfTeeth14mo: json["fouteen_Number_of_teeth"].toString(),
      status14mo: json["fouteen_status"],
      date14mo: json["fouteen_date"],
      noOfTeeth15mo: json["fifteen_Number_of_teeth"].toString(),
      status15mo: json["fifteen_status"],
      date15mo: json["fifteen_date"],
      noOfTeeth16mo: json["sixteen_Number_of_teeth"].toString(),
      status16mo: json["sixteen_status"],
      date16mo: json["sixteen_date"],
      noOfTeeth17mo: json["seventeen_Number_of_teeth"].toString(),
      status17mo: json["seventeen_status"],
      date17mo: json["seventeen_date"],
      noOfTeeth18mo: json["eighteen_Number_of_teeth"].toString(),
      status18mo: json["eighteen_status"],
      date18mo: json["eighteen_date"],
      // childrenCount:
      //     json["total_Number_of_children_alive_including_this_child"].toString(),
    );
  }
}

Future updateDetails(
  //String layingFaceDownOcc,
  String count,
  String date,
  String status,
  String dateField,
  String countField,
  String statusField,
) async {
  //Map query = {'baby_id' : 'A0000101'};
  print(countField);
  print(count);
  Map data = {
    'baby_id': 'A0000101',
    countField: count,
    statusField: status,
    dateField: date,
    //"six_date": date,
  };
  logger.wtf(data);
  //Map data = {'does_the_child_look_good_on_your_face': face.toString()};

  var response = await http
      .put(
          "https://protected-bayou-52277.herokuapp.com/babies/update/${globals.babyId}",
          body: data)
      .then((res) {
    logger.i('done');
  }).catchError((e) {
    logger.e(e);
  });


  // if (response.statusCode == 200) {
  //   print("Done");
  //   return 0;
  // }
}
