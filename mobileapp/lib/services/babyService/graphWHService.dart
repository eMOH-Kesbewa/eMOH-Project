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

    List wpoints = List();
    List hpoints = List();
    if (result['first_yearone'] != null) {
      wpoints.add(result['first_yearone']);
    }
    if (result['first_yeartwo'] != null) {
      wpoints.add(result['first_yeartwo']);
    }
    if (result['first_yearthree'] != null) {
      wpoints.add(result['first_yearfour']);
    }
    if (result['first_yearfour'] != null) {
      wpoints.add(result['first_yearfour']);
    }
    if (result['first_yearfive'] != null) {
      wpoints.add(result['first_yearfive']);
    }

    if (result['first_yearsix'] != null) {
      wpoints.add(result['first_yearsix']);
    }
    if (result['first_yearseven'] != null) {
      wpoints.add(result['first_yearseven']);
    }
    if (result['first_yeareight'] != null) {
      wpoints.add(result['first_yeareight']);
    }
    if (result['first_yearnine'] != null) {
      wpoints.add(result['first_yearnine']);
    }
    if (result['first_yearten'] != null) {
      wpoints.add(result['first_yearten']);
    }
    if (result['first_yeareleven'] != null) {
      wpoints.add(result['first_yeareleven']);
    }
    if (result['first_yeartwelve'] != null) {
      wpoints.add(result['first_yeartwelve']);
    }

    if (result['sec_yearone'] != null) {
      wpoints.add(result['sec_yearone']);
    }
    if (result['sec_yeartwo'] != null) {
      wpoints.add(result['sec_yeartwo']);
    }
    if (result['sec_yearthree'] != null) {
      wpoints.add(result['sec_yearfour']);
    }
    if (result['sec_yearfour'] != null) {
      wpoints.add(result['sec_yearfour']);
    }
    if (result['sec_yearfive'] != null) {
      wpoints.add(result['sec_yearfive']);
    }

    if (result['sec_yearsix'] != null) {
      wpoints.add(result['sec_yearsix']);
    }
    if (result['sec_yearseven'] != null) {
      wpoints.add(result['sec_yearseven']);
    }
    if (result['sec_yeareight'] != null) {
      wpoints.add(result['sec_yeareight']);
    }
    if (result['sec_yearnine'] != null) {
      wpoints.add(result['sec_yearnine']);
    }
    if (result['sec_yearten'] != null) {
      wpoints.add(result['sec_yearten']);
    }
    if (result['sec_yeareleven'] != null) {
      wpoints.add(result['sec_yeareleven']);
    }
    if (result['sec_yeartwelve'] != null) {
      wpoints.add(result['sec_yeartwelve']);
    }

    if (result['third_yearone'] != null) {
      wpoints.add(result['third_yearone']);
    }
    if (result['third_yeartwo'] != null) {
      wpoints.add(result['third_yeartwo']);
    }
    if (result['third_yearthree'] != null) {
      wpoints.add(result['third_yearthree']);
    }
    if (result['third_yearfour'] != null) {
      wpoints.add(result['third_yearfour']);
    }
    if (result['third_yearfive'] != null) {
      wpoints.add(result['third_yearfive']);
    }

    if (result['third_yearsix'] != null) {
      wpoints.add(result['third_yearsix']);
    }
    if (result['third_yearseven'] != null) {
      wpoints.add(result['third_yearseven']);
    }
    if (result['third_yeareight'] != null) {
      wpoints.add(result['third_yeareight']);
    }
    if (result['third_yearnine'] != null) {
      wpoints.add(result['third_yearnine']);
    }
    if (result['third_yearten'] != null) {
      wpoints.add(result['third_yearten']);
    }
    if (result['third_yeareleven'] != null) {
      wpoints.add(result['third_yeareleven']);
    }
    if (result['third_yeartwelve'] != null) {
      wpoints.add(result['third_yeartwelve']);
    }

    if (result['four_yearone'] != null) {
      wpoints.add(result['four_yearone']);
    }
    if (result['four_yeartwo'] != null) {
      wpoints.add(result['four_yeartwo']);
    }
    if (result['four_yearthree'] != null) {
      wpoints.add(result['four_yearthree']);
    }
    if (result['four_yearfour'] != null) {
      wpoints.add(result['four_yearfour']);
    }
    if (result['four_yearfive'] != null) {
      wpoints.add(result['four_yearfive']);
    }

    if (result['four_yearsix'] != null) {
      wpoints.add(result['four_yearsix']);
    }
    if (result['four_yearseven'] != null) {
      wpoints.add(result['four_yearseven']);
    }
    if (result['four_yeareight'] != null) {
      wpoints.add(result['four_yeareight']);
    }
    if (result['four_yearnine'] != null) {
      wpoints.add(result['four_yearnine']);
    }
    if (result['four_yearten'] != null) {
      wpoints.add(result['four_yearten']);
    }
    if (result['four_yeareleven'] != null) {
      wpoints.add(result['four_yeareleven']);
    }
    if (result['four_yeartwelve'] != null) {
      wpoints.add(result['four_yeartwelve']);
    }

    if (result['five_yearone'] != null) {
      wpoints.add(result['five_yearone']);
    }
    if (result['five_yeartwo'] != null) {
      wpoints.add(result['five_yeartwo']);
    }
    if (result['five_yearthree'] != null) {
      wpoints.add(result['five_yearthree']);
    }
    if (result['five_yearfour'] != null) {
      wpoints.add(result['five_yearfour']);
    }
    if (result['five_yearfive'] != null) {
      wpoints.add(result['five_yearfive']);
    }

    if (result['five_yearsix'] != null) {
      wpoints.add(result['five_yearsix']);
    }
    if (result['five_yearseven'] != null) {
      wpoints.add(result['five_yearseven']);
    }
    if (result['five_yeareight'] != null) {
      wpoints.add(result['five_yeareight']);
    }
    if (result['five_yearnine'] != null) {
      wpoints.add(result['five_yearnine']);
    }
    if (result['five_yearten'] != null) {
      wpoints.add(result['five_yearten']);
    }
    if (result['five_yeareleven'] != null) {
      wpoints.add(result['five_yeareleven']);
    }
    if (result['five_yeartwelve'] != null) {
      wpoints.add(result['five_yeartwelve']);
    }

    if (result['hfirst_yearone'] != null) {
      hpoints.add(result['hfirst_yearone']);
    }
    if (result['hfirst_yeartwo'] != null) {
      hpoints.add(result['hfirst_yeartwo']);
    }
    if (result['hfirst_yearthree'] != null) {
      hpoints.add(result['hfirst_yearfour']);
    }
    if (result['hfirst_yearfour'] != null) {
      hpoints.add(result['hfirst_yearfour']);
    }
    if (result['hfirst_yearfive'] != null) {
      hpoints.add(result['hfirst_yearfive']);
    }

    if (result['hfirst_yearsix'] != null) {
      hpoints.add(result['hfirst_yearsix']);
    }
    if (result['hfirst_yearseven'] != null) {
      hpoints.add(result['hfirst_yearseven']);
    }
    if (result['hfirst_yeareight'] != null) {
      hpoints.add(result['hfirst_yeareight']);
    }
    if (result['hfirst_yearnine'] != null) {
      hpoints.add(result['hfirst_yearnine']);
    }
    if (result['hfirst_yearten'] != null) {
      hpoints.add(result['hfirst_yearten']);
    }
    if (result['hfirst_yeareleven'] != null) {
      hpoints.add(result['hfirst_yeareleven']);
    }
    if (result['hfirst_yeartwelve'] != null) {
      hpoints.add(result['hfirst_yeartwelve']);
    }

    if (result['hsec_yearone'] != null) {
      hpoints.add(result['hsec_yearone']);
    }
    if (result['hsec_yeartwo'] != null) {
      hpoints.add(result['hsec_yeartwo']);
    }
    if (result['hsec_yearthree'] != null) {
      hpoints.add(result['hsec_yearfour']);
    }
    if (result['hsec_yearfour'] != null) {
      hpoints.add(result['hsec_yearfour']);
    }
    if (result['hsec_yearfive'] != null) {
      hpoints.add(result['hsec_yearfive']);
    }

    if (result['hsec_yearsix'] != null) {
      hpoints.add(result['hsec_yearsix']);
    }
    if (result['hsec_yearseven'] != null) {
      hpoints.add(result['hsec_yearseven']);
    }
    if (result['hsec_yeareight'] != null) {
      hpoints.add(result['hsec_yeareight']);
    }
    if (result['hsec_yearnine'] != null) {
      hpoints.add(result['hsec_yearnine']);
    }
    if (result['hsec_yearten'] != null) {
      hpoints.add(result['hsec_yearten']);
    }
    if (result['hsec_yeareleven'] != null) {
      hpoints.add(result['hsec_yeareleven']);
    }
    if (result['hsec_yeartwelve'] != null) {
      hpoints.add(result['hsec_yeartwelve']);
    }

    if (result['hthird_yearone'] != null) {
      hpoints.add(result['hthird_yearone']);
    }
    if (result['hthird_yeartwo'] != null) {
      hpoints.add(result['hthird_yeartwo']);
    }
    if (result['hthird_yearthree'] != null) {
      hpoints.add(result['hthird_yearthree']);
    }
    if (result['hthird_yearfour'] != null) {
      hpoints.add(result['hthird_yearfour']);
    }
    if (result['hthird_yearfive'] != null) {
      hpoints.add(result['hthird_yearfive']);
    }

    if (result['hthird_yearsix'] != null) {
      hpoints.add(result['hthird_yearsix']);
    }
    if (result['hthird_yearseven'] != null) {
      hpoints.add(result['hthird_yearseven']);
    }
    if (result['hthird_yeareight'] != null) {
      hpoints.add(result['hthird_yeareight']);
    }
    if (result['hthird_yearnine'] != null) {
      hpoints.add(result['hthird_yearnine']);
    }
    if (result['hthird_yearten'] != null) {
      hpoints.add(result['hthird_yearten']);
    }
    if (result['hthird_yeareleven'] != null) {
      hpoints.add(result['hthird_yeareleven']);
    }
    if (result['hthird_yeartwelve'] != null) {
      hpoints.add(result['hthird_yeartwelve']);
    }

    if (result['hfour_yearone'] != null) {
      hpoints.add(result['hfour_yearone']);
    }
    if (result['hfour_yeartwo'] != null) {
      hpoints.add(result['hfour_yeartwo']);
    }
    if (result['hfour_yearthree'] != null) {
      hpoints.add(result['hfour_yearthree']);
    }
    if (result['hfour_yearhfour'] != null) {
      hpoints.add(result['hfour_yearhfour']);
    }
    if (result['hfour_yearfive'] != null) {
      hpoints.add(result['hfour_yearfive']);
    }

    if (result['hfour_yearsix'] != null) {
      hpoints.add(result['hfour_yearsix']);
    }
    if (result['hfour_yearseven'] != null) {
      hpoints.add(result['hfour_yearseven']);
    }
    if (result['hfour_yeareight'] != null) {
      hpoints.add(result['hfour_yeareight']);
    }
    if (result['hfour_yearnine'] != null) {
      hpoints.add(result['hfour_yearnine']);
    }
    if (result['hfour_yearten'] != null) {
      hpoints.add(result['hfour_yearten']);
    }
    if (result['hfour_yeareleven'] != null) {
      hpoints.add(result['hfour_yeareleven']);
    }
    if (result['hfour_yeartwelve'] != null) {
      hpoints.add(result['hfour_yeartwelve']);
    }

    if (result['hfive_yearone'] != null) {
      hpoints.add(result['hfive_yearone']);
    }
    if (result['hfive_yeartwo'] != null) {
      hpoints.add(result['hfive_yeartwo']);
    }
    if (result['hfive_yearthree'] != null) {
      hpoints.add(result['hfive_yearthree']);
    }
    if (result['hfive_yearfour'] != null) {
      hpoints.add(result['hfive_yearfour']);
    }
    if (result['hfive_yearfive'] != null) {
      hpoints.add(result['hfive_yearfive']);
    }

    if (result['hfive_yearsix'] != null) {
      hpoints.add(result['hfive_yearsix']);
    }
    if (result['hfive_yearseven'] != null) {
      hpoints.add(result['hfive_yearseven']);
    }
    if (result['hfive_yeareight'] != null) {
      hpoints.add(result['hfive_yeareight']);
    }
    if (result['hfive_yearnine'] != null) {
      hpoints.add(result['hfive_yearnine']);
    }
    if (result['hfive_yearten'] != null) {
      hpoints.add(result['hfive_yearten']);
    }
    if (result['hfive_yeareleven'] != null) {
      hpoints.add(result['hfive_yeareleven']);
    }
    if (result['hfive_yeartwelve'] != null) {
      hpoints.add(result['hfive_yeartwelve']);
    }

    logger.d('wpoints');
    logger.d(wpoints);
    logger.e(hpoints);
    Map<String, dynamic> pointstoReturn = Map();
    for (var i = 0; i < wpoints.length; i++) {
      var p = 'wp' + '${i}';
      // logger.wtf(p);

      // p = points[i];
      //logger.wtf('nextp');
      pointstoReturn['wp' + '${i}'] = wpoints[i];
      pointstoReturn['hp' + '${i}'] = hpoints[i];
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
