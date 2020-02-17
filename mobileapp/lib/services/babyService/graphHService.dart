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

  ///viewWeightHeightById/:id

  logger.d('${globals.babyId}');

  //http: //protected-bayou-52277.herokuapp.com/weightheight/viewWeightHeightById/A0000010

  logger.e(response.statusCode);

  // final json = jsonDecode(response.body);

  if (response.statusCode == 200) {
    //logger.d(json.decode(response.body)[0]);

    var result = json.decode(response.body)[0];

    List points = List();

    if (result['hfirst_yearone'] != null) {
      points.add(result['hfirst_yearone']);
    }
    if (result['hfirst_yeartwo'] != null) {
      points.add(result['hfirst_yeartwo']);
    }
    if (result['hfirst_yearthree'] != null) {
      points.add(result['hfirst_yearfour']);
    }
    if (result['hfirst_yearfour'] != null) {
      points.add(result['hfirst_yearfour']);
    }
    if (result['hfirst_yearfive'] != null) {
      points.add(result['hfirst_yearfive']);
    }

    if (result['hfirst_yearsix'] != null) {
      points.add(result['hfirst_yearsix']);
    }
    if (result['hfirst_yearseven'] != null) {
      points.add(result['hfirst_yearseven']);
    }
    if (result['hfirst_yeareight'] != null) {
      points.add(result['hfirst_yeareight']);
    }
    if (result['hfirst_yearnine'] != null) {
      points.add(result['hfirst_yearnine']);
    }
    if (result['hfirst_yearten'] != null) {
      points.add(result['hfirst_yearten']);
    }
    if (result['hfirst_yeareleven'] != null) {
      points.add(result['hfirst_yeareleven']);
    }
    if (result['hfirst_yeartwelve'] != null) {
      points.add(result['hfirst_yeartwelve']);
    }

    if (result['hsec_yearone'] != null) {
      points.add(result['hsec_yearone']);
    }
    if (result['hsec_yeartwo'] != null) {
      points.add(result['hsec_yeartwo']);
    }
    if (result['hsec_yearthree'] != null) {
      points.add(result['hsec_yearfour']);
    }
    if (result['hsec_yearfour'] != null) {
      points.add(result['hsec_yearfour']);
    }
    if (result['hsec_yearfive'] != null) {
      points.add(result['hsec_yearfive']);
    }

    if (result['hsec_yearsix'] != null) {
      points.add(result['hsec_yearsix']);
    }
    if (result['hsec_yearseven'] != null) {
      points.add(result['hsec_yearseven']);
    }
    if (result['hsec_yeareight'] != null) {
      points.add(result['hsec_yeareight']);
    }
    if (result['hsec_yearnine'] != null) {
      points.add(result['hsec_yearnine']);
    }
    if (result['hsec_yearten'] != null) {
      points.add(result['hsec_yearten']);
    }
    if (result['hsec_yeareleven'] != null) {
      points.add(result['hsec_yeareleven']);
    }
    if (result['hsec_yeartwelve'] != null) {
      points.add(result['hsec_yeartwelve']);
    }

    if (result['hthird_yearone'] != null) {
      points.add(result['hthird_yearone']);
    }
    if (result['hthird_yeartwo'] != null) {
      points.add(result['hthird_yeartwo']);
    }
    if (result['hthird_yearthree'] != null) {
      points.add(result['hthird_yearthree']);
    }
    if (result['hthird_yearfour'] != null) {
      points.add(result['hthird_yearfour']);
    }
    if (result['hthird_yearfive'] != null) {
      points.add(result['hthird_yearfive']);
    }

    if (result['hthird_yearsix'] != null) {
      points.add(result['hthird_yearsix']);
    }
    if (result['hthird_yearseven'] != null) {
      points.add(result['hthird_yearseven']);
    }
    if (result['hthird_yeareight'] != null) {
      points.add(result['hthird_yeareight']);
    }
    if (result['hthird_yearnine'] != null) {
      points.add(result['hthird_yearnine']);
    }
    if (result['hthird_yearten'] != null) {
      points.add(result['hthird_yearten']);
    }
    if (result['hthird_yeareleven'] != null) {
      points.add(result['hthird_yeareleven']);
    }
    if (result['hthird_yeartwelve'] != null) {
      points.add(result['hthird_yeartwelve']);
    }

    if (result['hfour_yearone'] != null) {
      points.add(result['hfour_yearone']);
    }
    if (result['hfour_yeartwo'] != null) {
      points.add(result['hfour_yeartwo']);
    }
    if (result['hfour_yearthree'] != null) {
      points.add(result['hfour_yearthree']);
    }
    if (result['hfour_yearhfour'] != null) {
      points.add(result['hfour_yearhfour']);
    }
    if (result['hfour_yearfive'] != null) {
      points.add(result['hfour_yearfive']);
    }

    if (result['hfour_yearsix'] != null) {
      points.add(result['hfour_yearsix']);
    }
    if (result['hfour_yearseven'] != null) {
      points.add(result['hfour_yearseven']);
    }
    if (result['hfour_yeareight'] != null) {
      points.add(result['hfour_yeareight']);
    }
    if (result['hfour_yearnine'] != null) {
      points.add(result['hfour_yearnine']);
    }
    if (result['hfour_yearten'] != null) {
      points.add(result['hfour_yearten']);
    }
    if (result['hfour_yeareleven'] != null) {
      points.add(result['hfour_yeareleven']);
    }
    if (result['hfour_yeartwelve'] != null) {
      points.add(result['hfour_yeartwelve']);
    }

    if (result['hfive_yearone'] != null) {
      points.add(result['hfive_yearone']);
    }
    if (result['hfive_yeartwo'] != null) {
      points.add(result['hfive_yeartwo']);
    }
    if (result['hfive_yearthree'] != null) {
      points.add(result['hfive_yearthree']);
    }
    if (result['hfive_yearfour'] != null) {
      points.add(result['hfive_yearfour']);
    }
    if (result['hfive_yearfive'] != null) {
      points.add(result['hfive_yearfive']);
    }

    if (result['hfive_yearsix'] != null) {
      points.add(result['hfive_yearsix']);
    }
    if (result['hfive_yearseven'] != null) {
      points.add(result['hfive_yearseven']);
    }
    if (result['hfive_yeareight'] != null) {
      points.add(result['hfive_yeareight']);
    }
    if (result['hfive_yearnine'] != null) {
      points.add(result['hfive_yearnine']);
    }
    if (result['hfive_yearten'] != null) {
      points.add(result['hfive_yearten']);
    }
    if (result['hfive_yeareleven'] != null) {
      points.add(result['hfive_yeareleven']);
    }
    if (result['hfive_yeartwelve'] != null) {
      points.add(result['hfive_yeartwelve']);
    }

    logger.d('points');
    logger.d(points);
    Map<String, dynamic> pointstoReturn = Map();
    for (var i = 0; i < points.length; i++) {
      var p = 'p' + '${i}';
      logger.wtf(p);

      // p = points[i];
      //logger.wtf('nextp');
      pointstoReturn['${p}'] = points[i];
    }
    logger.wtf(pointstoReturn);
    pointstoReturn.forEach((k, v) {
      v.toDouble();
    });

    pointstoReturn.cast<String, dynamic>();
    return pointstoReturn;
    //return WeightHeight11.fromJson(json.decode(response.body)[0]);
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load WeightHeight');
  }
}
