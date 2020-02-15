import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../globals.dart' as globals;

Future<Baby> fetchBaby() async {
  print('fetch Baby function');
  //String _babyId = globals.BabyId + babyIndex;
  final response = await http.get(
      'https://protected-bayou-52277.herokuapp.com/babies/viewbyid/${globals.babyId}');
  print('status code');
  print(response.statusCode);
  print(response.body);
  // final json = jsonDecode(response.body);
  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON.
    //return (json.decode(response.body));
    //print(Baby.fromJson(json.decode(response.body)));
    return Baby.fromJson(json.decode(response.body)[0]);
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load Baby');
  }
}

class Baby {
  final String oneSkin, sixSkin, fourteenSkin, fourtyTwoSkin;
  final String oneEyes, sixEyes, fourteenEyes, fourtyTwoEyes;
  final String oneLob, sixLob, fourteenLob, fourtyTwoLob;
  final String oneTemp, sixTemp, fourteenTemp, fourtyTwoTemp;
  final String oneOnlyBreast,
      sixOnlyBreast,
      fourteenOnlyBreast,
      fourtyTwoOnlyBreast;
  final String oneBreastStab,
      sixBreastStab,
      fourteenBreastStab,
      fourtyTwoBreastStab;
  final String oneBreastCon,
      sixBreastCon,
      fourteenBreastCon,
      fourtyTwoBreastCon;

  final String oneOther, sixOther, fourteenOther, fourtyTwoOther;
  final String date1, date2, date3, date4;
  Baby({
    this.date1,
    this.date2,
    this.date3,
    this.date4,
    this.oneOther,
    this.sixOther,
    this.fourteenOther,
    this.fourtyTwoOther,
    this.oneSkin,
    this.sixSkin,
    this.fourteenSkin,
    this.fourtyTwoSkin,
    this.oneEyes,
    this.sixEyes,
    this.fourteenEyes,
    this.fourtyTwoEyes,
    this.oneLob,
    this.sixLob,
    this.fourteenLob,
    this.fourtyTwoLob,
    this.oneTemp,
    this.sixTemp,
    this.fourteenTemp,
    this.fourtyTwoTemp,
    this.oneOnlyBreast,
    this.sixOnlyBreast,
    this.fourteenOnlyBreast,
    this.fourtyTwoOnlyBreast,
    this.oneBreastStab,
    this.sixBreastStab,
    this.fourteenBreastStab,
    this.fourtyTwoBreastStab,
    this.oneBreastCon,
    this.sixBreastCon,
    this.fourteenBreastCon,
    this.fourtyTwoBreastCon,
  });

  factory Baby.fromJson(Map<String, dynamic> json) {
    return Baby(
      oneOther: json['other_ten_days_from_birth_one_five_days_status'],
      sixOther: json['other_six_ten_days_status'],
      fourteenOther: json['other_fourteen_twentytwo_days_status'],
      fourtyTwoOther: json['other_fourtytwo_days_status'],

      oneSkin: json['color_of_skin_ten_days_from_birth_one_five_days_status'],
      sixSkin: json['color_of_skin_six_ten_days_status'],
      fourteenSkin: json['color_of_skin_fourteen_twentytwo_days_status'],
      fourtyTwoSkin: json['color_of_skin_fourtytwo_days_status'],

      oneEyes: json['eyes_ten_days_from_birth_one_five_days_status'],
      sixEyes: json['eyes_six_ten_days_status'],
      fourteenEyes: json['eyes_fourteen_twentytwo_days_status'],
      fourtyTwoEyes: json['eyes_fourtytwo_days_status'],

      oneLob: json[
          'the_native_of_lobbyists_ten_days_from_birth_one_five_days_status'],
      sixLob: json['the_native_of_lobbyists_six_ten_days_status'],
      fourteenLob:
          json['the_native_of_lobbyists_fourteen_twentytwo_days_status'],
      fourtyTwoLob: json['the_native_of_lobbyists_fourtytwo_days_status'],

      oneTemp: json['tempreture_ten_days_from_birth_one_five_days_status'],
      sixTemp: json['tempreture_six_ten_days_status'],
      fourteenTemp: json['tempreture_fourteen_twentytwo_days_status'],
      fourtyTwoTemp: json['tempreture_fourtytwo_days_status'],

      oneOnlyBreast:
          json['only_breastfeeding_ten_days_from_birth_one_five_days_status'],
      sixOnlyBreast: json['only_breastfeeding_six_ten_days_status'],
      fourteenOnlyBreast:
          json['only_breastfeeding_fourteen_twentytwo_days_status'],
      fourtyTwoOnlyBreast: json['only_breastfeeding_fourtytwo_days_status'],

      oneBreastStab: json[
          'breastfeeding_stability_ten_days_from_birth_one_five_days_status'],
      sixBreastStab: json['breastfeeding_stability_six_ten_days_status'],
      fourteenBreastCon:
          json['breastfeeding_stability_fourteen_twentytwo_days_status'],
      fourtyTwoBreastStab:
          json['breastfeeding_stability_fourtytwo_days_status'],

      oneBreastCon: json[
          'breastfeeding_connection_ten_days_from_birth_one_five_days_status'],
      sixBreastCon: json['breastfeeding_connection_six_ten_days_status'],
      fourteenBreastStab:
          json['breastfeeding_connection_fourteen_twentytwo_days_status'],
      fourtyTwoBreastCon:
          json['breastfeeding_connection_fourtytwo_days_status'],

      date1: json['ten_days_from_birth_one_five_days_date'],
      date2: json['six_ten_days_date'],
      date3: json['fourteen_twentytwo_days_date'],
      date4: json['fourtytwo_days_date'],
      // childrenCount:
      //     json["total_Number_of_children_alive_including_this_child"].toString(),
    );
  }
}
