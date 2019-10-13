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
  final String bcgDate1,
      bcgBatchNo1,
      bcgEffects1,
      bcgDate2,
      bcgBatchNo2,
      bcgEffects2,
      pentDate1,
      pentBatchNo1,
      pentEffects1,
      opvDate1,
      opvBatchNo1,
      opvEffects1,
      pentDate2,
      pentBatchNo2,
      pentEffects2,
      opvDate2,
      opvBatchNo2,
      opvEffects2,
      pentDate3,
      pentBatchNo3,
      pentEffects3,
      opvDate3,
      opvBatchNo3,
      opvEffects3,
      jeDate1,
      jeBatchNo1,
      jeEffects1,
      rubDate1,
      rubBatchNo1,
      rubEffects1,
      dptDate1,
      dptBatchNo1,
      dptEffects1,
      opvDate4,
      opvBatchNo4,
      opvEffects4,
      rubDate2,
      rubBatchNo2,
      rubEffects2,
      dtDate1,
      dtBatchNo1,
      dtEffects1,
      opvDate5,
      opvBatchNo5,
      opvEffects5,
      adultDipDate1,
      adultDipBatchNo1,
      adultDipEffects1,
      otherVacDate1,
      otherVacBatchNo1,
      otherVacEffects1,
      refDate,
      reasonRef,
      palceRef,
      notes;

  final bool bcgScar;
  Baby(
      {this.bcgDate1,
      this.bcgBatchNo1,
      this.bcgEffects1,
      this.bcgDate2,
      this.bcgBatchNo2,
      this.bcgEffects2,
      this.pentDate1,
      this.pentBatchNo1,
      this.pentEffects1,
      this.opvDate1,
      this.opvBatchNo1,
      this.opvEffects1,
      this.pentDate2,
      this.pentBatchNo2,
      this.pentEffects2,
      this.opvDate2,
      this.opvBatchNo2,
      this.opvEffects2,
      this.pentDate3,
      this.pentBatchNo3,
      this.pentEffects3,
      this.opvDate3,
      this.opvBatchNo3,
      this.opvEffects3,
      this.jeDate1,
      this.jeBatchNo1,
      this.jeEffects1,
      this.rubDate1,
      this.rubBatchNo1,
      this.rubEffects1,
      this.dptDate1,
      this.dptBatchNo1,
      this.dptEffects1,
      this.opvDate4,
      this.opvBatchNo4,
      this.opvEffects4,
      this.rubDate2,
      this.rubBatchNo2,
      this.rubEffects2,
      this.dtDate1,
      this.dtBatchNo1,
      this.dtEffects1,
      this.opvDate5,
      this.opvBatchNo5,
      this.opvEffects5,
      this.adultDipDate1,
      this.adultDipBatchNo1,
      this.adultDipEffects1,
      this.otherVacDate1,
      this.otherVacBatchNo1,
      this.otherVacEffects1,
      this.refDate,
      this.reasonRef,
      this.palceRef,
      this.notes,
      this.bcgScar});

  factory Baby.fromJson(Map<String, dynamic> json) {
    return Baby(
      // // idNumber: json['Identity_number'],
      // vilID: json['village_id'],
      // wifeName: json['Name_of_wife'],
      // husbandName: json['Name_of_husband'],
      // childrenCount: json['Number_of_living_childern']

      // childrenCount:
      //     json["total_Number_of_children_alive_including_this_child"].toString(),

      bcgDate1: json['b_c_g_date'],

      bcgBatchNo1: json["b_c_g_batch_no"],

      bcgEffects1: json["b_c_g_effects_of_immunization"],
      bcgScar: json["b_c_g_b_c_g_scar"],

      bcgDate2: json["b_c_g_second_dose_date"],
      bcgBatchNo2: json["b_c_g_second_dose_batch_no"],
      bcgEffects2: json["b_c_g_second_dose_effects_of_immunization"],

      pentDate1: json["pentavalent_one_date"],
      pentBatchNo1: json["pentavalent_one_batch_no"],
      pentEffects1: json["pentavalent_one_effects_of_immunization"],

      opvDate1: json["opv_one_date"],
      opvBatchNo1: json["opv_one_batch_no"],
      opvEffects1: json["opv_one_effects_of_immunization"],

      pentDate2: json["pentavalent_two_date"],
      pentBatchNo2: json["pentavalent_two_batch_no"],
      pentEffects2: json["pentavalent_two_effects_of_immunization"],

      opvDate2: json["opv_two_date"],
      opvBatchNo2: json["opv_two_batch_no"],
      opvEffects2: json["opv_two_effects_of_immunization"],

      pentDate3: json["pentavalent_three_date"],
      pentBatchNo3: json["pentavalent_three_batch_no"],
      pentEffects3: json["pentavalent_three_effects_of_immunization"],

      opvDate3: json["opv_three_date"],
      opvBatchNo3: json["opv_three_batch_no"],
      opvEffects3: json["opv_three_effects_of_immunization"],

      jeDate1: json["live_je_date"],
      jeBatchNo1: json["live_je_batch_no"],
      jeEffects1: json["live_je_effects_of_immunization"],

      rubDate1: json["measules_mumps_rubella_date"],
      rubBatchNo1: json["measules_mumps_rubella_batch_no"],
      rubEffects1: json["measules_mumps_rubella_effects_of_immunization"],

      dptDate1: json["dpt_date"],
      dptBatchNo1: json["dpt_batch_no"],
      dptEffects1: json["dpt_effects_of_immunization"],

      opvDate4: json["opv_four_date"],
      opvBatchNo4: json["opv_four_batch_no"],
      opvEffects4: json["opv_four_effects_of_immunization"],

      rubDate2: json["measules_rubella_two_date"],
      rubBatchNo2: json["measules_rubella_two_batch_no"],
      rubEffects2: json["measules_rubella_two_effects_of_immunization"],

      dtDate1: json["d_t_date"],
      dtBatchNo1: json["d_t_batch_no"],
      dtEffects1: json["d_t_effects_of_immunization"],

      opvDate5: json["opv_five_date"],
      opvBatchNo5: json["opv_five_batch_no"],
      opvEffects5: json["opv_five_effects_of_immunization"],

      adultDipDate1: json["adult_tatanus_diphtheria_date"],
      adultDipBatchNo1: json["adult_tatanus_diphtheria_batch_no"],
      adultDipEffects1:
          json["adult_tatanus_diphtheria_effects_of_immunization"],

      otherVacDate1: json["other_vaccine_date"],
      otherVacBatchNo1: json["other_batch_no"],
      otherVacEffects1: json["other_effects_of_immunization"],

      refDate: json["date_of_refferals"],
      reasonRef: json["reason_for_referrals"],
      palceRef: json["place_of_refferal"],
      notes: json["notes_on_back"],
    );
  }
}
