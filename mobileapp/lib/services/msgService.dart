import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'globals.dart' as globals;

var logger = Logger();

List<String> id = List();
List<String> name = List();
List<String> discription = List();
List<String> date = List();

Future fetchClinic() async {
  print('fetch clinic function');

  //   final jwtDetails = await http.get('https://protected-bayou-52277.herokuapp.com/users/profile',headers: ).then((res){
  //   logger.wtf(res.body);
  // });

//asyncprogramming
  var x = await globals.getGlobals();
  final response = await http
      .get('https://protected-bayou-52277.herokuapp.com/clinics/view');

  if (response.statusCode == 200) {
    logger.e(json.decode(response.body));
    var result = json.decode(response.body);

    // for (var i = 0; i < response.body.length; i++) {
    //   logger.d('in for loop');
    //   logger.i(result[i]['date']);
    //   logger.w(result[i]['clinic_discription']);
    //   logger.v(result[i]['clinic_title']);
    //   logger.wtf(result[i]['clinic_id']);
    //   date[i] = result[i]['date'];
    //   name[i] = result[i]['clinic_title'];
    //   discription[i] = result[i]['clinic_discription'];
    //   id[i] = result[i]['clinic_id'];
    //   //fixedLengthList[0] = 87;
    //   // id.add(result[i]['clinic_id']);
    //   // name.add(result[i]['clinic_title']);
    //   // discription.add(result[i]['clinic_discription']);
    //   // date.add(result[i]['date']);
    // }
    // logger.wtf(date);
    //return Clinic.fromJson(json.decode(response.body));
    return result;
   
    //return [id,name,]
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load Family');
  }
}

// class Clinic {
//   final List<String> clinicId;
//   final List<String> clinicName;
//   final List<String> clinicDiscription;
//   final List<String> clinicDate;

//   Clinic({this.clinicId, this.clinicName, this.clinicDiscription, this.clinicDate});

//   factory Clinic.fromJson(Map<String, dynamic> json) {
//     globals.familyId = json['Identity_number'];
//     logger.d("in factory");
//     logger.wtf(json['clinic_id']);
//     return Clinic(
//         clinicId: id,
//         clinicName: name,
//         clinicDiscription: discription,
//         clinicDate: date);
//   }
// }
