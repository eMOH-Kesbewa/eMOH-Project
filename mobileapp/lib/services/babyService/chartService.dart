import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import '../globals.dart' as globals;

var logger = Logger();

Future<WeightHeight> fetchWeightHeight() async {
  print('fetch WeightHeight function');
  //String _babyId = globals.WeightHeightId + babyIndex;

  final response = await http.get(

      'http://protected-bayou-52277.herokuapp.com/weightheight/viewWeightHeightById/A000010'

      //'http://protected-bayou-52277.herokuapp.com/weightheight/viewWeightHeightById/${globals.babyId}'
      
      );

  logger.d('${globals.babyId}');

  //http: //protected-bayou-52277.herokuapp.com/weightheight/viewWeightHeightById/A0000010

  logger.e(response.statusCode);

  // final json = jsonDecode(response.body);

  if (response.statusCode == 200) {
    //logger.d(json.decode(response.body)[0]);
    return WeightHeight.fromJson(json.decode(response.body)[0]);
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load WeightHeight');
  }
}

class WeightHeight {
  final double first_yearone;
  final double first_yeartwo;
  final double first_yearthree;
  final double first_yearfour;
  final double first_yearfive;
  final double first_yearsix;
  final double first_yearseven;
  final double first_yeareight;
  final double first_yearnine;
  final double first_yearten;
  final double first_yeareleven;
  final double first_yeartwelve;
  final double sec_yearone;
  final double sec_yeartwo;
  final double sec_yearthree;
  final double sec_yearfour;
  final double sec_yearfive;
  final double sec_yearsix;
  final double sec_yearseven;
  final double sec_yeareight;
  final double sec_yearnine;
  final double sec_yearten;
  final double sec_yeareleven;
  final double sec_yeartwelve;
  final double third_yearone;
  final double third_yeartwo;
  final double third_yearthree;
  final double third_yearfour;
  final double third_yearfive;
  final double third_yearsix;
  final double third_yearseven;
  final double third_yeareight;
  final double third_yearnine;
  final double third_yearten;
  final double third_yeareleven;
  final double third_yeartwelve;
  final double four_yearone;
  final double four_yeartwo;
  final double four_yearthree;
  final double four_yearfour;
  final double four_yearfive;
  final double four_yearsix;
  final double four_yearseven;
  final double four_yeareight;
  final double four_yearnine;
  final double four_yearten;
  final double four_yeareleven;
  final double four_yeartwelve;
  final double five_yearone;
  final double five_yeartwo;
  final double five_yearthree;
  final double five_yearfour;
  final double five_yearfive;
  final double five_yearsix;
  final double five_yearseven;
  final double five_yeareight;
  final double five_yearnine;
  final double five_yearten;
  final double five_yeareleven;
  final double five_yeartwelve;

  WeightHeight(
      {this.first_yearone,
      this.first_yeartwo,
      this.first_yearthree,
      this.first_yearfour,
      this.first_yearfive,
      this.first_yearsix,
      this.first_yearseven,
      this.first_yeareight,
      this.first_yearnine,
      this.first_yearten,
      this.first_yeareleven,
      this.first_yeartwelve,
      this.sec_yearone,
      this.sec_yeartwo,
      this.sec_yearthree,
      this.sec_yearfour,
      this.sec_yearfive,
      this.sec_yearsix,
      this.sec_yearseven,
      this.sec_yeareight,
      this.sec_yearnine,
      this.sec_yearten,
      this.sec_yeareleven,
      this.sec_yeartwelve,
      this.third_yearone,
      this.third_yeartwo,
      this.third_yearthree,
      this.third_yearfour,
      this.third_yearfive,
      this.third_yearsix,
      this.third_yearseven,
      this.third_yeareight,
      this.third_yearnine,
      this.third_yearten,
      this.third_yeareleven,
      this.third_yeartwelve,
      this.four_yearone,
      this.four_yeartwo,
      this.four_yearthree,
      this.four_yearfour,
      this.four_yearfive,
      this.four_yearsix,
      this.four_yearseven,
      this.four_yeareight,
      this.four_yearnine,
      this.four_yearten,
      this.four_yeareleven,
      this.four_yeartwelve,
      this.five_yearone,
      this.five_yeartwo,
      this.five_yearthree,
      this.five_yearfour,
      this.five_yearfive,
      this.five_yearsix,
      this.five_yearseven,
      this.five_yeareight,
      this.five_yearnine,
      this.five_yearten,
      this.five_yeareleven,
      this.five_yeartwelve});

