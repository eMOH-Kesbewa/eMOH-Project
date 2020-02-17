import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobileapp/services/style.dart';
import '../globals.dart' as globals;

Future<Baby> fetchBaby() async {
  print('fetch Baby function');
  //String _babyId = globals.BabyId + babyIndex;
  final response = await http
      .get('https://emohback.herokuapp.com/babies/viewbybabyid/${globals.babyId}');
  print('status code');
  print(response.statusCode);
  print(response.body);
  // final json = jsonDecode(response.body);
  if (response.statusCode == 200) {
    return Baby.fromJson(json.decode(response.body)[0]);
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load Baby');
  }
}

class Baby {
  final String deliveryMethod;
  final String apgar1m;
  final String apgar5m;
  final String apgar10m;
  final String birthWeight;
  final String gridleCircumference;
  final String length;
  //final String childrenCount;
  final String dischargeWeight;
  final String vitaminK;
  final String breastFeedingFirstHr;
  final String breastFeedingUnstability;
  final String breastFeedingConnection;
  final String checkCongenitalHypothyroidism;
  final String prematureBirthsStatus;
  final String lowBirthWeightStatus;
  final String neonatalAbnomalitiesStatus;
  final String inheritedProblemsStatus;
  final String congenitalHypothyroidismState;
  final String serverIllnessOfTheMotherAfterDeliveryStatus;
  final String breastfeedingAtFirstSixMonthsStatus;
  final String impairmentsOfGrowthStatus;
  final String deathOfMotherOrFatherStatus;
  final String separationOrDepatureOfMotherOrFatherStatus;
  final String otherStatus;

  Baby({
    this.deliveryMethod,
    this.apgar1m,
    this.apgar5m,
    this.apgar10m,
    this.birthWeight,
    this.gridleCircumference,
    this.length,
    this.dischargeWeight,
    this.vitaminK,
    this.breastFeedingFirstHr,
    this.breastFeedingUnstability,
    this.breastFeedingConnection,
    this.checkCongenitalHypothyroidism,
    this.prematureBirthsStatus,
    this.lowBirthWeightStatus,
    this.neonatalAbnomalitiesStatus,
    this.inheritedProblemsStatus,
    this.congenitalHypothyroidismState,
    this.serverIllnessOfTheMotherAfterDeliveryStatus,
    this.breastfeedingAtFirstSixMonthsStatus,
    this.impairmentsOfGrowthStatus,
    this.deathOfMotherOrFatherStatus,
    this.separationOrDepatureOfMotherOrFatherStatus,
    this.otherStatus,
  });

  List<Widget> getReasons() {
    // <<<<< Note this change for the return type
    List reasons = new List<Widget>();
    if (prematureBirthsStatus != "Normal") {
      reasons.add(
        new ListTile(
          leading: warningIcon,
          title: Text(prematureBirthsStatus),
        ),
      );
    }
    // int i = 0;
    // for (i = 0; i < 5; i++) {
    //   reasons.add(
    //     new RadioListTile<String>(
    //       title: const Text('Lafayette'),
    //       value: "c",
    //       groupValue: "x",
    //       onChanged: (_) {},
    //     ),
    //   );
    // }
    return reasons;
  }

  factory Baby.fromJson(Map<String, dynamic> json) {
    List _reasons = new List();

    return Baby(
      // // idNumber: json['Identity_number'],
      // vilID: json['village_id'],
      // wifeName: json['Name_of_wife'],
      // husbandName: json['Name_of_husband'],
      // childrenCount: json['Number_of_living_childern']

      deliveryMethod: json["method_of_delivery"],
      apgar1m: json["Number_of_apgas_1m"],
      apgar5m: json["Number_of_apgas_5m"],
      apgar10m: json["Number_of_apgas_10m"],
      birthWeight: json["birth_weight"],
      gridleCircumference: json["gridle_circumference_at_birth"],
      length: json["length_of_baby_at_birth"],
      dischargeWeight: json["weight_in_discharge_from_hospital"],
      vitaminK: json["K_vitamine"],
      breastFeedingFirstHr:
          json["breast_feeding_breast_feeding_during_the_first_hour"],
      breastFeedingUnstability: json["breast_feeding_unstability"],
      breastFeedingConnection: json["breast_feeding_connection"],
      checkCongenitalHypothyroidism:
          json["does_check_congenital_hypothyroidism"],

      prematureBirthsStatus: json["premature_births_status"],
      lowBirthWeightStatus: json["low_birth_weight_statu"],
      neonatalAbnomalitiesStatus: json["neonatal_abnomalities_status"],
      inheritedProblemsStatus: json["inherited_problems_status"],
      congenitalHypothyroidismState: json["congenital_hypothyroidism_state"],
      serverIllnessOfTheMotherAfterDeliveryStatus:
          json["server_illness_of_the_mother_after_delivery_status"],
      breastfeedingAtFirstSixMonthsStatus:
          json["breastfeeding_at_first_six_months_status"],
      impairmentsOfGrowthStatus: json["impairments_of_growth_status"],
      deathOfMotherOrFatherStatus: json["death_of_mother_or_father_status"],
      separationOrDepatureOfMotherOrFatherStatus:
          json["separation_or_depature_of_mother_or_father_status"],
      otherStatus: json["other_status"],

      // childrenCount:
      //     json["total_Number_of_children_alive_including_this_child"].toString(),
    );
  }
}
