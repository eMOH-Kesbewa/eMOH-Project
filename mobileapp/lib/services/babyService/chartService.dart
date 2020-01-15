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
      'http://protected-bayou-52277.herokuapp.com/weightheight/viewWeightHeightById/A000010'

      //'http://protected-bayou-52277.herokuapp.com/weightheight/viewWeightHeightById/${globals.babyId}'

      );

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

// class WeightHeight {
//   final double first_yearone;
//   final double first_yeartwo;
//   final double first_yearthree;
//   final double first_yearfour;
//   final double first_yearfive;
//   final double first_yearsix;
//   final double first_yearseven;
//   final double first_yeareight;
//   final double first_yearnine;
//   final double first_yearten;
//   final double first_yeareleven;
//   final double first_yeartwelve;
//   final double sec_yearone;
//   final double sec_yeartwo;
//   final double sec_yearthree;
//   final double sec_yearfour;
//   final double sec_yearfive;
//   final double sec_yearsix;
//   final double sec_yearseven;
//   final double sec_yeareight;
//   final double sec_yearnine;
//   final double sec_yearten;
//   final double sec_yeareleven;
//   final double sec_yeartwelve;
//   final double third_yearone;
//   final double third_yeartwo;
//   final double third_yearthree;
//   final double third_yearfour;
//   final double third_yearfive;
//   final double third_yearsix;
//   final double third_yearseven;
//   final double third_yeareight;
//   final double third_yearnine;
//   final double third_yearten;
//   final double third_yeareleven;
//   final double third_yeartwelve;
//   final double four_yearone;
//   final double four_yeartwo;
//   final double four_yearthree;
//   final double four_yearfour;
//   final double four_yearfive;
//   final double four_yearsix;
//   final double four_yearseven;
//   final double four_yeareight;
//   final double four_yearnine;
//   final double four_yearten;
//   final double four_yeareleven;
//   final double four_yeartwelve;
//   final double five_yearone;
//   final double five_yeartwo;
//   final double five_yearthree;
//   final double five_yearfour;
//   final double five_yearfive;
//   final double five_yearsix;
//   final double five_yearseven;
//   final double five_yeareight;
//   final double five_yearnine;
//   final double five_yearten;
//   final double five_yeareleven;
//   final double five_yeartwelve;

//   WeightHeight(
//       {this.first_yearone,
//       this.first_yeartwo,
//       this.first_yearthree,
//       this.first_yearfour,
//       this.first_yearfive,
//       this.first_yearsix,
//       this.first_yearseven,
//       this.first_yeareight,
//       this.first_yearnine,
//       this.first_yearten,
//       this.first_yeareleven,
//       this.first_yeartwelve,
//       this.sec_yearone,
//       this.sec_yeartwo,
//       this.sec_yearthree,
//       this.sec_yearfour,
//       this.sec_yearfive,
//       this.sec_yearsix,
//       this.sec_yearseven,
//       this.sec_yeareight,
//       this.sec_yearnine,
//       this.sec_yearten,
//       this.sec_yeareleven,
//       this.sec_yeartwelve,
//       this.third_yearone,
//       this.third_yeartwo,
//       this.third_yearthree,
//       this.third_yearfour,
//       this.third_yearfive,
//       this.third_yearsix,
//       this.third_yearseven,
//       this.third_yeareight,
//       this.third_yearnine,
//       this.third_yearten,
//       this.third_yeareleven,
//       this.third_yeartwelve,
//       this.four_yearone,
//       this.four_yeartwo,
//       this.four_yearthree,
//       this.four_yearfour,
//       this.four_yearfive,
//       this.four_yearsix,
//       this.four_yearseven,
//       this.four_yeareight,
//       this.four_yearnine,
//       this.four_yearten,
//       this.four_yeareleven,
//       this.four_yeartwelve,
//       this.five_yearone,
//       this.five_yeartwo,
//       this.five_yearthree,
//       this.five_yearfour,
//       this.five_yearfive,
//       this.five_yearsix,
//       this.five_yearseven,
//       this.five_yeareight,
//       this.five_yearnine,
//       this.five_yearten,
//       this.five_yeareleven,
//       this.five_yeartwelve});

//   factory WeightHeight.fromJson(Map<String, dynamic> json) {
//     logger.d('in factory');

//     logger.i(json.length);

//     //have to type other if clauses also

//     // logger.d(json['first_yearone']);
//     // logger.d(json['first_yeartwo']);
//     // logger.d(json['first_yearthree']);
//     // logger.d(json['first_yearfour']);
//     // logger.d(json['first_yearfive']);
//     // logger.d(json['first_yearsix']);
//     // logger.d(json['first_yearseven']);
//     // logger.d(json['first_yeareight']);
//     // logger.d(json['first_yearnine']);
//     // logger.d(json['first_yearten']);
//     // logger.d(json['first_yeareleven']);
//     // logger.d(json['first_yeartwelve']);

