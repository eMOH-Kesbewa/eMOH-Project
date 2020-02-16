import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'globals.dart' as globals;

var logger = Logger();

Future <Clinic> readMessage(String id) async {
  final response = await http.get(
      'https://emohback.herokuapp.com/clinics/viewbyid/${id}');

  if (response.statusCode == 200) {
    return Clinic.fromJson(json.decode(response.body)[0]);
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load Family');
  }
}

class Clinic {
  final String title;
  final String discription;
  final String date;
  final String priority;

  Clinic({this.title, this.discription, this.date, this.priority});

  factory Clinic.fromJson(Map<String, dynamic> json) {
    globals.familyId = json['Identity_number'];
    print('*********famid******');
    print(globals.familyId);
    return Clinic(
      title: json['clinic_title'],
      discription: json['clinic_discription'],
      date: json['date'],
      priority: json['clinic_priority'],
    );
  }
}