  factory WeightHeight.fromJson(Map<String, dynamic> json) {
    logger.wtf(json['first_yearone']);
    return WeightHeight(
      first_yearone: json['first_yearone'],
      first_yeartwo: json['first_yeartwo'],
      first_yearthree: json['first_yearthree'],
      first_yearfour: json['first_yearfour'],
      first_yearfive: json['first_yearfive'],
      first_yearsix: json['first_yearsix'],
      first_yearseven: json['first_yearseven'],
      first_yeareight: json['first_yeareight'],
      first_yearnine: json['first_yearnine'],
      first_yearten: json['first_yearten'],
      first_yeareleven: json['first_yeareleven'],
      first_yeartwelve: json['first_yeartwelve'],
      sec_yearone: json['sec_yearone'],
      sec_yeartwo: json['sec_yeartwo'],
      sec_yearthree: json['sec_yearthree'],
      sec_yearfour: json['sec_yearfour'],
      sec_yearfive: json['sec_yearfive'],
      sec_yearsix: json['sec_yearsix'],
      sec_yearseven: json['sec_yearseven'],
      sec_yeareight: json['sec_yeareight'],
      sec_yearnine: json['sec_yearnine'],
      sec_yearten: json['sec_yearten'],
      sec_yeareleven: json['sec_yeareleven'],
      sec_yeartwelve: json['sec_yeartwelve'],
      third_yearone: json['third_yearone'],
      third_yeartwo: json['third_yeartwo'],
      third_yearthree: json['third_yearthree'],
      third_yearfour: json['third_yearfour'],
      third_yearfive: json['third_yearfive'],
      third_yearsix: json['third_yearsix'],
      third_yearseven: json['third_yearseven'],
      third_yeareight: json['third_yeareight'],
      third_yearnine: json['third_yearnine'],
      third_yearten: json['third_yearten'],
      third_yeareleven: json['third_yeareleven'],
      third_yeartwelve: json['third_yeartwelve'],
      four_yearone: json['four_yearone'],
      four_yeartwo: json['four_yeartwo'],
      four_yearthree: json['four_yearthree'],
      four_yearfour: json['four_yearfour'],
      four_yearfive: json['four_yearfive'],
      four_yearsix: json['four_yearsix'],
      four_yearseven: json['four_yearseven'],
      four_yeareight: json['four_yeareight'],
      four_yearnine: json['four_yearnine'],
      four_yearten: json['four_yearten'],
      four_yeareleven: json['four_yeareleven'],
      four_yeartwelve: json['four_yeartwelve'],
      five_yearone: json['five_yearone'],
      five_yeartwo: json['five_yeartwo'],
      five_yearthree: json['five_yeathree'],
      five_yearfour: json['five_yearfour'],
      five_yearfive: json['five_yearfive'],
      five_yearsix: json['five_yearsix'],
      five_yearseven: json['five_yearseven'],
      five_yeareight: json['five_yeareight'],
      five_yearnine: json['five_yearnine'],
      five_yearten: json['five_yearten'],
      five_yeareleven: json['five_yeareleven'],
      five_yeartwelve: json['five_yeartwelve'],
      // x1: json['x1'],
      // y1: json['y1'],
      // x2: json['x2'],
      // y2: json['y2'],
      // x3: json['x3'],
      // y3: json['y3'],
      // x4: json['x4'],
      // y4: json['y4'],
      // x5: json['x5'],
      // y5: json['y5'],
      // x6: json['x6'],
      // y6: json['y6'],
      // x7: json['x7'],
      // y7: json['y7'],
      // x8: json['x8'],
      // y8: json['y8'],
      // x9: json['x9'],
      // y9: json['y9'],
      // x10: json['x10'],
      // y10: json['y10'],
      // childrenCount:
      //     json["total_Number_of_children_alive_including_this_child"].toString(),
    );
  }
}
