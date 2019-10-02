import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'globals.dart' as globals;

Future<Family> fetchFamily() async {
  print('fetch family function');
  final response =
      await http.get('https://protected-bayou-52277.herokuapp.com/babies/viewbyid/${globals.globalEmail}');
      print('status code');
      print(response.statusCode);
      print(response.body);
  // final json = jsonDecode(response.body);
  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON.
  //return (json.decode(response.body));
    //print(Family.fromJson(json.decode(response.body)));
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

  Family({this.idNumber, this.vilID, this.wifeName, this.husbandName,this.childrenCount});

  factory Family.fromJson(Map<String, dynamic> json) {
    return Family(
      idNumber: json['Identity_number'],
      vilID: json['village_id'],
      wifeName: json['Name_of_wife'],
      husbandName: json['Name_of_husband'],
      childrenCount: json['Number_of_living_childern']
    );
  }
}