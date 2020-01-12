// // import 'dart:async';
// // import 'dart:convert';

// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;
// // import '../globals.dart' as globals;

// // Future<Baby> fetchBaby() async {
// //   print('fetch Baby function');
// //   //String _babyId = globals.BabyId + babyIndex;
// //   final response = await http.get(
// //       'https://protected-bayou-52277.herokuapp.com/babies/viewbyid/${globals.babyId}');

// //   // final json = jsonDecode(response.body);
// //   if (response.statusCode == 200) {
// //     // If the call to the server was successful, parse the JSON.
// //     //return (json.decode(response.body));
// //     //print(Baby.fromJson(json.decode(response.body)));
// //     return Baby.fromJson(json.decode(response.body)[0]);
// //   } else {
// //     // If that call was not successful, throw an error.
// //     throw Exception('Failed to load Baby');
// //   }
// // }

// // class Baby {
// //     x1;
// //     y1;
// //     x2;
// //     y2;
// //     x3;
// //     y3;
// //     x4;
// //     y4;
// //     x5;
// //     y5;
// //     x6;
// //     y6;
// //     x7;
// //     y7;
// //     x8;
// //     y8;
// //     x9;
// //     y9;
// //     x10;
// //     y10;

// //   Baby(this.x1, this.y1, this.x2, this.y2, this.x3, this.y3, this.x4, this.y4, this.x5, this.y5, this.x6, this.y6, this.x7, this.y7, this.x8, this.y8, this.x9, this.y9, this.x10, this.y10
// //      });

// //   factory Baby.fromJson(Map<String, dynamic> json) {
// //     return Baby(
// //       // // idNumber: json['Identity_number'],
// //       // vilID: json['village_id'],
// //       // wifeName: json['Name_of_wife'],
// //       // husbandName: json['Name_of_husband'],
// //       // childrenCount: json['Number_of_living_childern']

// //       id: json["baby_id"],
// //       phmArea: json["PHM_area"],
// //       mohArea: json["MOH_area"],
// //       name: json["name_of_child"],
// //       birthday: json["date_of_birth_of_child"],
// //       regDate: json["date_of_registered"],
// //       nameOfMother: json["name_of_mother"],
// //       ageOfMother: json["age_of_mother"].toString(),
// //       address: json["address"],
// //       // childrenCount:
// //       //     json["total_Number_of_children_alive_including_this_child"].toString(),
// //     );
// //   }
// // }

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import '../globals.dart' as globals;
import '../chartdata.dart' as chart;
import 'package:path_provider/path_provider.dart';
import './fileUtils.dart';

var logger = Logger();

Future fetchChart() async {
  print('fetch Baby function');
  //String _babyId = globals.BabyId + babyIndex;

  final response = await http.get(
      'https://protected-bayou-52277.herokuapp.com/babies/viewbyid/${globals.babyId}');

  logger.e(response.statusCode);

  // final json = jsonDecode(response.body);
  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON.
    //return (json.decode(response.body));
    // logger.i(Baby.fromJson(json.decode(response.body)));
//    print(Baby.fromJson(json.decode(response.body)));

    // logger.wtf(json.decode(response.body)[0]);
    return Baby.fromJson(json.decode(response.body)[0]);
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load Baby');
  }
}

class Baby {
  final double x1;
  final double y1;
  final double x2;
  final double y2;
  final double x3;
  final double y3;
  final double x4;
  final double y4;
  final double x5;
  final double y5;
  final double x6;
  final double y6;
  final double x7;
  final double y7;
  final double x8;
  final double y8;
  final double x9;
  final double y9;
  final double x10;
  final double y10;

  Baby(
      {this.x1,
      this.y1,
      this.x2,
      this.y2,
      this.x3,
      this.y3,
      this.x4,
      this.y4,
      this.x5,
      this.y5,
      this.x6,
      this.y6,
      this.x7,
      this.y7,
      this.x8,
      this.y8,
      this.x9,
      this.y9,
      this.x10,
      this.y10});

  factory Baby.fromJson(Map<String, dynamic> json) {
    List data = List();
    logger.wtf(json['x1']);
    // chart.x1 = json['x1'].toString();
    // logger.d(chart.x1);

    chart.x1 = json['x1'].toString();
    logger.e(json['x1']);
    logger.d(chart.x1);

    for (var i = 1; i < 24; i++) {
      data.add(json['x${i}']);
    }
    for (var i = 1; i < 24; i++) {
      //chart.data.add(json['x${i}']);
      data.remove(null);
    }

    FileUtils.saveToFile(data.toString());
    FileUtils.readFromFile().then((content) {
      logger.e(content);
    });
    logger.v(chart.data);

    return Baby(
      x1: json['x1'].toDouble(),
      y1: json['y1'].toDouble(),
      x2: json['x2'].toDouble(),
      y2: json['y2'].toDouble(),
      x3: json['x3'].toDouble(),
      y3: json['y3'].toDouble(),
      x4: json['x4'].toDouble(),
      y4: json['y4'].toDouble(),
      x5: json['x5'].toDouble(),
      y5: json['y5'].toDouble(),
      x6: json['x6'].toDouble(),
      y6: json['y6'].toDouble(),
      x7: json['x7'].toDouble(),
      y7: json['y7'].toDouble(),
      x8: json['x8'].toDouble(),
      y8: json['y8'].toDouble(),
      x9: json['x9'].toDouble(),
      y9: json['y9'].toDouble(),
      x10: json['x10'].toDouble(),
      y10: json['y10'].toDouble(),
      // childrenCount:
      //     json["total_Number_of_children_alive_including_this_child"].toString(),
    );
  }
}

// import 'dart:async';
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:logger/logger.dart';
// import '../chartdata.dart' as chart;
// import '../globals.dart' as globals;

// var logger = Logger();

// List<String> id = List();
// List<String> name = List();
// List<String> discription = List();
// List<String> date = List();

// Future fetchChart() async {
//  // var x = await globals.getGlobals();
//   final response = await http
//       .get('https://protected-bayou-52277.herokuapp.com/babies/viewbyid/${globals.babyId}');

//   if (response.statusCode == 200) {
//     logger.wtf(response.statusCode);
//     logger.e('hello');
//     var result = json.decode(response.body[0]);
//     logger.v(response.body);
//     // logger.i(result);
//     chart.x1 = result.x1;
//     // logger.v(result.x1);
//     // logger.d(chart.x1);
//     return result;

//     //return [id,name,]
//   } else {
//     // If that call was not successful, throw an error.
//     throw Exception('Failed to load Family');
//   }
// }
