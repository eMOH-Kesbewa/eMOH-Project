const mongoose = require('mongoose');
var Schema = mongoose.Schema;
var baby = new Schema({
   "baby_id":String,
   "name_of_child": String,
   "date_of_birth_of_child":Date,
   "date_of_registered": Date,
   "name_of_mother": String,
   "age_of_mother": Number,
   "address": String,
   "total_Number_of_children_alive_including_this_child": Number,
   
   // "method_of_delivery_normal_delivery": String,
   // "method_of_delivery_low_delivery": String,
   // "method_of_delivery_vaccume_delivery": String,
   // "method_of_delivery_sesarean_delivery": String, 
   "method_of_delivery":String,
   "Number_of_apgas_1m": String,
   "Number_of_apgas_5m": String,
   "Number_of_apgas_10m": String,
   "birth_weight": String,
   "gridle_circumference_at_birth": String,
   "length_of_baby_at_birth": String,
   "weight_in_discharge_from_hospital": String,
   "K_vitamine": String,
   "breast_feeding_breast_feeding_during_the_first_hour": String,
   "breast_feeding_unstability": String,
   "breast_feeding_connection": String,
   "does_check_congenital_hypothyroidism": String,

   "premature_births_status": String,
   "premature_births_date": Date,
   "low_birth_weight_status": String,
   "low_birth_weight_date": Date,
   "neonatal_abnomalities_status": String,
   "neonatal_abnomalities_date": Date,
   "inherited_problems_status": String,
   "inherited_problems_date": Date,
   "congenital_hypothyroidism_state": String,
   "congenital_hypothyroidism_date": Date,
   "server_illness_of_the_mother_after_delivery_status": String,
   "server_illness_of_the_mother_after_delivery_date": Date, 
   "breastfeeding_at_first_six_months_status": String,
   "breastfeeding_at_first_six_months_date": Date,     
   "impairments_of_growth_status": String,
   "impairments_of_growth_date": Date,
   "death_of_mother_or_father_status": String,
   "death_of_mother_or_father_date": Date,  
   "separation_or_depature_of_mother_or_father_status": String,
   "separation_or_depature_of_mother_or_father_date": Date,
   "other_status": String,
   "other_date": Date,  
     
        
    //second page 
   "second_date": Date,
   "maturaty_of_baby_weeks": Number,
   "baby_growth": String,
   "blood_group_of_baby": String,

   "peripheries_pink_and_warm_noraml": String,
   "peripheries_pink_and_warm_abnormal": String,

   "hydration_normal": String,
   "hydration_abnormal": String,

   "response_to_hnadling_normal": String,
   "response_to_hnadling_abnormal": String,

   "capillary_refilling_time_normal": String,
   "capillary_refilling_time_abnormal": String,

   "pulse_rate_or_volume_normal": String,
   "pulse_rate_or_volume_abnormal": String,

   "heart_murmurs_normal": String,
   "heart_murmurs_abnormal": String,

   "femoral_pulse_normal": String,
   "femoral_pulse_abnormal": String,

   "respiratory_rate_normal": String,
   "respiratory_rate_abnormal": String,

   "grunting_normal": String,
   "grunting_abnormal": String,

   "intercostal_or_subcostal_recession_normal": String,
   "intercostal_or_subcostal_recession_abnormal": String,

   "tone_normal": String,
   "tone_abnormal": String,

   "OFC_normal": String,
   "OFC_abnormal": String,

   "fontamelle_or_suture_line_normal": String,
   "fontamelle_or_suture_line_abnormal": String,

   "eyes_or_red_reflex_normal": String,
   "eyes_or_red_reflex_abnormal": String,

   "scalp_normal": String,
   "scalp_abnormal": String,

   "mouth_lips_normal": String,
   "mouth_lips_abnormal": String,

   "palate_normal": String,
   "palate_abnormal": String,

   "ears_normal": String,
   "ears_abnormal": String,

   "abdomen_normal": String,
   "abdomen_abnormal": String,

   "umbilicus_normal": String,
   "umbilicus_abnormal": String,

   "genitalia_normal": String,
   "genitalia_abnormal": String,

   "anus_normal": String,
   "anus_abnormal": String,

   "hips_normal": String,
   "hips_abnormal": String,

   "spine_normal": String,
   "spine_abnormal": String,

   "limbs_normal": String,
   "limbs_abnormal": String,

   "dysmorphic_featurse_normal": String,
   "dysmorphic_featurse_abnormal": String,

   "superficial_infection_skin_normal": String,
   "superficial_infection_skin_abnormal": String,

   "birth_injuries_normal": String,
   "birth_injuries_abnormal": String,

   "other_abnomalities": String,
   "action_taken": String,
   "diagnosis_of_discharge": String,
   "date_of_discharge": Date,


   //third page for phm
   "ten_days_from_birth_one_five_days_date": Date,
   "six_ten_days_date": Date,
   "fourteen_twentytwo_days_date": Date,
   "fourtytwo_days_date": Date,

   "color_of_skin_ten_days_from_birth_one_five_days_status": String,
   "color_of_skin_six_ten_days_status": String,
   "color_of_skin_fourteen_twentytwo_days_status": String,
   "color_of_skin_fourtytwo_days_status": String,

   "eyes_ten_days_from_birth_one_five_days_status": String,
   "eyes_six_ten_days_status": String,
   "eyes_fourteen_twentytwo_days_status": String,
   "eyes_fourtytwo_days_status": String,

   "the_native_of_lobbyists_ten_days_from_birth_one_five_days_status": String,
   "the_native_of_lobbyists_six_ten_days_status": String,
   "the_native_of_lobbyists_fourteen_twentytwo_days_status": String,
   "the_native_of_lobbyists_fourtytwo_days_status": String,

   "tempreture_ten_days_from_birth_one_five_days_status": String,
   "tempreture_six_ten_days_status": String,
   "tempreture_fourteen_twentytwo_days_status": String,
   "tempreture_fourtytwo_days_status": String,

   "only_breastfeeding_ten_days_from_birth_one_five_days_status": String,
   "only_breastfeeding_six_ten_days_status": String,
   "only_breastfeeding_fourteen_twentytwo_days_status": String,
   "only_breastfeeding_fourtytwo_days_status": String,

   "breastfeeding_stability_ten_days_from_birth_one_five_days_status": String,
   "breastfeeding_stability_six_ten_days_status": String,
   "breastfeeding_stability_fourteen_twentytwo_days_status": String,
   "breastfeeding_stability_fourtytwo_days_status": String,

   "breastfeeding_connection_ten_days_from_birth_one_five_days_status": String,
   "breastfeeding_connection_six_ten_days_status": String,
   "breastfeeding_connection_fourteen_twentytwo_days_status": String,
   "breastfeeding_connection_fourtytwo_days_status": String,

   "other_ten_days_from_birth_one_five_days_status": String,
   "other_six_ten_days_status": String,
   "other_fourteen_twentytwo_days_status": String,
   "other_fourtytwo_days_status": String,

   
   
   "first_month_from_birth": {
      "does_child's_eyes_toward_the_light": Boolean,
      "does_the_child_look_good_on_your_face": Boolean

   },
   "in_second_month": {
      "when_you_turn_your_face_to_the_side_do_you_see_the_child_smiling_in_response": Boolean,
      "then_the_baby's_eyes_move": Boolean
   },
   "in_sixth_month": {
      "does_the_child_look_arround": Boolean,
      "is_child_streching_out_his_hand_and_tryimg_to_touch_something": Boolean,
      "do_you_suspect_that_your_child_has_a_problem": Boolean
   },
   "in_tenth_month": {
      "is_it_possible_for_a_child_to_pickup_small_things_with_a_thumb_and_forefinger": Boolean
   },
   "in_tweleth_month": {
      "have_your_child_strech_out_his_hand_and_touch_them": Boolean,
      "if_the_person_identifies_them_the_child_will_recognize_them_before_they_call_them": Boolean
   },
   "in_the_few_moments_after_the_birth": {
      "if_your_child_is_startled_by_a_sudden_loud_noise_does_his_stutter_or_widden_his_eyes": Boolean
   },
   "in_first_month": {
      "does_your_child_detect_sudden_or_presistent_noises_and_begin_to_listen_quitely_to_eve": Boolean
   },
   "from_four_month": {
      "if_they_can't_see_their_mother_do_they_keep_silent_or_laugh_when_their_voice_is_heard": Boolean,
      "when_the_mother_speaks_from_the_side_or)from_the_back_does_child_turn_his_head_or_eyes": Boolean
   },
   "from_seven_month": {
      "does_child_turn_to_the_mother_side_immediately_after_speaking": Boolean
   },
   "from_nine_month": {
      "listen_to_the_familiar_sounds_does_child_hear_everyday": Boolean,
      "does_find_out_about_noises_from_an_unknown_location": Boolean,
      "does_child_like_it_when_talking_to_a_loud_tune": Boolean
   },
   "when_twelve_month": {
      "does_he_respond_to_other_familiar_sounds_nd_his_name": Boolean,
      "does_he_respond_to_words_even_when_they_do_not": Boolean
   },

   "from_six_months_to_three_months": {
      "lie_on_his_hips_and_head_up": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "something_keeps_moving_from_one_place_to_another": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "stopping_or_increasing_action_responds_to_a_sudden_loud_noise": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "sounds_like_a_e_in_response_to_stimulus": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "the_mother_recognize_and_smiles": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      }
   },
   "from_three_to_six_months": {
      "raise_the_head_chest_while_standing_up": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "they_play_when_crossing_fingers": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "streching_his_hands_toward_something_he_hold_it_with_his_whole_hand": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "when_heard_a_sound_he_turn_his_head_toward_that": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "emits_single_letter_sounds": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "smiles_loudely": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      }
   },
   "from_six_to_nine_months": {
      "lie_your_hips_and_head_up": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "turn_back_again_and_again": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "change_something_another_hand_to_other_hand": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "some_sounds_are_repeated": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      }
   },
   "from_nine_to_twelve_month": {
      "siting_withou_help": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "holding_himself_alone": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "holding_small_things_using_thumb_And_forefinger": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "following_voice": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "pronounce_individual_words_makes_sounds_that_make_sense": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "understand_simple_instructions": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      }
   },
   "from_twelve_to_eighteen": {
      "walking_with_help": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "they_can_speak_At_least_two_or_three_words": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "hand_is_pointed_out_when_hearing_familiar_things": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "they_can_roll_a_boll": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "can_identify_at_least_one_body_part": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      }
   },
   "from_eghiteen_month_to_two_years": {
      "walking_without_help": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "can_climb_the_stair_with_help": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "can_make_a_tower_using_building_blocks": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "eat_himself_alone": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "the_lips_are_sharpened_to_kiss": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      }
   },
   "from_two_to_three_years": {
      "ability_to_run_without_falling": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "ability_to_down_and_up_stair": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "can_copy_an_art_with_a_circle": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      },
      "can_create_a_sentence_with_three_or_more_words": {
         "age_at_the_time_of_occurence": Number,
         "age_at_the_confirmed": Number,
         "status_of_the_officer": String
      }
   },

   "age_of_child": {
      "one_month": {
         "date_of_clinics": Date,
         "squint": String,
         "cataract": String,
         "impairment_of_eye_movement": String,
         "hearing": {
            "left": Boolean,
            "right": Boolean
         },
         "development": {
            "weight": Number,
            "height": Number
         },
         "heart_disease": String,
         "lungs": String,
         "hip_joint": String,
         "inheited_problems": String,
         "other_diseases": String,
         "designation_of_officer": String
      },
      "two_month": {
         "date_of_clinics": Date,
         "squint": String,
         "cataract": String,
         "impairment_of_eye_movement": String,
         "hearing": {
            "left": Boolean,
            "right": Boolean
         },
         "development": {
            "weight": Number,
            "height": Number
         },
         "heart_disease": String,
         "lungs": String,
         "hip_joint": String,
         "inheited_problems": String,
         "other_diseases": String,
         "designation_of_officer": String
      },
      "three_month": {
         "date_of_clinics": Date,
         "squint": String,
         "cataract": String,
         "impairment_of_eye_movement": String,
         "hearing": {
            "left": Boolean,
            "right": Boolean
         },
         "development": {
            "weight": Number,
            "height": Number
         },
         "heart_disease": String,
         "lungs": String,
         "hip_joint": String,
         "inheited_problems": String,
         "other_diseases": String,
         "designation_of_officer": String
      },
      "four_month": {
         "date_of_clinics": Date,
         "squint": String,
         "cataract": String,
         "impairment_of_eye_movement": String,
         "hearing": {
            "left": Boolean,
            "right": Boolean
         },
         "development": {
            "weight": Number,
            "height": Number
         },
         "heart_disease": String,
         "lungs": String,
         "hip_joint": String,
         "inheited_problems": String,
         "other_diseases": String,
         "designation_of_officer": String
      },
      "six_month": {
         "date_of_clinics": Date,
         "squint": String,
         "cataract": String,
         "impairment_of_eye_movement": String,
         "hearing": {
            "left": Boolean,
            "right": Boolean
         },
         "dental_caries": {
            "white_brown_spots": String,
            "dental_cavities": String
         },
         "development": {
            "weight": Number,
            "height": Number
         },
         "heart_disease": String,
         "lungs": String,
         "hip_joint": String,
         "inheited_problems": String,
         "other_diseases": String,
         "designation_of_officer": String
      },
      "nine_month": {
         "date_of_clinics": Date,
         "squint": String,
         "cataract": String,
         "impairment_of_eye_movement": String,
         "hearing": {
            "left": Boolean,
            "right": Boolean
         },
         "dental_caries": {
            "white_brown_spots": String,
            "dental_cavities": String
         },
         "development": {
            "weight": Number,
            "height": Number
         },
         "heart_disease": String,
         "lungs": String,
         "hip_joint": String,
         "inheited_problems": String,
         "other_diseases": String,
         "designation_of_officer": String
      },
      "twelve_month": {
         "date_of_clinics": Date,
         "squint": String,
         "cataract": String,
         "impairment_of_eye_movement": String,
         "hearing": {
            "left": Boolean,
            "right": Boolean
         },
         "dental_caries": {
            "white_brown_spots": String,
            "dental_cavities": String
         },
         "development": {
            "weight": Number,
            "height": Number
         },
         "heart_disease": String,
         "lungs": String,
         "hip_joint": String,
         "inheited_problems": String,
         "other_diseases": String,
         "designation_of_officer": String
      },
      "eighteen_month": {
         "date_of_clinics": Date,
         "squint": String,
         "cataract": String,
         "impairment_of_eye_movement": String,
         "hearing": {
            "left": Boolean,
            "right": Boolean
         },
         "dental_caries": {
            "white_brown_spots": String,
            "dental_cavities": String
         },
         "development": {
            "weight": Number,
            "height": Number
         },
         "heart_disease": String,
         "lungs": String,
         "hip_joint": String,
         "inheited_problems": String,
         "other_diseases": String,
         "designation_of_officer": String
      },
      "three_years": {
         "date_of_clinics": Date,
         "squint": String,
         "cataract": String,
         "impairment_of_eye_movement": String,
         "night_blindness": String,
         "bito_spots": String,
         "hearing": {
            "left": Boolean,
            "right": Boolean
         },
         "dental_caries": {
            "white_brown_spots": String,
            "dental_cavities": String
         },
         "development": {
            "weight": Number,
            "height": Number
         },
         "heart_disease": String,
         "lungs": String,
         "hip_joint": String,
         "inheited_problems": String,
         "other_diseases": String,
         "designation_of_officer": String
      },
      "four_years": {
         "date_of_clinics": Date,
         "squint": String,
         "cataract": String,
         "impairment_of_eye_movement": String,
         "night_blindness": String,
         "bito_spots": String,
         "hearing": {
            "left": Boolean,
            "right": Boolean
         },
         "dental_caries": {
            "white_brown_spots": String,
            "dental_cavities": String
         },
         "development": {
            "weight": Number,
            "height": Number
         },
         "heart_disease": String,
         "lungs": String,
         "hip_joint": String,
         "inheited_problems": String,
         "other_diseases": String,
         "designation_of_officer": String
      },
      "five_years": {
         "date_of_clinics": Date,
         "squint": String,
         "cataract": String,
         "impairment_of_eye_movement": String,
         "sight": {
            "left": Boolean,
            "right": Boolean
         },
         "night_blindness": String,
         "bito_spots": String,
         "hearing": {
            "left": Boolean,
            "right": Boolean
         },
         "dental_caries": {
            "white_brown_spots": String,
            "dental_cavities": String
         },
         "development": {
            "weight": Number,
            "height": Number
         },
         "heart_disease": String,
         "lungs": String,
         "hip_joint": String,
         "inheited_problems": String,
         "other_diseases": String,
         "designation_of_officer": String
      },

   },

   "date_of_checked": Date,
   "special_notice": String,



   "age_of_child": {
      "six": {
         "Number_of_teeth": Number,
         "status": String,
         "date": Date
      },
      "seven": {
         "Number_of_teeth": Number,
         "status": String,
         "date": Date
      },
      "eight": {
         "Number_of_teeth": Number,
         "status": String,
         "date": Date
      },
      "nine": {
         "Number_of_teeth": Number,
         "status": String,
         "date": Date
      },
      "ten": {
         "Number_of_teeth": Number,
         "status": String,
         "date": Date
      },
      "eleven": {
         "Number_of_teeth": Number,
         "status": String,
         "date": Date
      },
      "twelve": {
         "Number_of_teeth": Number,
         "status": String,
         "date": Date
      },
      "thirteen": {
         "Number_of_teeth": Number,
         "status": String,
         "date": Date
      },
      "fourteen": {
         "Number_of_teeth": Number,
         "status": String,
         "date": Date
      },
      "fifteen": {
         "Number_of_teeth": Number,
         "status": String,
         "date": Date
      },
      "sixteen": {
         "Number_of_teeth": Number,
         "status": String,
         "date": Date
      },
      "seventeen": {
         "Number_of_teeth": Number,
         "status": String,
         "date": Date
      },
      "eighteen": {
         "Number_of_teeth": Number,
         "status": String,
         "date": Date
      }
   },




   //vaccine
  
         "b_c_g_date":Date,
         "b_c_g_batch_no": String,
         "b_c_g_effects_of_immunization": String,
         "b_c_g_b_c_g_scar": Boolean,

         "b_c_g_second_dose_date":Date,
         "b_c_g_second_dose_batch_no": String,
         "b_c_g_second_dose_effects_of_immunization": String,

         "pentavalent_one_date":Date,
         "pentavalent_one_batch_no": String,
         "pentavalent_one_effects_of_immunization": String,

         "opv_one_date":Date,
         "opv_one_batch_no": String,
         "opv_one_effects_of_immunization": String,

         "pentavalent_two_date":Date,
         "pentavalent_two_batch_no": String,
         "pentavalent_two_effects_of_immunization": String,

         "opv_two_date":Date,
         "opv_two_batch_no": String,
         "opv_two_effects_of_immunization": String,

         "pentavalent_three_date":Date,
         "pentavalent_three_batch_no": String,
         "pentavalent_three_effects_of_immunization": String,

         "opv_three_date":Date,
         "opv_three_batch_no": String,
         "opv_three_effects_of_immunization": String,
         
         "live_je_date":Date,
         "live_je_batch_no": String,
         "live_je_effects_of_immunization": String,

         "measules_mumps_rubella_date":Date,
         "measules_mumps_rubella_batch_no": String,
         "measules_mumps_rubella_effects_of_immunization": String,

         "dpt_date":Date,
         "dpt_batch_no": String,
         "dpt_effects_of_immunization": String,

         "opv_four_date":Date,
         "opv_four_batch_no": String,
         "opv_four_effects_of_immunization": String,

         "measules_rubella_two_date":Date,
         "measules_rubella_two_batch_no": String,
         "measules_rubella_two_effects_of_immunization": String,
      
         "d_t_date":Date,
         "d_t_batch_no": String,
         "d_t_effects_of_immunization": String,

         "opv_five_date":Date,
         "opv_five_batch_no": String,
         "opv_five_effects_of_immunization": String,

         "adult_tatanus_diphtheria_date":Date,
         "adult_tatanus_diphtheria_batch_no": String,
         "adult_tatanus_diphtheria_effects_of_immunization": String,

         "other_vaccine_date":Date,
         "other_batch_no": String,
         "other_effects_of_immunization": String,
     
         "date_of_refferals": Date,
         "reason_for_referrals": String,
         "place_of_refferal": String,
         "notes_on_back": String,
         
         //vitamine A
         "A_vitamine_six_month_date": Date,
         "A_vitamine_six_month_batch_no": String,
     
      
         "A_vitamine_one_year_date": Date,
         "A_vitamine_one_year_batch_no": String,
         "A_vitamine_one_half_year_date": Date,
         "A_vitamine_one_half_year_batch_no": String,
         "A_vitamine_two_year_date": Date,
         "A_vitamine_two_year_batch_no": String,
      
         "A_vitamine_two_half_year_date": Date,
         "A_vitamine_two_half_year_batch_no": String,
     
         "A_vitamine_three_year_date": Date,
         "A_vitamine_three_year_batch_no": String,
      
         "A_vitamine_three_half_year_date": Date,
         "A_vitamine_three_half_year_batch_no": String,
      
         "A_vitamine_four_year_date": Date,
         "A_vitamine_four_year_batch_no": String,
      
         "A_vitamine_four_half_year_date": Date,
         "A_vitamine_four_half_year_batch_no": String,
      
         "A_vitamine_five_year_date": Date,
         "A_vitamine_five_year_batch_no": String,

         //warm treat
         "warm_treat_one_year_date": Date,
         "warm_treat_one_year_batch_no": String,
         "warm_treat_one_half_year_date": Date,
         "warm_treat_one_half_year_batch_no": String,
         "warm_treat_two_year_date": Date,
         "warm_treat_two_year_batch_no": String,
      
         "warm_treat_two_half_year_date": Date,
         "warm_treat_two_half_year_batch_no": String,
     
         "warm_treat_three_year_date": Date,
         "warm_treat_three_year_batch_no": String,
      
         "warm_treat_three_half_year_date": Date,
         "warm_treat_three_half_year_batch_no": String,
      
         "warm_treat_four_year_date": Date,
         "warm_treat_four_year_batch_no": String,
      
         "warm_treat_four_half_year_date": Date,
         "warm_treat_four_half_year_batch_no": String,
      
         "warm_treat_five_year_date": Date,
         "warm_treat_five_year_batch_no": String,

   

   
     
   
}, {
   collection: 'Baby'
});
var baby = mongoose.model('baby', baby);

module.exports = baby;