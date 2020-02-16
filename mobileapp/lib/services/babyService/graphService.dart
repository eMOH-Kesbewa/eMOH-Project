import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import '../globals.dart' as globals;

var logger = Logger();

Future fetchWeightHeight() async {
  print('fetch WeightHeight function');
  //String _babyId = globals.WeightHeightId + babyIndex;

  final response = await http.get(
      // 'http://protected-bayou-52277.herokuapp.com/weightheight/viewWeightHeightById/A000010'

      'http://emohback.herokuapp.com/reports/viewWeightHeightById/${globals.babyId}');

  logger.d('${globals.babyId}');

  //http: //protected-bayou-52277.herokuapp.com/weightheight/viewWeightHeightById/A0000010

  logger.e(response.statusCode);

  // final json = jsonDecode(response.body);

  if (response.statusCode == 200) {
    //logger.d(json.decode(response.body)[0]);

    var result = json.decode(response.body)[0];

    List points = List();

    if (result['first_yearone'] != null) {
      points.add(result['first_yearone']);
    }
    if (result['first_yeartwo'] != null) {
      points.add(result['first_yeartwo']);
    }
    if (result['first_yearthree'] != null) {
      points.add(result['first_yearfour']);
    }
    if (result['first_yearfour'] != null) {
      points.add(result['first_yearfour']);
    }
    if (result['first_yearfive'] != null) {
      points.add(result['first_yearfive']);
    }

    if (result['first_yearsix'] != null) {
      points.add(result['first_yearsix']);
    }
    if (result['first_yearseven'] != null) {
      points.add(result['first_yearseven']);
    }
    if (result['first_yeareight'] != null) {
      points.add(result['first_yeareight']);
    }
    if (result['first_yearnine'] != null) {
      points.add(result['first_yearnine']);
    }
    if (result['first_yearten'] != null) {
      points.add(result['first_yearten']);
    }
    if (result['first_yeareleven'] != null) {
      points.add(result['first_yeareleven']);
    }
    if (result['first_yeartwelve'] != null) {
      points.add(result['first_yeartwelve']);
    }

    if (result['sec_yearone'] != null) {
      points.add(result['sec_yearone']);
    }
    if (result['sec_yeartwo'] != null) {
      points.add(result['sec_yeartwo']);
    }
    if (result['sec_yearthree'] != null) {
      points.add(result['sec_yearfour']);
    }
    if (result['sec_yearfour'] != null) {
      points.add(result['sec_yearfour']);
    }
    if (result['sec_yearfive'] != null) {
      points.add(result['sec_yearfive']);
    }

    if (result['sec_yearsix'] != null) {
      points.add(result['sec_yearsix']);
    }
    if (result['sec_yearseven'] != null) {
      points.add(result['sec_yearseven']);
    }
    if (result['sec_yeareight'] != null) {
      points.add(result['sec_yeareight']);
    }
    if (result['sec_yearnine'] != null) {
      points.add(result['sec_yearnine']);
    }
    if (result['sec_yearten'] != null) {
      points.add(result['sec_yearten']);
    }
    if (result['sec_yeareleven'] != null) {
      points.add(result['sec_yeareleven']);
    }
    if (result['sec_yeartwelve'] != null) {
      points.add(result['sec_yeartwelve']);
    }

    if (result['third_yearone'] != null) {
      points.add(result['third_yearone']);
    }
    if (result['third_yeartwo'] != null) {
      points.add(result['third_yeartwo']);
    }
    if (result['third_yearthree'] != null) {
      points.add(result['third_yearthree']);
    }
    if (result['third_yearfour'] != null) {
      points.add(result['third_yearfour']);
    }
    if (result['third_yearfive'] != null) {
      points.add(result['third_yearfive']);
    }

    if (result['third_yearsix'] != null) {
      points.add(result['third_yearsix']);
    }
    if (result['third_yearseven'] != null) {
      points.add(result['third_yearseven']);
    }
    if (result['third_yeareight'] != null) {
      points.add(result['third_yeareight']);
    }
    if (result['third_yearnine'] != null) {
      points.add(result['third_yearnine']);
    }
    if (result['third_yearten'] != null) {
      points.add(result['third_yearten']);
    }
    if (result['third_yeareleven'] != null) {
      points.add(result['third_yeareleven']);
    }
    if (result['third_yeartwelve'] != null) {
      points.add(result['third_yeartwelve']);
    }

    if (result['four_yearone'] != null) {
      points.add(result['four_yearone']);
    }
    if (result['four_yeartwo'] != null) {
      points.add(result['four_yeartwo']);
    }
    if (result['four_yearthree'] != null) {
      points.add(result['four_yearthree']);
    }
    if (result['four_yearfour'] != null) {
      points.add(result['four_yearfour']);
    }
    if (result['four_yearfive'] != null) {
      points.add(result['four_yearfive']);
    }

    if (result['four_yearsix'] != null) {
      points.add(result['four_yearsix']);
    }
    if (result['four_yearseven'] != null) {
      points.add(result['four_yearseven']);
    }
    if (result['four_yeareight'] != null) {
      points.add(result['four_yeareight']);
    }
    if (result['four_yearnine'] != null) {
      points.add(result['four_yearnine']);
    }
    if (result['four_yearten'] != null) {
      points.add(result['four_yearten']);
    }
    if (result['four_yeareleven'] != null) {
      points.add(result['four_yeareleven']);
    }
    if (result['four_yeartwelve'] != null) {
      points.add(result['four_yeartwelve']);
    }

    if (result['five_yearone'] != null) {
      points.add(result['five_yearone']);
    }
    if (result['five_yeartwo'] != null) {
      points.add(result['five_yeartwo']);
    }
    if (result['five_yearthree'] != null) {
      points.add(result['five_yearthree']);
    }
    if (result['five_yearfour'] != null) {
      points.add(result['five_yearfour']);
    }
    if (result['five_yearfive'] != null) {
      points.add(result['five_yearfive']);
    }

    if (result['five_yearsix'] != null) {
      points.add(result['five_yearsix']);
    }
    if (result['five_yearseven'] != null) {
      points.add(result['five_yearseven']);
    }
    if (result['five_yeareight'] != null) {
      points.add(result['five_yeareight']);
    }
    if (result['five_yearnine'] != null) {
      points.add(result['five_yearnine']);
    }
    if (result['five_yearten'] != null) {
      points.add(result['five_yearten']);
    }
    if (result['five_yeareleven'] != null) {
      points.add(result['five_yeareleven']);
    }
    if (result['five_yeartwelve'] != null) {
      points.add(result['five_yeartwelve']);
    }

    logger.d('points');
    logger.d(points);
    Map<String, dynamic> pointstoReturn = Map();
    for (var i = 0; i < points.length; i++) {
      var p = 'p' + '${i}';
      // logger.wtf(p);

      // p = points[i];
      //logger.wtf('nextp');
      pointstoReturn['p' + '${i}'] = points[i];
    }
    pointstoReturn.forEach((k, v) {
      v.toDouble();
    });
    logger.i(pointstoReturn);
    pointstoReturn.cast<String, dynamic>();
    return pointstoReturn;
    //return WeightHeight11.fromJson(json.decode(response.body)[0]);
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load WeightHeight');
  }
}
