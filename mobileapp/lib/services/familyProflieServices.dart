import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'globals.dart' as globals;

var logger = Logger();

Future<Family> fetchFamily() async {
  print('fetch family function');

 
  //   final jwtDetails = await http.get('https://protected-bayou-52277.herokuapp.com/users/profile',headers: ).then((res){
  //   logger.wtf(res.body);
  // });

  globals.getGlobals();
  logger.e(globals.globalEmail);
  final response = await http.get(
      'https://protected-bayou-52277.herokuapp.com/families/viewbyid/${globals.globalEmail}');
  print('status code');
  print(response.statusCode);
  print(response.body);
  if (response.statusCode == 200) {
    return Family.fromJson(json.decode(response.body)[0]);
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load Family');
  }
}

class Family {
  final String idNumber;
  final String vilID;
  final String wifeName;
  final String husbandName;
  final String childrenCount;

  Family(
      {this.idNumber,
      this.vilID,
      this.wifeName,
      this.husbandName,
      this.childrenCount});

  factory Family.fromJson(Map<String, dynamic> json) {
    globals.familyId = json['Identity_number'];
    print('*********famid******');
    print(globals.familyId);
    return Family(
      idNumber: json['Identity_number'],
      vilID: json['village_id'],
      wifeName: json['Name_of_wife'],
      husbandName: json['Name_of_husband'],
      childrenCount: json['numberofyoungchildren'].toString(),
    );
  }
}
