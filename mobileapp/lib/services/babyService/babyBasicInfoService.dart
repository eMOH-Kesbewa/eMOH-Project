import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import '../globals.dart' as globals;

var logger = Logger();

Future<Baby> fetchBaby() async {
  print('fetch Baby function');
  //String _babyId = globals.BabyId + babyIndex;
  logger.v(globals.babyId);
  final response = await http
      .get('https://emohback.herokuapp.com/babies/viewbybabyid/${globals.babyId}');
  logger.d(json.decode(response.body)[0]);  
  // final json = jsonDecode(response.body);

  if (response.statusCode == 200) {
    return Baby.fromJson(json.decode(response.body)[0]);
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load Baby');
  }
}

class Baby {
  final String name;
  final String id;
  final String birthday;
  final String regDate;
  final String nameOfMother;
  final String ageOfMother;
  final String address;
  //final String childrenCount;
  final String phmArea;
  final String mohArea;

  Baby(
      {this.id,
      this.mohArea,
      this.phmArea,
      this.name,
      this.address,
      this.ageOfMother,
      this.birthday,
      //this.childrenCount,
      this.nameOfMother,
      this.regDate});

  factory Baby.fromJson(Map<String, dynamic> json) {
    return Baby(
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
