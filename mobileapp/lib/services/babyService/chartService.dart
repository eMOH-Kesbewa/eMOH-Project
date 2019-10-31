
/*
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
  final int x1;
  final int y1;
  final int x2;
  final int y2;
  final int x3;
  final int y3;
  final int x4;
  final int y4;
  final int x5;
  final int y5;
  final int x6;
  final int y6;
  final int x7;
  final int y7;
  final int x8;
  final int y8;
  final int x9;
  final int y9;
  final int x10;
  final int y10;

  Baby(this.x1, this.y1, this.x2, this.y2, this.x3, this.y3, this.x4, this.y4, this.x5, this.y5, this.x6, this.y6, this.x7, this.y7, this.x8, this.y8, this.x9, this.y9, this.x10, this.y10
     });

  factory Baby.fromJson(Map<String, dynamic> json) {
    return Baby(
      // // idNumber: json['Identity_number'],
      // vilID: json['village_id'],
      // wifeName: json['Name_of_wife'],
      // husbandName: json['Name_of_husband'],
      // childrenCount: json['Number_of_living_childern']

      id: json["baby_id"],
      phmArea: json["PHM_area"],
      mohArea: json["MOH_area"],
      name: json["name_of_child"],
      birthday: json["date_of_birth_of_child"],
      regDate: json["date_of_registered"],
      nameOfMother: json["name_of_mother"],
      ageOfMother: json["age_of_mother"].toString(),
      address: json["address"],
      // childrenCount:
      //     json["total_Number_of_children_alive_including_this_child"].toString(),
    );
  }
}



*/