//     // return pointstoReturn;
//     // return WeightHeight(
//     //   first_yearone: json['first_yearone'].toDouble(),
//     //   first_yeartwo: json['first_yeartwo'].toDouble(),
//     //   first_yearthree: json['first_yearthree'].toDouble(),
//     //   first_yearfour: json['first_yearfour'].toDouble(),
//     //   first_yearfive: json['first_yearfive'].toDouble(),
//     //   first_yearsix: json['first_yearsix'].toDouble(),
//     //   first_yearseven: json['first_yearseven'].toDouble(),
//     //   first_yeareight: json['first_yeareight'].toDouble(),
//     //   first_yearnine: json['first_yearnine'].toDouble(),
//     //   first_yearten: json['first_yearten'].toDouble(),
//     //   first_yeareleven: json['first_yeareleven'].toDouble(),
//     //   first_yeartwelve: json['first_yeartwelve'].toDouble(),
//     //   sec_yearone: json['sec_yearone'].toDouble(),
//     //   sec_yeartwo: json['sec_yeartwo'].toDouble(),
//     //   sec_yearthree: json['sec_yearthree'].toDouble(),
//     //   sec_yearfour: json['sec_yearfour'].toDouble(),
//     //   sec_yearfive: json['sec_yearfive'].toDouble(),
//     //   sec_yearsix: json['sec_yearsix'].toDouble(),
//     //   sec_yearseven: json['sec_yearseven'].toDouble(),
//     //   sec_yeareight: json['sec_yeareight'].toDouble(),
//     //   sec_yearnine: json['sec_yearnine'].toDouble(),
//     //   sec_yearten: json['sec_yearten'].toDouble(),
//     //   sec_yeareleven: json['sec_yeareleven'].toDouble(),
//     //   sec_yeartwelve: json['sec_yeartwelve'].toDouble(),
//     //   third_yearone: json['third_yearone'].toDouble(),
//     //   third_yeartwo: json['third_yeartwo'].toDouble(),
//     //   third_yearthree: json['third_yearthree'].toDouble(),
//     //   third_yearfour: json['third_yearfour'].toDouble(),
//     //   third_yearfive: json['third_yearfive'].toDouble(),
//     //   third_yearsix: json['third_yearsix'].toDouble(),
//     //   third_yearseven: json['third_yearseven'].toDouble(),
//     //   third_yeareight: json['third_yeareight'].toDouble(),
//     //   third_yearnine: json['third_yearnine'].toDouble(),
//     //   third_yearten: json['third_yearten'].toDouble(),
//     //   third_yeareleven: json['third_yeareleven'].toDouble(),
//     //   third_yeartwelve: json['third_yeartwelve'].toDouble(),
//     //   four_yearone: json['four_yearone'].toDouble(),
//     //   four_yeartwo: json['four_yeartwo'].toDouble(),
//     //   four_yearthree: json['four_yearthree'].toDouble(),
//     //   four_yearfour: json['four_yearfour'].toDouble(),
//     //   four_yearfive: json['four_yearfive'].toDouble(),
//     //   four_yearsix: json['four_yearsix'].toDouble(),
//     //   four_yearseven: json['four_yearseven'].toDouble(),
//     //   four_yeareight: json['four_yeareight'].toDouble(),
//     //   four_yearnine: json['four_yearnine'].toDouble(),
//     //   four_yearten: json['four_yearten'].toDouble(),
//     //   four_yeareleven: json['four_yeareleven'].toDouble(),
//     //   four_yeartwelve: json['four_yeartwelve'].toDouble(),
//     //   five_yearone: json['five_yearone'].toDouble(),
//     //   five_yeartwo: json['five_yeartwo'].toDouble(),
//     //   five_yearthree: json['five_yearthree'].toDouble(),
//     //   five_yearfour: json['five_yearfour'].toDouble(),
//     //   five_yearfive: json['five_yearfive'].toDouble(),
//     //   five_yearsix: json['five_yearsix'].toDouble(),
//     //   five_yearseven: json['five_yearseven'].toDouble(),
//     //   five_yeareight: json['five_yeareight'].toDouble(),
//     //   five_yearnine: json['five_yearnine'].toDouble(),
//     //   five_yearten: json['five_yearten'].toDouble(),
//     //   five_yeareleven: json['five_yeareleven'].toDouble(),
//     //   five_yeartwelve: json['five_yeartwelve'].toDouble(),
//     // );
//   }
// }
