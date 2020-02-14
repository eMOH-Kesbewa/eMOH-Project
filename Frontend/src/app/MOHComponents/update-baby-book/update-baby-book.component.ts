import { Component, OnInit ,NgZone, } from '@angular/core';
import { registerLocaleData } from '@angular/common';
import { ActivatedRoute } from '@angular/router';
import { Baby } from 'app/Services/Models/baby.js'
import { Router } from '@angular/router';
import { BabiesService } from 'app/Services/babies.service';
import { from } from 'rxjs';
import {MatSnackBar} from '@angular/material/snack-bar';
import { FormBuilder, FormGroup, Validators,FormControl } from '@angular/forms';
import {  minDate,prop, } from "@rxweb/reactive-form-validators";

@Component({
  selector: 'app-update-baby-book',
  templateUrl: './update-baby-book.component.html',
  styleUrls: ['./update-baby-book.component.scss'],
   providers: [BabiesService]
  
})
export class UpdateBabyBookComponent implements OnInit {

  BabyForm: FormGroup;
  submitted = false;
  success = false;
  DOB;
  @prop()
	date_of_birth_of_child: string ;

	@minDate({fieldName:'date_of_birth_of_child',operator:">" }) 
	date_of_registered: string;


  constructor(private router: Router,private formBuilder: FormBuilder, private _snackBar: MatSnackBar,private addbabyService: BabiesService, private ngZone: NgZone,private activeroute: ActivatedRoute) { }

  autoRenew : FormControl;
  public babyID;
 
  ngOnInit() {

    this.babyID = this.activeroute.snapshot.paramMap.get('babyId');
     this.BabyForm = this.formBuilder.group({
      
      baby_id:['', Validators.required],
      name_of_child: ['', Validators.required],
      date_of_birth_of_child:['', Validators.required],
      date_of_registered: ['', Validators.required],
      name_of_mother: ['', Validators.required],
      age_of_mother: [''],
      address: [''],
      Number_of_apgas_1m: [''],
      Number_of_apgas_5m: [''],
      Number_of_apgas_10m: [''],
      total_Number_of_children_alive_including_this_child: ['',],
      method_of_delivery:[''],
      birth_weight: [''],
      gridle_circumference_at_birth: [''],
      length_of_baby_at_birth: [''],
      weight_in_discharge_from_hospital: [''],
      K_vitamine: [''],
      breast_feeding_breast_feeding_during_the_first_hour:[''] ,
      breast_feeding_unstability: [''],
      breast_feeding_connection: [''],
      does_check_congenital_hypothyroidism: [''],
      premature_births_status: [''],
      premature_births_date: [''],
      low_birth_weight_status: [''],
      low_birth_weight_date: [''],  
      neonatal_abnomalities_status: [''],
      neonatal_abnomalities_date: [''],
      inherited_problems_status: [''],
      inherited_problems_date: [''],
      congenital_hypothyroidism_state: [''],
      congenital_hypothyroidism_date: [''],  
      server_illness_of_the_mother_after_delivery_status: [''],
      server_illness_of_the_mother_after_delivery_date: [''],
      breastfeeding_at_first_six_months_status: [''],
      breastfeeding_at_first_six_months_date: [''],
      impairments_of_growth_status: [''],
      impairments_of_growth_date: [''],
      death_of_mother_or_father_status: [''],
      death_of_mother_or_father_date: [''],
      separation_or_depature_of_mother_or_father_status: [''],
      separation_or_depature_of_mother_or_father_date: [''], 
      other_status: [''],
      other_date: [''],
        
      //second page
      second_date: [''],
      maturaty_of_baby_weeks: [''],
      baby_growth:[''],
      blood_group_of_baby: [''],

      peripheries_pink_and_warm_noraml: [''],
      peripheries_pink_and_warm_abnormal: [''],
      hydration_normal: [''],
      hydration_abnormal: [''],
      response_to_hnadling_normal: [''],
      response_to_hnadling_abnormal: [''],
      capillary_refilling_time_normal: [''],
      capillary_refilling_time_abnormal: [''],
      pulse_rate_or_volume_normal: [''],
      pulse_rate_or_volume_abnormal: [''],
      heart_murmurs_normal: [''],
      heart_murmurs_abnormal: [''],
      femoral_pulse_normal: [''],
      femoral_pulse_abnormal: [''],
      respiratory_rate_normal: [''],
      respiratory_rate_abnormal: [''],
      grunting_normal: [''],
      grunting_abnormal: [''],
      intercostal_or_subcostal_recession_normal: [''],
      intercostal_or_subcostal_recession_abnormal: [''],
      tone_normal: [''],
      tone_abnormal: [''],
      OFC_normal: [''],
      OFC_abnormal: [''], 
      fontamelle_or_suture_line_normal: [''],
      fontamelle_or_suture_line_abnormal: [''], 
      eyes_or_red_reflex_normal: [''],
      eyes_or_red_reflex_abnormal: [''],
      scalp_normal: [''],
      scalp_abnormal: [''],
      mouth_lips_normal: [''],
      mouth_lips_abnormal: [''],
      palate_normal: [''],
      palate_abnormal: [''],
      ears_normal: [''],
      ears_abnormal: [''],
      abdomen_normal: [''],
      abdomen_abnormal: [''],
      umbilicus_normal: [''],
      umbilicus_abnormal: [''],
      genitalia_normal: [''],
      genitalia_abnormal: [''],
      anus_normal: [''],
      anus_abnormal: [''],
      hips_normal: [''],
      hips_abnormal: [''],
      spine_normal: [''],
      spine_abnormal: [''],
      limbs_normal: [''],
      limbs_abnormal: [''],
      dysmorphic_featurse_normal: [''],
      dysmorphic_featurse_abnormal: [''],
      superficial_infection_skin_normal: [''],
      superficial_infection_skin_abnormal: [''],
      birth_injuries_normal: [''],
      birth_injuries_abnormal: [''],
      
      other_abnomalities: [''],
      action_taken:[''],
      diagnosis_of_discharge: [''],
      date_of_discharge: [''],

      //third page
      
      ten_days_from_birth_one_five_days_date:[''],
      six_ten_days_date:[''],
      fourteen_twentytwo_days_date:[''],
      fourtytwo_days_date:[''],

      color_of_skin_ten_days_from_birth_one_five_days_status: [''],
      color_of_skin_six_ten_days_status: [''],
      color_of_skin_fourteen_twentytwo_days_status: [''],
      color_of_skin_fourtytwo_days_status: [''],

      eyes_ten_days_from_birth_one_five_days_status: [''],
      eyes_six_ten_days_status: [''],
      eyes_fourteen_twentytwo_days_status: [''],
      eyes_fourtytwo_days_status: [''],

      the_native_of_lobbyists_ten_days_from_birth_one_five_days_status: [''],
      the_native_of_lobbyists_six_ten_days_status: [''],
      the_native_of_lobbyists_fourteen_twentytwo_days_status: [''],
      the_native_of_lobbyists_fourtytwo_days_status: [''],

      tempreture_ten_days_from_birth_one_five_days_status: [''],
      tempreture_six_ten_days_status: [''],
      tempreture_fourteen_twentytwo_days_status: [''],
      tempreture_fourtytwo_days_status: [''],

      only_breastfeeding_ten_days_from_birth_one_five_days_status: [''],
      only_breastfeeding_six_ten_days_status: [''],
      only_breastfeeding_fourteen_twentytwo_days_status: [''],
      only_breastfeeding_fourtytwo_days_status: [''],

      breastfeeding_stability_ten_days_from_birth_one_five_days_status: [''],
      breastfeeding_stability_six_ten_days_status: [''],
      breastfeeding_stability_fourteen_twentytwo_days_status: [''],
      breastfeeding_stability_fourtytwo_days_status: [''],

      breastfeeding_connection_ten_days_from_birth_one_five_days_status: [''],
      breastfeeding_connection_six_ten_days_status: [''],
      breastfeeding_connection_fourteen_twentytwo_days_status: [''],
      breastfeeding_connection_fourtytwo_days_status: [''],

      other_ten_days_from_birth_one_five_days_status: [''],
      other_six_ten_days_status: [''],
      other_fourteen_twentytwo_days_status: [''],
      other_fourtytwo_days_status: [''],

      //vaccine page
      b_c_g_date:[''],
      b_c_g_batch_no:[''],
      b_c_g_effects_of_immunization:[''],
      b_c_g_b_c_g_scar: [''],

      b_c_g_second_dose_date:[''],
      b_c_g_second_dose_batch_no:[''],
      b_c_g_second_dose_effects_of_immunization:[''],

      pentavalent_one_date:[''],
      pentavalent_one_batch_no:[''],
      pentavalent_one_effects_of_immunization:[''],

      opv_one_date:[''],
      opv_one_batch_no:[''],
      opv_one_effects_of_immunization:[''],

      pentavalent_two_date:[''],
      pentavalent_two_batch_no:[''],
      pentavalent_two_effects_of_immunization:[''],

      opv_two_date:[''],
      opv_two_batch_no:[''],
      opv_two_effects_of_immunization:[''],

      pentavalent_three_date:[''],
      pentavalent_three_batch_no:[''],
      pentavalent_three_effects_of_immunization:[''],

      opv_three_date:[''],
      opv_three_batch_no:[''],
      opv_three_effects_of_immunization:[''],
      
      live_je_date:[''],
      live_je_batch_no:[''],
      live_je_effects_of_immunization:[''],

      measules_mumps_rubella_date:[''],
      measules_mumps_rubella_batch_no:[''],
      measules_mumps_rubella_effects_of_immunization:[''],

      dpt_date:[''],
      dpt_batch_no:[''],
      dpt_effects_of_immunization:[''],

      opv_four_date:[''],
      opv_four_batch_no:[''],
      opv_four_effects_of_immunization:[''],

      measules_rubella_two_date:[''],
      measules_rubella_two_batch_no:[''],
      measules_rubella_two_effects_of_immunization:[''],
   
      d_t_date:[''],
      d_t_batch_no:[''],
      d_t_effects_of_immunization:[''],

      opv_five_date:[''],
      opv_five_batch_no:[''],
      opv_five_effects_of_immunization:[''],

      adult_tatanus_diphtheria_date:[''],
      adult_tatanus_diphtheria_batch_no:[''],
      adult_tatanus_diphtheria_effects_of_immunization:[''],

      other_vaccine_date:[''],
      other_batch_no:[''],
      other_effects_of_immunization:[''],
      
      //9th page
      date_of_refferals: [''],
      reason_for_referrals: [''],
      place_for_referrals: [''],
      notes_on_back: [''],
      //vitamine
      A_vitamine_six_month_date:[''],
      A_vitamine_six_month_batch_no:[''],
      A_vitamine_one_year_date:[''],
      A_vitamine_one_year_batch_no:[''],
      A_vitamine_one_half_year_date:[''],
      A_vitamine_one_half_year_batch_no:[''],
      A_vitamine_two_year_date:[''],
      A_vitamine_two_year_batch_no:[''],
   
      A_vitamine_two_half_year_date:[''],
      A_vitamine_two_half_year_batch_no:[''],
  
      A_vitamine_three_year_date:[''],
      A_vitamine_three_year_batch_no:[''],
   
      A_vitamine_three_half_year_date:[''],
      A_vitamine_three_half_year_batch_no:[''],
   
      A_vitamine_four_year_date:[''],
      A_vitamine_four_year_batch_no:[''],
   
      A_vitamine_four_half_year_date:[''],
      A_vitamine_four_half_year_batch_no:[''],
   
      A_vitamine_five_year_date:[''],
      A_vitamine_five_year_batch_no:[''],

      //warm treat
      warm_treat_one_year_date:[''],
      warm_treat_one_year_batch_no:[''],
      warm_treat_one_half_year_date:[''],
      warm_treat_one_half_year_batch_no:[''],
      warm_treat_two_year_date:[''],
      warm_treat_two_year_batch_no:[''],
   
      warm_treat_two_half_year_date:[''],
      warm_treat_two_half_year_batch_no:[''],
  
      warm_treat_three_year_date:[''],
      warm_treat_three_year_batch_no:[''],
   
      warm_treat_three_half_year_date:[''],
      warm_treat_three_half_year_batch_no:[''],
   
      warm_treat_four_year_date:[''],
      warm_treat_four_year_batch_no:[''],
   
      warm_treat_four_half_year_date:[''],
      warm_treat_four_half_year_batch_no:[''],
   
      warm_treat_five_year_date:[''],
      warm_treat_five_year_batch_no:[''],

      //for mothers to check see
      does_child_eyes_toward_the_light:[''],
      does_the_child_look_good_on_your_face:[''],
      when_you_turn_your_face_to_the_side_do_you_see_the_child_smiling_in_response:[''],
      then_the_baby_eyes_move:[''],
      does_the_child_look_arround:[''],
      is_child_streching_out_his_hand_and_tryimg_to_touch_something:[''],
      do_you_suspect_that_your_child_has_a_problem:[''],
      is_it_possible_for_a_child_to_pickup_small_things_with_a_thumb_and_forefinger:[''],
      have_your_child_strech_out_his_hand_and_touch_them:[''],
      if_the_person_identifies_them_the_child_will_recognize_them_before_they_call_them:[''],  

      //for mothers to chcek hearing
      if_your_child_is_startled_by_a_sudden_loud_noise_does_his_stutter_or_widden_his_eyes:[''],
      does_your_child_detect_sudden_or_presistent_noises_and_begin_to_listen_quitely_to_eve:[''],
      if_they_cant_see_their_mother_do_they_keep_silent_or_laugh_when_their_voice_is_heard:[''],
      when_the_mother_speaks_from_the_side_or_from_the_back_does_child_turn_his_head_or_eyes:[''],
      does_child_turn_to_the_mother_side_immediately_after_speaking:[''],
      listen_to_the_familiar_sounds_does_child_hear_everyday:[''],
      does_find_out_about_noises_from_an_unknown_location:[''],
      does_child_like_it_when_talking_to_a_loud_tune:[''],
      does_he_respond_to_other_familiar_sounds_nd_his_name:[''],
      does_he_respond_to_words_even_when_they_do_not:[''],

      //child development
      lie_on_his_hips_and_head_up_age_at_the_time_of_occurence:[''],
      lie_on_his_hips_and_head_up_age_at_the_confirmed:[''],
      lie_on_his_hips_and_head_up_status_of_the_officer:[''],
      something_keeps_moving_from_one_place_to_another_age_at_the_time_of_occurence:[''],
      something_keeps_moving_from_one_place_to_another_age_at_the_confirmed:[''],
      something_keeps_moving_from_one_place_to_another_status_of_the_officer:[''],
      stopping_or_increasing_action_responds_to_a_sudden_loud_noise_age_at_the_time_of_occurence:[''],
      stopping_or_increasing_action_responds_to_a_sudden_loud_noise_age_at_the_confirmed:[''],
      stopping_or_increasing_action_responds_to_a_sudden_loud_noise_status_of_the_officer:[''],
      sounds_like_a_e_in_response_to_stimulus_age_at_the_time_of_occurence:[''],
      sounds_like_a_e_in_response_to_stimulus_age_at_the_confirmed:[''],
      sounds_like_a_e_in_response_to_stimulus_status_of_the_officer:[''],
      the_mother_recognize_and_smiles_age_at_the_time_of_occurence:[''],
      the_mother_recognize_and_smiles_age_at_the_confirmed:[''],
      the_mother_recognize_and_smiles_status_of_the_officer:[''], 

      raise_the_head_chest_while_standing_up_age_at_the_time_of_occurence:[''],
      raise_the_head_chest_while_standing_up_age_at_the_confirmed:[''],
      raise_the_head_chest_while_standing_up_status_of_the_officer:[''],
      they_play_when_crossing_fingers_age_at_the_time_of_occurence:[''],
      they_play_when_crossing_fingers_age_at_the_confirmed:[''],
      they_play_when_crossing_fingers_status_of_the_officer:[''],
      streching_his_hands_toward_something_he_hold_it_with_his_whole_hand_age_at_the_time_of_occurence:[''],
      streching_his_hands_toward_something_he_hold_it_with_his_whole_hand_age_at_the_confirmed:[''],
      streching_his_hands_toward_something_he_hold_it_with_his_whole_hand_status_of_the_officer:[''],
      when_heard_a_sound_he_turn_his_head_toward_that_age_at_the_time_of_occurence:[''],
      when_heard_a_sound_he_turn_his_head_toward_that_age_at_the_confirmed:[''],
      when_heard_a_sound_he_turn_his_head_toward_that_status_of_the_officer:[''],
      emits_single_letter_sounds_age_at_the_time_of_occurence:[''],
      emits_single_letter_sounds_age_at_the_confirmed:[''],
      emits_single_letter_sounds_status_of_the_officer:[''],
      smiles_loudely_age_at_the_time_of_occurence:[''],
      smiles_loudely_age_at_the_confirmed:[''],
      smiles_loudely_status_of_the_officer:[''],   

      lie_your_hips_and_head_up_age_at_the_time_of_occurence:[''],
      lie_your_hips_and_head_up_age_at_the_confirmed:[''],
      lie_your_hips_and_head_up_status_of_the_officer:[''],
      turn_back_again_and_again_age_at_the_time_of_occurence:[''],
      turn_back_again_and_again_age_at_the_confirmed:[''],
      turn_back_again_and_again_status_of_the_officer:[''],
      change_something_another_hand_to_other_hand_age_at_the_time_of_occurence:[''],
      change_something_another_hand_to_other_hand_age_at_the_confirmed:[''],
      change_something_another_hand_to_other_hand_status_of_the_officer:[''],
      some_sounds_are_repeated_age_at_the_time_of_occurence:[''],
      some_sounds_are_repeated_age_at_the_confirmed:[''],
      some_sounds_are_repeated_status_of_the_officer:[''],

      siting_without_help_age_at_the_time_of_occurence:[''],
      siting_without_help_age_at_the_confirmed:[''],
      siting_without_help_status_of_the_officer:[''],
      holding_himself_alone_age_at_the_time_of_occurence:[''],
      holding_himself_alone_age_at_the_confirmed:[''],
      holding_himself_alone_status_of_the_officer:[''],
      holding_small_things_using_thumb_And_forefinger_age_at_the_time_of_occurence:[''],
      holding_small_things_using_thumb_And_forefinger_age_at_the_confirmed:[''],
      holding_small_things_using_thumb_And_forefinger_status_of_the_officer:[''],
      following_voice_age_at_the_time_of_occurence:[''],
      following_voice_age_at_the_confirmed:[''],
      following_voice_status_of_the_officer:[''],
      pronounce_individual_words_makes_sounds_that_make_sense_age_at_the_time_of_occurence:[''],
      pronounce_individual_words_makes_sounds_that_make_sense_age_at_the_confirmed:[''],
      pronounce_individual_words_makes_sounds_that_make_sense_status_of_the_officer:[''],
      understand_simple_instructions_age_at_the_time_of_occurence:[''],
      understand_simple_instructions_age_at_the_confirmed:[''],
      understand_simple_instructions_status_of_the_officer:[''], 

      walking_with_help_age_at_the_time_of_occurence:[''],
      walking_with_help_age_at_the_confirmed:[''],
      walking_with_help_status_of_the_officer:[''],
      they_can_speak_At_least_two_or_three_words_age_at_the_time_of_occurence:[''],
      they_can_speak_At_least_two_or_three_words_age_at_the_confirmed:[''],
      they_can_speak_At_least_two_or_three_words_status_of_the_officer:[''],
      hand_is_pointed_out_when_hearing_familiar_things_age_at_the_time_of_occurence:[''],
      hand_is_pointed_out_when_hearing_familiar_things_age_at_the_confirmed:[''],
      hand_is_pointed_out_when_hearing_familiar_things_status_of_the_officer:[''],
      they_can_roll_a_boll_age_at_the_time_of_occurence:[''],
      they_can_roll_a_boll_age_at_the_confirmed:[''],
      they_can_roll_a_boll_status_of_the_officer:[''],
      can_identify_at_least_one_body_part_age_at_the_time_of_occurence:[''],
      can_identify_at_least_one_body_part_age_at_the_confirmed:[''],
      can_identify_at_least_one_body_part_status_of_the_officer:[''],

      walking_without_help_age_at_the_time_of_occurence:[''],
      walking_without_help_age_at_the_confirmed:[''],
      walking_without_helpstatus_of_the_officer:[''],
      can_climb_the_stair_with_help_age_at_the_time_of_occurence:[''],
      can_climb_the_stair_with_help_age_at_the_confirmed:[''],
      can_climb_the_stair_with_help_status_of_the_officer:[''],
      can_make_a_tower_using_building_blocks_age_at_the_time_of_occurence:[''],
      can_make_a_tower_using_building_blocks_age_at_the_confirmed:[''],
      can_make_a_tower_using_building_blocks_status_of_the_officer:[''],
      eat_himself_alone_age_at_the_time_of_occurence:[''],
      eat_himself_alone_age_at_the_confirmed:[''],
      eat_himself_alone_status_of_the_officer:[''],
      can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words_age_at_the_time_of_occurence:[''],
      can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words_age_at_the_confirmed:[''],
      can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words_status_of_the_officer:[''],
      the_lips_are_sharpened_to_kiss_age_at_the_time_of_occurence:[''],
      the_lips_are_sharpened_to_kiss_age_at_the_confirmed:[''],
      the_lips_are_sharpened_to_kiss_status_of_the_officer:[''],

      ability_to_run_without_falling_age_at_the_time_of_occurence:[''],
      ability_to_run_without_falling_age_at_the_confirmed:[''],
      ability_to_run_without_falling_status_of_the_officer:[''],
      ability_to_down_and_up_stair_age_at_the_time_of_occurence:[''],
      ability_to_down_and_up_stair_age_at_the_confirmed:[''],
      ability_to_down_and_up_stair_status_of_the_officer:[''],
      can_copy_an_art_with_a_circle_age_at_the_time_of_occurence:[''],
      can_copy_an_art_with_a_circle_age_at_the_confirmed:[''],
      can_copy_an_art_with_a_circle_status_of_the_officer:[''],
      can_create_a_sentence_with_three_or_more_words_age_at_the_time_of_occurence:[''],
      can_create_a_sentence_with_three_or_more_words_age_at_the_confirmed:[''],
      can_create_a_sentence_with_three_or_more_words_status_of_the_officer:[''],

         //child health form 1st month
      one_month_date_of_clinics:[''],
      one_month_change_of_eye_size:[''],
      one_month_squint:[''],
      one_month_cataract:[''],
      one_month_impairment_of_eye_movement:[''],
      one_month_hearing_left:[''],
      one_month_hearing_right:[''],
      one_month_development_weight:[''],
      one_month_development_height:[''],
      one_month_heart_disease:[''],
      one_month_lungs:[''],
      one_month_hip_joint:[''],
      one_month_inheited_problems:[''],
      one_month_other_diseases:[''],
      one_month_designation_of_officer:[''],

            //child health form 2nd month
      two_month_date_of_clinics:[''],
      two_month_change_of_eye_size:[''],
      two_month_squint:[''],
      two_month_cataract:[''],
      two_month_impairment_of_eye_movement:[''],
      two_month_hearing_left:[''],
      two_month_hearing_right:[''],
      two_month_development_weight:[''],
      two_month_development_height:[''],
      two_month_heart_disease:[''],
      two_month_lungs:[''],
      two_month_hip_joint:[''],
      two_month_inheited_problems:[''],
      two_month_other_diseases:[''],
      two_month_designation_of_officer:[''],
              
            //child health form 4th month
      four_month_date_of_clinics:[''],
      four_month_change_of_eye_size:[''],
      four_month_squint:[''],
      four_month_cataract:[''],
      four_month_impairment_of_eye_movement:[''],
      four_month_hearing_left:[''],
      four_month_hearing_right:[''],
      four_month_development_weight:[''],
      four_month_development_height:[''],
      four_month_heart_disease:[''],
      four_month_lungs:[''],
      four_month_hip_joint:[''],
      four_month_inheited_problems:[''],
      four_month_other_diseases:[''],
      four_month_designation_of_officer:[''],

            //child health form 6th month
      six_month_date_of_clinics:[''],
      six_month_change_of_eye_size:[''],
      six_month_squint:[''],
      six_month_cataract:[''],
      six_month_impairment_of_eye_movement:[''],
      six_month_hearing_left:[''],
      six_month_hearing_right:[''],
      six_month_development_weight:[''],
      six_month_development_height:[''],
      six_month_heart_disease:[''],
      six_month_lungs:[''],
      six_month_hip_joint:[''],
      six_month_inheited_problems:[''],
      six_month_other_diseases:[''],
      six_month_designation_of_officer:[''],
      six_month_dental_caries_white_brown_spots:[''],
      six_month_dental_caries_dental_cavities:[''],

            //child health form 9th month
      nine_month_date_of_clinics:[''],
      nine_month_change_of_eye_size:[''],
      nine_month_squint:[''],
      nine_month_cataract:[''],
      nine_month_impairment_of_eye_movement:[''],
      nine_month_hearing_left:[''],
      nine_month_hearing_right:[''],
      nine_month_development_weight:[''],
      nine_month_development_height:[''],
      nine_month_heart_disease:[''],
      nine_month_lungs:[''],
      nine_month_hip_joint:[''],
      nine_month_inheited_problems:[''],
      nine_month_other_diseases:[''],
      nine_month_designation_of_officer:[''],
      nine_month_dental_caries_white_brown_spots:[''],
      nine_month_dental_caries_dental_cavities:[''],

            //child health form 12th month
      twelve_month_date_of_clinics:[''],
      twelve_month_change_of_eye_size:[''],
      twelve_month_squint:[''],
      twelve_month_cataract:[''],
      twelve_month_impairment_of_eye_movement:[''],
      twelve_month_hearing_left:[''],
      twelve_month_hearing_right:[''],
      twelve_month_development_weight:[''],
      twelve_month_development_height:[''],
      twelve_month_heart_disease:[''],
      twelve_month_lungs:[''],
      twelve_month_hip_joint:[''],
      twelve_month_inheited_problems:[''],
      twelve_month_other_diseases:[''],
      twelve_month_designation_of_officer:[''],
      twelve_month_dental_caries_white_brown_spots:[''],
      twelve_month_dental_caries_dental_cavities:[''],

            //child health form 18th month
      eighteen_month_date_of_clinics:[''],
      eighteen_month_change_of_eye_size:[''],
      eighteen_month_squint:[''],
      eighteen_month_cataract:[''],
      eighteen_month_impairment_of_eye_movement:[''],
      eighteen_month_hearing_left:[''],
      eighteen_month_hearing_right:[''],
      eighteen_month_development_weight:[''],
      eighteen_month_development_height:[''],
      eighteen_month_heart_disease:[''],
      eighteen_month_lungs:[''],
      eighteen_month_hip_joint:[''],
      eighteen_month_inheited_problems:[''],
      eighteen_month_other_diseases:[''],
      eighteen_month_designation_of_officer:[''],
      eighteen_month_dental_caries_white_brown_spots:[''],
      eighteen_month_dental_caries_dental_cavities:[''],
                
            //child health form 3rd year
      three_year_date_of_clinics:[''],
      three_year_change_of_eye_size:[''],
      three_year_squint:[''],
      three_year_cataract:[''],
      three_year_impairment_of_eye_movement:[''],
      three_year_night_blindness:[''],
      three_year_bito_spots:[''],
      three_year_hearing_left:[''],
      three_year_hearing_right:[''],
      three_year_development_weight:[''],
      three_year_development_height:[''],
      three_year_heart_disease:[''],
      three_year_lungs:[''],
      three_year_hip_joint:[''],
      three_year_inheited_problems:[''],
      three_year_other_diseases:[''],
      three_year_designation_of_officer:[''],
      three_year_dental_caries_white_brown_spots:[''],
      three_year_dental_caries_dental_cavities:[''],
            
            //child health form 4th year
      four_year_date_of_clinics:[''],
      four_year_change_of_eye_size:[''],
      four_year_squint:[''],
      four_year_cataract:[''],
      four_year_impairment_of_eye_movement:[''],
      four_year_night_blindness:[''],
      four_year_bito_spots:[''],
      four_year_hearing_left:[''],
      four_year_hearing_right:[''],
      four_year_development_weight:[''],
      four_year_development_height:[''],
      four_year_heart_disease:[''],
      four_year_lungs:[''],
      four_year_hip_joint:[''],
      four_year_inheited_problems:[''],
      four_year_other_diseases:[''],
      four_year_designation_of_officer:[''],
      four_year_dental_caries_white_brown_spots:[''],
      four_year_dental_caries_dental_cavities:[''],

            //child health form 5th year
      five_year_date_of_clinics:[''],
      five_year_change_of_eye_size:[''],
      five_year_squint:[''],
      five_year_cataract:[''],
      five_year_impairment_of_eye_movement:[''],
      five_year_sight_left:[''],
      five_year_sight_right:[''],
      five_year_night_blindness:[''],
      five_year_bito_spots:[''],
      five_year_hearing_left:[''],
      five_year_hearing_right:[''],
      five_year_development_weight:[''],
      five_year_development_height:[''],
      five_year_heart_disease:[''],
      five_year_lungs:[''],
      five_year_hip_joint:[''],
      five_year_inheited_problems:[''],
      five_year_other_diseases:[''],
      five_year_designation_of_officer:[''],
      five_year_dental_caries_white_brown_spots:[''],
      five_year_dental_caries_dental_cavities:[''],

      //Doctors Notes
      date_of_checked: [''],
      special_notice: [''],
      
      //to check teeth for mothers
      six_Number_of_teeth:[''],
      six_status:[''],
      six_date:[''],
      seven_Number_of_teeth:[''],
      seven_status:[''],
      seven_date:[''],
      eight_Number_of_teeth:[''],
      eight_status:[''],
      eight_date:[''],
      nine_Number_of_teeth:[''],
      nine_status:[''],
      nine_date:[''],
      ten_Number_of_teeth:[''],
      ten_status:[''],
      ten_date:[''],
      eleven_Number_of_teeth:[''],
      eleven_status:[''],
      eleven_date:[''],
      twelve_Number_of_teeth:[''],
      twelve_status:[''],
      twelve_date:[''],
      thirteen_Number_of_teeth:[''],
      thirteen_status:[''],
      thirteen_date:[''],
      fouteen_Number_of_teeth:[''],
      fouteen_status:[''],
      fouteen_date:[''],
      fifteen_Number_of_teeth:[''],
      fifteen_status:[''],
      fifteen_date:[''],
      sixteen_Number_of_teeth:[''],
      sixteen_status:[''],
      sixteen_date:[''],
      seventeen_Number_of_teeth:[''],
      seventeen_status:[''],
      seventeen_date:[''],
      eighteen_Number_of_teeth:[''],
      eighteen_status:[''],
      eighteen_date:[''],

       //Hospital admits
      admit_date:[''],
      reason_of_admit:[''],
      about_disease:[''],
      referalls:['']
      });

      this.addbabyService.getbabydata(this.babyID).subscribe(data => {
        this.DOB =  this.dateconverter(data[0] ['date_of_birth_of_child'])
        this.BabyForm.patchValue({
          
          baby_id: data[0] ['baby_id'],
      name_of_child: data[0] ['name_of_child'],
      date_of_birth_of_child: this.dateconverter(data[0] ['date_of_birth_of_child']),
      date_of_registered: this.dateconverter( data[0] ['date_of_registered']),
      name_of_mother: data[0] ['name_of_mother'],
      age_of_mother: data[0] ['age_of_mother'],
      address: data[0] ['address'],
      Number_of_apgas_1m: data[0] ['Number_of_apgas_1m'],
      Number_of_apgas_5m: data[0] ['Number_of_apgas_5m'],
      Number_of_apgas_10m: data[0] ['Number_of_apgas_10m'],
      total_Number_of_children_alive_including_this_child: data[0] ['total_Number_of_children_alive_including_this_child'],
      method_of_delivery:data[0] ['method_of_delivery'],
      birth_weight: data[0] ['birth_weight'],
      gridle_circumference_at_birth: data[0] ['gridle_circumference_at_birth'],
      length_of_baby_at_birth: data[0] ['length_of_baby_at_birth'],
      weight_in_discharge_from_hospital: data[0] ['weight_in_discharge_from_hospital'],
      K_vitamine: data[0] ['K_vitamine'],
      breast_feeding_breast_feeding_during_the_first_hour:data[0] ['breast_feeding_breast_feeding_during_the_first_hour'], 
      breast_feeding_unstability: data[0] ['breast_feeding_unstability'],
      breast_feeding_connection: data[0] ['breast_feeding_connection'],
      does_check_congenital_hypothyroidism: data[0] ['does_check_congenital_hypothyroidism'],
      premature_births_status: data[0] ['premature_births_status'],
      premature_births_date: this.dateconverter(data[0] ['premature_births_date']),
      low_birth_weight_status: data[0] ['low_birth_weight_status'],
      low_birth_weight_date: this.dateconverter(data[0] ['low_birth_weight_date']),  
      neonatal_abnomalities_status: data[0] ['neonatal_abnomalities_status'],
      neonatal_abnomalities_date: this.dateconverter(data[0] ['neonatal_abnomalities_date']),
      inherited_problems_status: data[0] ['inherited_problems_status'],
      inherited_problems_date: this.dateconverter(data[0] ['inherited_problems_date']),
      congenital_hypothyroidism_state: data[0] ['congenital_hypothyroidism_state'],
      congenital_hypothyroidism_date: this.dateconverter(data[0] ['congenital_hypothyroidism_date']),  
      server_illness_of_the_mother_after_delivery_status: data[0] ['server_illness_of_the_mother_after_delivery_status'],
      server_illness_of_the_mother_after_delivery_date: this.dateconverter(data[0] ['server_illness_of_the_mother_after_delivery_date']),
      breastfeeding_at_first_six_months_status: data[0] ['breastfeeding_at_first_six_months_status'],
      breastfeeding_at_first_six_months_date: this.dateconverter(data[0] ['breastfeeding_at_first_six_months_date']),
      impairments_of_growth_status: data[0] ['impairments_of_growth_status'],
      impairments_of_growth_date: this.dateconverter(data[0] ['impairments_of_growth_date']),
      death_of_mother_or_father_status: data[0] ['death_of_mother_or_father_status'],
      death_of_mother_or_father_date: this.dateconverter(data[0] ['death_of_mother_or_father_date']),
      separation_or_depature_of_mother_or_father_status: data[0] ['separation_or_depature_of_mother_or_father_status'],
      separation_or_depature_of_mother_or_father_date: this.dateconverter(data[0] ['separation_or_depature_of_mother_or_father_date']), 
      other_status: data[0] ['other_status'],
      other_date: this.dateconverter(data[0] ['other_date']),
        
      //second page
      second_date: this.dateconverter(data[0] ['second_date']),
      maturaty_of_baby_weeks: data[0] ['maturaty_of_baby_weeks'],
      baby_growth:data[0] ['baby_growth'],
      blood_group_of_baby: data[0] ['blood_group_of_baby'],

      peripheries_pink_and_warm_noraml: data[0] ['peripheries_pink_and_warm_noraml'],
      peripheries_pink_and_warm_abnormal: data[0] ['peripheries_pink_and_warm_abnormal'],
      hydration_normal: data[0] ['hydration_normal'],
      hydration_abnormal: data[0] ['hydration_abnormal'],
      response_to_hnadling_normal: data[0] ['response_to_hnadling_normal'],
      response_to_hnadling_abnormal: data[0] ['response_to_hnadling_abnormal'],
      capillary_refilling_time_normal: data[0] ['capillary_refilling_time_normal'],
      capillary_refilling_time_abnormal: data[0] ['capillary_refilling_time_abnormal'],
      pulse_rate_or_volume_normal: data[0] ['pulse_rate_or_volume_normal'],
      pulse_rate_or_volume_abnormal: data[0] ['pulse_rate_or_volume_abnormal'],
      heart_murmurs_normal: data[0] ['heart_murmurs_normal'],
      heart_murmurs_abnormal: data[0] ['heart_murmurs_abnormal'],
      femoral_pulse_normal: data[0] ['femoral_pulse_normal'],
      femoral_pulse_abnormal: data[0] ['femoral_pulse_abnormal'],
      respiratory_rate_normal: data[0] ['respiratory_rate_normal'],
      respiratory_rate_abnormal: data[0] ['respiratory_rate_abnormal'],
      grunting_normal: data[0] ['grunting_normal'],
      grunting_abnormal: data[0] ['grunting_abnormal'],
      intercostal_or_subcostal_recession_normal: data[0] ['intercostal_or_subcostal_recession_normal'],
      intercostal_or_subcostal_recession_abnormal: data[0] ['intercostal_or_subcostal_recession_abnormal'],
      tone_normal: data[0] ['tone_normal'],
      tone_abnormal: data[0] ['tone_abnormal'],
      OFC_normal: data[0] ['OFC_normal'],
      OFC_abnormal: data[0] ['OFC_abnormal'], 
      fontamelle_or_suture_line_normal: data[0] ['fontamelle_or_suture_line_normal'],
      fontamelle_or_suture_line_abnormal: data[0] ['fontamelle_or_suture_line_abnormal'], 
      eyes_or_red_reflex_normal: data[0] ['eyes_or_red_reflex_normal'],
      eyes_or_red_reflex_abnormal: data[0] ['eyes_or_red_reflex_abnormal'],
      scalp_normal: data[0] ['scalp_normal'],
      scalp_abnormal: data[0] ['scalp_abnormal'],
      mouth_lips_normal: data[0] ['mouth_lips_normal'],
      mouth_lips_abnormal: data[0] ['mouth_lips_abnormal'],
      palate_normal: data[0] ['palate_normal'],
      palate_abnormal: data[0] ['palate_abnormal'],
      ears_normal: data[0] ['ears_normal'],
      ears_abnormal: data[0] ['ears_abnormal'],
      abdomen_normal: data[0] ['abdomen_normal'],
      abdomen_abnormal: data[0] ['abdomen_abnormal'],
      umbilicus_normal: data[0] ['umbilicus_normal'],
      umbilicus_abnormal: data[0] ['umbilicus_abnormal'],
      genitalia_normal: data[0] ['genitalia_normal'],
      genitalia_abnormal: data[0] ['genitalia_abnormal'],
      anus_normal: data[0] ['anus_normal'],
      anus_abnormal: data[0] ['anus_abnormal'],
      hips_normal: data[0] ['hips_normal'],
      hips_abnormal: data[0] ['hips_abnormal'],
      spine_normal: data[0] ['spine_normal'],
      spine_abnormal: data[0] ['spine_abnormal'],
      limbs_normal: data[0] ['limbs_normal'],
      limbs_abnormal: data[0] ['limbs_abnormal'],
      dysmorphic_featurse_normal: data[0] ['dysmorphic_featurse_normal'],
      dysmorphic_featurse_abnormal: data[0] ['dysmorphic_featurse_abnormal'],
      superficial_infection_skin_normal: data[0] ['superficial_infection_skin_normal'],
      superficial_infection_skin_abnormal: data[0] ['superficial_infection_skin_abnormal'],
      birth_injuries_normal: data[0] ['birth_injuries_normal'],
      birth_injuries_abnormal: data[0] ['birth_injuries_abnormal'],
      
      other_abnomalities: data[0] ['other_abnomalities'],
      action_taken:data[0] ['action_taken'],
      diagnosis_of_discharge: data[0] ['diagnosis_of_discharge'],
      date_of_discharge: this.dateconverter(data[0] ['date_of_discharge']),

      //third page
      
      ten_days_from_birth_one_five_days_date: this.dateconverter(data[0] ['ten_days_from_birth_one_five_days_date']),
      six_ten_days_date:this.dateconverter(data[0] ['six_ten_days_date']),
      //fourteen_twentytwo_days_date:data[0] ['fourteen_twentytwo_days_date'],
      fourtytwo_days_date: this.dateconverter(data[0] ['fourtytwo_days_date']),

      color_of_skin_ten_days_from_birth_one_five_days_status: data[0] ['color_of_skin_ten_days_from_birth_one_five_days_status'],
      color_of_skin_six_ten_days_status: data[0] ['color_of_skin_six_ten_days_status'],
      color_of_skin_fourteen_twentytwo_days_status: data[0] ['color_of_skin_fourteen_twentytwo_days_status'],
      color_of_skin_fourtytwo_days_status: data[0] ['color_of_skin_fourtytwo_days_status'],

      eyes_ten_days_from_birth_one_five_days_status: data[0] ['eyes_ten_days_from_birth_one_five_days_status'],
      eyes_six_ten_days_status: data[0] ['eyes_six_ten_days_status'],
      eyes_fourteen_twentytwo_days_status: data[0] ['eyes_fourteen_twentytwo_days_status'],
      eyes_fourtytwo_days_status: data[0] ['eyes_fourtytwo_days_status'],

      the_native_of_lobbyists_ten_days_from_birth_one_five_days_status: data[0] ['the_native_of_lobbyists_ten_days_from_birth_one_five_days_status'],
      the_native_of_lobbyists_six_ten_days_status: data[0] ['the_native_of_lobbyists_six_ten_days_status'],
      the_native_of_lobbyists_fourteen_twentytwo_days_status: data[0] ['the_native_of_lobbyists_fourteen_twentytwo_days_status'],
      the_native_of_lobbyists_fourtytwo_days_status: data[0] ['the_native_of_lobbyists_fourtytwo_days_status'],

      tempreture_ten_days_from_birth_one_five_days_status: data[0] ['tempreture_ten_days_from_birth_one_five_days_status'],
      tempreture_six_ten_days_status: data[0] ['tempreture_six_ten_days_status'],
      tempreture_fourteen_twentytwo_days_status: data[0] ['tempreture_fourteen_twentytwo_days_status'],
      tempreture_fourtytwo_days_status: data[0] ['tempreture_fourtytwo_days_status'],

      only_breastfeeding_ten_days_from_birth_one_five_days_status: data[0] ['only_breastfeeding_ten_days_from_birth_one_five_days_status'],
      only_breastfeeding_six_ten_days_status: data[0] ['only_breastfeeding_six_ten_days_status'],
      only_breastfeeding_fourteen_twentytwo_days_status: data[0] ['only_breastfeeding_fourteen_twentytwo_days_status'],
      only_breastfeeding_fourtytwo_days_status: data[0] ['only_breastfeeding_fourtytwo_days_status'],

      breastfeeding_stability_ten_days_from_birth_one_five_days_status: data[0] ['breastfeeding_stability_ten_days_from_birth_one_five_days_status'],
      breastfeeding_stability_six_ten_days_status: data[0] ['breastfeeding_stability_six_ten_days_status'],
      breastfeeding_stability_fourteen_twentytwo_days_status: data[0] ['breastfeeding_stability_fourteen_twentytwo_days_status'],
      breastfeeding_stability_fourtytwo_days_status: data[0] ['breastfeeding_stability_fourtytwo_days_status'],

      breastfeeding_connection_ten_days_from_birth_one_five_days_status: data[0] ['breastfeeding_connection_ten_days_from_birth_one_five_days_status'],
      breastfeeding_connection_six_ten_days_status: data[0] ['breastfeeding_connection_six_ten_days_status'],
      breastfeeding_connection_fourteen_twentytwo_days_status: data[0] ['breastfeeding_connection_fourteen_twentytwo_days_status'],
      breastfeeding_connection_fourtytwo_days_status: data[0] ['breastfeeding_connection_fourtytwo_days_status'],

      other_ten_days_from_birth_one_five_days_status: data[0] ['other_ten_days_from_birth_one_five_days_status'],
      other_six_ten_days_status: data[0] ['other_six_ten_days_status'],
      other_fourteen_twentytwo_days_status: data[0] ['other_fourteen_twentytwo_days_status'],
      other_fourtytwo_days_status: data[0] ['other_fourtytwo_days_status'],

      //vaccine page
      b_c_g_date: this.dateconverter(data[0] ['b_c_g_date']),
      b_c_g_batch_no:data[0] ['b_c_g_batch_no'],
      b_c_g_effects_of_immunization:data[0] ['b_c_g_effects_of_immunization'],
      b_c_g_b_c_g_scar: data[0] ['b_c_g_b_c_g_scar'],

      b_c_g_second_dose_date: this.dateconverter(data[0] ['b_c_g_second_dose_date']),
      b_c_g_second_dose_batch_no:data[0] ['b_c_g_second_dose_batch_no'],
      b_c_g_second_dose_effects_of_immunization:data[0] ['b_c_g_second_dose_effects_of_immunization'],

      pentavalent_one_date: this.dateconverter(data[0] ['pentavalent_one_date']),
      pentavalent_one_batch_no:data[0] ['pentavalent_one_batch_no'],
      pentavalent_one_effects_of_immunization:data[0] ['pentavalent_one_effects_of_immunization'],

      opv_one_date: this.dateconverter(data[0] ['opv_one_date']),
      opv_one_batch_no:data[0] ['opv_one_batch_no'],
      opv_one_effects_of_immunization:data[0] ['opv_one_effects_of_immunization'],

      pentavalent_two_date: this.dateconverter(data[0] ['pentavalent_two_date']),
      pentavalent_two_batch_no:data[0] ['pentavalent_two_batch_no'],
      pentavalent_two_effects_of_immunization:data[0] ['pentavalent_two_effects_of_immunization'],

      opv_two_date: this.dateconverter(data[0] ['opv_two_date']),
      opv_two_batch_no:data[0] ['opv_two_batch_no'],
      opv_two_effects_of_immunization:data[0] ['opv_two_effects_of_immunization'],

      pentavalent_three_date: this.dateconverter(data[0] ['pentavalent_three_date']),
      pentavalent_three_batch_no:data[0] ['pentavalent_three_batch_no'],
      pentavalent_three_effects_of_immunization:data[0] ['pentavalent_three_effects_of_immunization'],

      opv_three_date: this.dateconverter(data[0] ['opv_three_date']),
      opv_three_batch_no:data[0] ['opv_three_batch_no'],
      opv_three_effects_of_immunization:data[0] ['opv_three_effects_of_immunization'],
      
      live_je_date: this.dateconverter(data[0] ['live_je_date']),
      live_je_batch_no:data[0] ['live_je_batch_no'],
      live_je_effects_of_immunization:data[0] ['live_je_effects_of_immunization'],

      measules_mumps_rubella_date: this.dateconverter(data[0] ['measules_mumps_rubella_date']),
      measules_mumps_rubella_batch_no:data[0] ['measules_mumps_rubella_batch_no'],
      measules_mumps_rubella_effects_of_immunization:data[0] ['measules_mumps_rubella_effects_of_immunization'],

      dpt_date: this.dateconverter(data[0] ['dpt_date']),
      dpt_batch_no:data[0] ['dpt_batch_no'],
      dpt_effects_of_immunization:data[0] ['dpt_effects_of_immunization'],

      opv_four_date: this.dateconverter(data[0] ['opv_four_date']),
      opv_four_batch_no:data[0] ['opv_four_batch_no'],
      opv_four_effects_of_immunization:data[0] ['opv_four_effects_of_immunization'],

      measules_rubella_two_date: this.dateconverter(data[0] ['measules_rubella_two_date']),
      measules_rubella_two_batch_no:data[0] ['measules_rubella_two_batch_no'],
      measules_rubella_two_effects_of_immunization:data[0] ['measules_rubella_two_effects_of_immunization'],
   
      d_t_date: this.dateconverter(data[0] ['d_t_date']),
      d_t_batch_no:data[0] ['d_t_batch_no'],
      d_t_effects_of_immunization:data[0] ['d_t_effects_of_immunization'],

      opv_five_date: this.dateconverter(data[0] ['opv_five_date']),
      opv_five_batch_no:data[0] ['opv_five_batch_no'],
      opv_five_effects_of_immunization:data[0] ['opv_five_effects_of_immunization'],

      adult_tatanus_diphtheria_date: this.dateconverter(data[0] ['adult_tatanus_diphtheria_date']),
      adult_tatanus_diphtheria_batch_no:data[0] ['adult_tatanus_diphtheria_batch_no'],
      adult_tatanus_diphtheria_effects_of_immunization:data[0] ['adult_tatanus_diphtheria_effects_of_immunization'],

      other_vaccine_date: this.dateconverter(data[0] ['other_vaccine_date']),
      other_batch_no:data[0] ['other_batch_no'],
      other_effects_of_immunization:data[0] ['other_effects_of_immunization'],
      
      //9th page
      date_of_refferals: this.dateconverter(data[0] ['date_of_refferals']),
      reason_for_referrals: data[0] ['reason_for_referrals'],
      place_for_referrals: data[0] ['place_for_referrals'],
      notes_on_back: data[0] ['notes_on_back'],
      //vitamine
      A_vitamine_six_month_date: this.dateconverter(data[0] ['A_vitamine_six_month_date']),
      A_vitamine_six_month_batch_no:data[0] ['A_vitamine_six_month_batch_no'],
      A_vitamine_one_year_date: this.dateconverter(data[0] ['A_vitamine_one_year_date']),
      A_vitamine_one_year_batch_no:data[0] ['A_vitamine_one_year_batch_no'],
      A_vitamine_one_half_year_date: this.dateconverter(data[0] ['A_vitamine_one_half_year_date']),
      A_vitamine_one_half_year_batch_no:data[0] ['A_vitamine_one_half_year_batch_no'],
      A_vitamine_two_year_date: this.dateconverter(data[0] ['A_vitamine_two_year_date']),
      A_vitamine_two_year_batch_no:data[0] ['A_vitamine_two_year_batch_no'],
   
      A_vitamine_two_half_year_date: this.dateconverter(data[0] ['A_vitamine_two_half_year_date']),
      A_vitamine_two_half_year_batch_no:data[0] ['A_vitamine_two_half_year_batch_no'],
  
      A_vitamine_three_year_date: this.dateconverter(data[0] ['A_vitamine_three_year_date']),
      A_vitamine_three_year_batch_no:data[0] ['A_vitamine_three_year_batch_no'],
   
      A_vitamine_three_half_year_date: this.dateconverter(data[0] ['A_vitamine_three_half_year_date']),
      A_vitamine_three_half_year_batch_no:data[0] ['A_vitamine_three_half_year_batch_no'],
   
      A_vitamine_four_year_date: this.dateconverter(data[0] ['A_vitamine_four_year_date']),
      A_vitamine_four_year_batch_no:data[0] ['A_vitamine_four_year_batch_no'],
   
      A_vitamine_four_half_year_date: this.dateconverter(data[0] ['A_vitamine_four_half_year_date']),
      A_vitamine_four_half_year_batch_no:data[0] ['A_vitamine_four_half_year_batch_no'],
   
      A_vitamine_five_year_date: this.dateconverter(data[0] ['A_vitamine_five_year_date']),
      A_vitamine_five_year_batch_no:data[0] ['A_vitamine_five_year_batch_no'],

      //warm treat
      warm_treat_one_year_date: this.dateconverter(data[0] ['warm_treat_one_year_date']),
      warm_treat_one_year_batch_no:data[0] ['warm_treat_one_year_batch_no'],
      warm_treat_one_half_year_date: this.dateconverter(data[0] ['warm_treat_one_half_year_date']),
      warm_treat_one_half_year_batch_no:data[0] ['warm_treat_one_half_year_batch_no'],
      warm_treat_two_year_date: this.dateconverter(data[0] ['warm_treat_two_year_date']),
      warm_treat_two_year_batch_no:data[0] ['warm_treat_two_year_batch_no'],
   
      warm_treat_two_half_year_date: this.dateconverter(data[0] ['warm_treat_two_half_year_date']),
      warm_treat_two_half_year_batch_no:data[0] ['warm_treat_two_half_year_batch_no'],
  
      warm_treat_three_year_date: this.dateconverter(data[0] ['warm_treat_three_year_date']),
      warm_treat_three_year_batch_no:data[0] ['warm_treat_three_year_batch_no'],
   
      warm_treat_three_half_year_date: this.dateconverter(data[0] ['warm_treat_three_half_year_date']),
      warm_treat_three_half_year_batch_no:data[0] ['warm_treat_three_half_year_batch_no'],
   
      warm_treat_four_year_date: this.dateconverter(data[0] ['warm_treat_four_year_date']),
      warm_treat_four_year_batch_no:data[0] ['warm_treat_four_year_batch_no'],
   
      warm_treat_four_half_year_date: this.dateconverter(data[0] ['warm_treat_four_half_year_date']),
      warm_treat_four_half_year_batch_no:data[0] ['warm_treat_four_half_year_batch_no'],
   
      warm_treat_five_year_date: this.dateconverter(data[0] ['warm_treat_five_year_date']),
      warm_treat_five_year_batch_no:data[0] ['warm_treat_five_year_batch_no'],

      //for mothers to check see
      does_child_eyes_toward_the_light:data[0] ['does_child_eyes_toward_the_light'],
      does_the_child_look_good_on_your_face:data[0] ['does_the_child_look_good_on_your_face'],
      when_you_turn_your_face_to_the_side_do_you_see_the_child_smiling_in_response:data[0] ['when_you_turn_your_face_to_the_side_do_you_see_the_child_smiling_in_response'],
      then_the_baby_eyes_move:data[0] ['then_the_baby_eyes_move'],
      does_the_child_look_arround:data[0] ['does_the_child_look_arround'],
      is_child_streching_out_his_hand_and_tryimg_to_touch_something:data[0] ['is_child_streching_out_his_hand_and_tryimg_to_touch_something'],
      do_you_suspect_that_your_child_has_a_problem:data[0] ['do_you_suspect_that_your_child_has_a_problem'],
      is_it_possible_for_a_child_to_pickup_small_things_with_a_thumb_and_forefinger:data[0] ['is_it_possible_for_a_child_to_pickup_small_things_with_a_thumb_and_forefinger'],
      have_your_child_strech_out_his_hand_and_touch_them:data[0] ['have_your_child_strech_out_his_hand_and_touch_them'],
      if_the_person_identifies_them_the_child_will_recognize_them_before_they_call_them:data[0] ['if_the_person_identifies_them_the_child_will_recognize_them_before_they_call_them'],  

      //for mothers to chcek hearing
      if_your_child_is_startled_by_a_sudden_loud_noise_does_his_stutter_or_widden_his_eyes:data[0] ['if_your_child_is_startled_by_a_sudden_loud_noise_does_his_stutter_or_widden_his_eyes'],
      does_your_child_detect_sudden_or_presistent_noises_and_begin_to_listen_quitely_to_eve:data[0] ['does_your_child_detect_sudden_or_presistent_noises_and_begin_to_listen_quitely_to_eve'],
      if_they_cant_see_their_mother_do_they_keep_silent_or_laugh_when_their_voice_is_heard:data[0] ['if_they_cant_see_their_mother_do_they_keep_silent_or_laugh_when_their_voice_is_heard'],
      when_the_mother_speaks_from_the_side_or_from_the_back_does_child_turn_his_head_or_eyes:data[0] ['when_the_mother_speaks_from_the_side_or_from_the_back_does_child_turn_his_head_or_eyes'],
      does_child_turn_to_the_mother_side_immediately_after_speaking:data[0] ['does_child_turn_to_the_mother_side_immediately_after_speaking'],
      listen_to_the_familiar_sounds_does_child_hear_everyday:data[0] ['listen_to_the_familiar_sounds_does_child_hear_everyday'],
      does_find_out_about_noises_from_an_unknown_location:data[0] ['does_find_out_about_noises_from_an_unknown_location'],
      does_child_like_it_when_talking_to_a_loud_tune:data[0] ['does_child_like_it_when_talking_to_a_loud_tune'],
      does_he_respond_to_other_familiar_sounds_nd_his_name:data[0] ['does_he_respond_to_other_familiar_sounds_nd_his_name'],
      does_he_respond_to_words_even_when_they_do_not:data[0] ['does_he_respond_to_words_even_when_they_do_not'],

      //child development
      lie_on_his_hips_and_head_up_age_at_the_time_of_occurence:data[0] ['lie_on_his_hips_and_head_up_age_at_the_time_of_occurence'],
      lie_on_his_hips_and_head_up_age_at_the_confirmed:data[0] ['lie_on_his_hips_and_head_up_age_at_the_confirmed'],
      lie_on_his_hips_and_head_up_status_of_the_officer:data[0] ['lie_on_his_hips_and_head_up_status_of_the_officer'],
      something_keeps_moving_from_one_place_to_another_age_at_the_time_of_occurence:data[0] ['something_keeps_moving_from_one_place_to_another_age_at_the_time_of_occurence'],
      something_keeps_moving_from_one_place_to_another_age_at_the_confirmed:data[0] ['something_keeps_moving_from_one_place_to_another_age_at_the_confirmed'],
      something_keeps_moving_from_one_place_to_another_status_of_the_officer:data[0] ['something_keeps_moving_from_one_place_to_another_status_of_the_officer'],
      stopping_or_increasing_action_responds_to_a_sudden_loud_noise_age_at_the_time_of_occurence:data[0] ['stopping_or_increasing_action_responds_to_a_sudden_loud_noise_age_at_the_time_of_occurence'],
      stopping_or_increasing_action_responds_to_a_sudden_loud_noise_age_at_the_confirmed:data[0] ['stopping_or_increasing_action_responds_to_a_sudden_loud_noise_age_at_the_confirmed'],
      stopping_or_increasing_action_responds_to_a_sudden_loud_noise_status_of_the_officer:data[0] ['stopping_or_increasing_action_responds_to_a_sudden_loud_noise_status_of_the_officer'],
      sounds_like_a_e_in_response_to_stimulus_age_at_the_time_of_occurence:data[0] ['sounds_like_a_e_in_response_to_stimulus_age_at_the_time_of_occurence'],
      sounds_like_a_e_in_response_to_stimulus_age_at_the_confirmed:data[0] ['sounds_like_a_e_in_response_to_stimulus_age_at_the_confirmed'],
      sounds_like_a_e_in_response_to_stimulus_status_of_the_officer:data[0] ['sounds_like_a_e_in_response_to_stimulus_status_of_the_officer'],
      the_mother_recognize_and_smiles_age_at_the_time_of_occurence:data[0] ['the_mother_recognize_and_smiles_age_at_the_time_of_occurence'],
      the_mother_recognize_and_smiles_age_at_the_confirmed:data[0] ['the_mother_recognize_and_smiles_age_at_the_confirmed'],
      the_mother_recognize_and_smiles_status_of_the_officer:data[0] ['the_mother_recognize_and_smiles_status_of_the_officer'], 

      raise_the_head_chest_while_standing_up_age_at_the_time_of_occurence:data[0] ['raise_the_head_chest_while_standing_up_age_at_the_time_of_occurence'],
      raise_the_head_chest_while_standing_up_age_at_the_confirmed:data[0] ['raise_the_head_chest_while_standing_up_age_at_the_confirmed'],
      raise_the_head_chest_while_standing_up_status_of_the_officer:data[0] ['raise_the_head_chest_while_standing_up_status_of_the_officer'],
      they_play_when_crossing_fingers_age_at_the_time_of_occurence:data[0] ['they_play_when_crossing_fingers_age_at_the_time_of_occurence'],
      they_play_when_crossing_fingers_age_at_the_confirmed:data[0] ['they_play_when_crossing_fingers_age_at_the_confirmed'],
      they_play_when_crossing_fingers_status_of_the_officer:data[0] ['they_play_when_crossing_fingers_status_of_the_officer'],
      streching_his_hands_toward_something_he_hold_it_with_his_whole_hand_age_at_the_time_of_occurence:data[0] ['streching_his_hands_toward_something_he_hold_it_with_his_whole_hand_age_at_the_time_of_occurence'],
      streching_his_hands_toward_something_he_hold_it_with_his_whole_hand_age_at_the_confirmed:data[0] ['streching_his_hands_toward_something_he_hold_it_with_his_whole_hand_age_at_the_confirmed'],
      streching_his_hands_toward_something_he_hold_it_with_his_whole_hand_status_of_the_officer:data[0] ['streching_his_hands_toward_something_he_hold_it_with_his_whole_hand_status_of_the_officer'],
      when_heard_a_sound_he_turn_his_head_toward_that_age_at_the_time_of_occurence:data[0] ['when_heard_a_sound_he_turn_his_head_toward_that_age_at_the_time_of_occurence'],
      when_heard_a_sound_he_turn_his_head_toward_that_age_at_the_confirmed:data[0] ['when_heard_a_sound_he_turn_his_head_toward_that_age_at_the_confirmed'],
      when_heard_a_sound_he_turn_his_head_toward_that_status_of_the_officer:data[0] ['when_heard_a_sound_he_turn_his_head_toward_that_status_of_the_officer'],
      emits_single_letter_sounds_age_at_the_time_of_occurence:data[0] ['emits_single_letter_sounds_age_at_the_time_of_occurence'],
      emits_single_letter_sounds_age_at_the_confirmed:data[0] ['emits_single_letter_sounds_age_at_the_confirmed'],
      emits_single_letter_sounds_status_of_the_officer:data[0] ['emits_single_letter_sounds_status_of_the_officer'],
      smiles_loudely_age_at_the_time_of_occurence:data[0] ['smiles_loudely_age_at_the_time_of_occurence'],
      smiles_loudely_age_at_the_confirmed:data[0] ['smiles_loudely_age_at_the_confirmed'],
      smiles_loudely_status_of_the_officer:data[0] ['smiles_loudely_status_of_the_officer'],   

      lie_your_hips_and_head_up_age_at_the_time_of_occurence:data[0] ['lie_your_hips_and_head_up_age_at_the_time_of_occurence'],
      lie_your_hips_and_head_up_age_at_the_confirmed:data[0] ['lie_your_hips_and_head_up_age_at_the_confirmed'],
      lie_your_hips_and_head_up_status_of_the_officer:data[0] ['lie_your_hips_and_head_up_status_of_the_officer'],
      turn_back_again_and_again_age_at_the_time_of_occurence:data[0] ['turn_back_again_and_again_age_at_the_time_of_occurence'],
      turn_back_again_and_again_age_at_the_confirmed:data[0] ['turn_back_again_and_again_age_at_the_confirmed'],
      turn_back_again_and_again_status_of_the_officer:data[0] ['turn_back_again_and_again_status_of_the_officer'],
      change_something_another_hand_to_other_hand_age_at_the_time_of_occurence:data[0] ['change_something_another_hand_to_other_hand_age_at_the_time_of_occurence'],
      change_something_another_hand_to_other_hand_age_at_the_confirmed:data[0] ['change_something_another_hand_to_other_hand_age_at_the_confirmed'],
      change_something_another_hand_to_other_hand_status_of_the_officer:data[0] ['change_something_another_hand_to_other_hand_status_of_the_officer'],
      some_sounds_are_repeated_age_at_the_time_of_occurence:data[0] ['some_sounds_are_repeated_age_at_the_time_of_occurence'],
      some_sounds_are_repeated_age_at_the_confirmed:data[0] ['some_sounds_are_repeated_age_at_the_confirmed'],
      some_sounds_are_repeated_status_of_the_officer:data[0] ['some_sounds_are_repeated_status_of_the_officer'],

      siting_without_help_age_at_the_time_of_occurence:data[0] ['siting_without_help_age_at_the_time_of_occurence'],
      siting_without_help_age_at_the_confirmed:data[0] ['siting_without_help_age_at_the_confirmed'],
      siting_without_help_status_of_the_officer:data[0] ['siting_without_help_status_of_the_officer'],
      holding_himself_alone_age_at_the_time_of_occurence:data[0] ['holding_himself_alone_age_at_the_time_of_occurence'],
      holding_himself_alone_age_at_the_confirmed:data[0] ['holding_himself_alone_age_at_the_confirmed'],
      holding_himself_alone_status_of_the_officer:data[0] ['holding_himself_alone_status_of_the_officer'],
      holding_small_things_using_thumb_And_forefinger_age_at_the_time_of_occurence:data[0] ['holding_small_things_using_thumb_And_forefinger_age_at_the_time_of_occurence'],
      holding_small_things_using_thumb_And_forefinger_age_at_the_confirmed:data[0] ['holding_small_things_using_thumb_And_forefinger_age_at_the_confirmed'],
      holding_small_things_using_thumb_And_forefinger_status_of_the_officer:data[0] ['holding_small_things_using_thumb_And_forefinger_status_of_the_officer'],
      following_voice_age_at_the_time_of_occurence:data[0] ['following_voice_age_at_the_time_of_occurence'],
      following_voice_age_at_the_confirmed:data[0] ['following_voice_age_at_the_confirmed'],
      following_voice_status_of_the_officer:data[0] ['following_voice_status_of_the_officer'],
      pronounce_individual_words_makes_sounds_that_make_sense_age_at_the_time_of_occurence:data[0] ['pronounce_individual_words_makes_sounds_that_make_sense_age_at_the_time_of_occurence'],
      pronounce_individual_words_makes_sounds_that_make_sense_age_at_the_confirmed:data[0] ['pronounce_individual_words_makes_sounds_that_make_sense_age_at_the_confirmed'],
      pronounce_individual_words_makes_sounds_that_make_sense_status_of_the_officer:data[0] ['pronounce_individual_words_makes_sounds_that_make_sense_status_of_the_officer'],
      understand_simple_instructions_age_at_the_time_of_occurence:data[0] ['understand_simple_instructions_age_at_the_time_of_occurence'],
      understand_simple_instructions_age_at_the_confirmed:data[0] ['understand_simple_instructions_age_at_the_confirmed'],
      understand_simple_instructions_status_of_the_officer:data[0] ['understand_simple_instructions_status_of_the_officer'], 

      walking_with_help_age_at_the_time_of_occurence:data[0] ['walking_with_help_age_at_the_time_of_occurence'],
      walking_with_help_age_at_the_confirmed:data[0] ['walking_with_help_age_at_the_confirmed'],
      walking_with_help_status_of_the_officer:data[0] ['walking_with_help_status_of_the_officer'],
      they_can_speak_At_least_two_or_three_words_age_at_the_time_of_occurence:data[0] ['they_can_speak_At_least_two_or_three_words_age_at_the_time_of_occurence'],
      they_can_speak_At_least_two_or_three_words_age_at_the_confirmed:data[0] ['they_can_speak_At_least_two_or_three_words_age_at_the_confirmed'],
      they_can_speak_At_least_two_or_three_words_status_of_the_officer:data[0] ['they_can_speak_At_least_two_or_three_words_status_of_the_officer'],
      hand_is_pointed_out_when_hearing_familiar_things_age_at_the_time_of_occurence:data[0] ['hand_is_pointed_out_when_hearing_familiar_things_age_at_the_time_of_occurence'],
      hand_is_pointed_out_when_hearing_familiar_things_age_at_the_confirmed:data[0] ['hand_is_pointed_out_when_hearing_familiar_things_age_at_the_confirmed'],
      hand_is_pointed_out_when_hearing_familiar_things_status_of_the_officer:data[0] ['hand_is_pointed_out_when_hearing_familiar_things_status_of_the_officer'],
      they_can_roll_a_boll_age_at_the_time_of_occurence:data[0] ['they_can_roll_a_boll_age_at_the_time_of_occurence'],
      they_can_roll_a_boll_age_at_the_confirmed:data[0] ['they_can_roll_a_boll_age_at_the_confirmed'],
      they_can_roll_a_boll_status_of_the_officer:data[0] ['they_can_roll_a_boll_status_of_the_officer'],
      can_identify_at_least_one_body_part_age_at_the_time_of_occurence:data[0] ['can_identify_at_least_one_body_part_age_at_the_time_of_occurence'],
      can_identify_at_least_one_body_part_age_at_the_confirmed:data[0] ['can_identify_at_least_one_body_part_age_at_the_confirmed'],
      can_identify_at_least_one_body_part_status_of_the_officer:data[0] ['can_identify_at_least_one_body_part_status_of_the_officer'],

      walking_without_help_age_at_the_time_of_occurence:data[0] ['walking_without_help_age_at_the_time_of_occurence'],
      walking_without_help_age_at_the_confirmed:data[0] ['walking_without_help_age_at_the_confirmed'],
      walking_without_helpstatus_of_the_officer:data[0] ['walking_without_helpstatus_of_the_officer'],
      can_climb_the_stair_with_help_age_at_the_time_of_occurence:data[0] ['can_climb_the_stair_with_help_age_at_the_time_of_occurence'],
      can_climb_the_stair_with_help_age_at_the_confirmed:data[0] ['can_climb_the_stair_with_help_age_at_the_confirmed'],
      can_climb_the_stair_with_help_status_of_the_officer:data[0] ['can_climb_the_stair_with_help_status_of_the_officer'],
      can_make_a_tower_using_building_blocks_age_at_the_time_of_occurence:data[0] ['can_make_a_tower_using_building_blocks_age_at_the_time_of_occurence'],
      can_make_a_tower_using_building_blocks_age_at_the_confirmed:data[0] ['can_make_a_tower_using_building_blocks_age_at_the_confirmed'],
      can_make_a_tower_using_building_blocks_status_of_the_officer:data[0] ['can_make_a_tower_using_building_blocks_status_of_the_officer'],
      eat_himself_alone_age_at_the_time_of_occurence:data[0] ['eat_himself_alone_age_at_the_time_of_occurence'],
      eat_himself_alone_age_at_the_confirmed:data[0] ['eat_himself_alone_age_at_the_confirmed'],
      eat_himself_alone_status_of_the_officer:data[0] ['eat_himself_alone_status_of_the_officer'],
      can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words_age_at_the_time_of_occurence:data[0] ['can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words_age_at_the_time_of_occurence'],
      can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words_age_at_the_confirmed:data[0] ['can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words_age_at_the_confirmed'],
      can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words_status_of_the_officer:data[0] ['can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words_status_of_the_officer'],
      the_lips_are_sharpened_to_kiss_age_at_the_time_of_occurence:data[0] ['the_lips_are_sharpened_to_kiss_age_at_the_time_of_occurence'],
      the_lips_are_sharpened_to_kiss_age_at_the_confirmed:data[0] ['the_lips_are_sharpened_to_kiss_age_at_the_confirmed'],
      the_lips_are_sharpened_to_kiss_status_of_the_officer:data[0] ['the_lips_are_sharpened_to_kiss_status_of_the_officer'],

      ability_to_run_without_falling_age_at_the_time_of_occurence:data[0] ['ability_to_run_without_falling_age_at_the_time_of_occurence'],
      ability_to_run_without_falling_age_at_the_confirmed:data[0] ['ability_to_run_without_falling_age_at_the_confirmed'],
      ability_to_run_without_falling_status_of_the_officer:data[0] ['ability_to_run_without_falling_status_of_the_officer'],
      ability_to_down_and_up_stair_age_at_the_time_of_occurence:data[0] ['ability_to_down_and_up_stair_age_at_the_time_of_occurence'],
      ability_to_down_and_up_stair_age_at_the_confirmed:data[0] ['ability_to_down_and_up_stair_age_at_the_confirmed'],
      ability_to_down_and_up_stair_status_of_the_officer:data[0] ['ability_to_down_and_up_stair_status_of_the_officer'],
      can_copy_an_art_with_a_circle_age_at_the_time_of_occurence:data[0] ['can_copy_an_art_with_a_circle_age_at_the_time_of_occurence'],
      can_copy_an_art_with_a_circle_age_at_the_confirmed:data[0] ['can_copy_an_art_with_a_circle_age_at_the_confirmed'],
      can_copy_an_art_with_a_circle_status_of_the_officer:data[0] ['can_copy_an_art_with_a_circle_status_of_the_officer'],
      can_create_a_sentence_with_three_or_more_words_age_at_the_time_of_occurence:data[0] ['can_create_a_sentence_with_three_or_more_words_age_at_the_time_of_occurence'],
      can_create_a_sentence_with_three_or_more_words_age_at_the_confirmed:data[0] ['can_create_a_sentence_with_three_or_more_words_age_at_the_confirmed'],
      can_create_a_sentence_with_three_or_more_words_status_of_the_officer:data[0] ['can_create_a_sentence_with_three_or_more_words_status_of_the_officer'],

         //child health form 1st month
      one_month_date_of_clinics: this.dateconverter(data[0] ['one_month_date_of_clinics']),
      one_month_change_of_eye_size:data[0] ['one_month_change_of_eye_size'],
      one_month_squint:data[0] ['one_month_squint'],
      one_month_cataract:data[0] ['one_month_cataract'],
      one_month_impairment_of_eye_movement:data[0] ['one_month_impairment_of_eye_movement'],
      one_month_hearing_left:data[0] ['one_month_hearing_left'],
      one_month_hearing_right:data[0] ['one_month_hearing_right'],
      one_month_development_weight:data[0] ['one_month_development_weight'],
      one_month_development_height:data[0] ['one_month_development_height'],
      one_month_heart_disease:data[0] ['one_month_heart_disease'],
      one_month_lungs:data[0] ['one_month_lungs'],
      one_month_hip_joint:data[0] ['one_month_hip_joint'],
      one_month_inheited_problems:data[0] ['one_month_inheited_problems'],
      one_month_other_diseases:data[0] ['one_month_other_diseases'],
      one_month_designation_of_officer:data[0] ['one_month_designation_of_officer'],

            //child health form 2nd month
      two_month_date_of_clinics: this.dateconverter(data[0] ['two_month_date_of_clinics']),
      two_month_change_of_eye_size:data[0] ['two_month_change_of_eye_size'],
      two_month_squint:data[0] ['two_month_squint'],
      two_month_cataract:data[0] ['two_month_cataract'],
      two_month_impairment_of_eye_movement:data[0] ['two_month_impairment_of_eye_movement'],
      two_month_hearing_left:data[0] ['two_month_hearing_left'],
      two_month_hearing_right:data[0] ['two_month_hearing_right'],
      two_month_development_weight:data[0] ['two_month_development_weight'],
      two_month_development_height:data[0] ['two_month_development_height'],
      two_month_heart_disease:data[0] ['two_month_heart_disease'],
      two_month_lungs:data[0] ['two_month_lungs'],
      two_month_hip_joint:data[0] ['two_month_hip_joint'],
      two_month_inheited_problems:data[0] ['two_month_inheited_problems'],
      two_month_other_diseases:data[0] ['two_month_other_diseases'],
      two_month_designation_of_officer:data[0] ['two_month_designation_of_officer'],
              
            //child health form 4th month
      four_month_date_of_clinics: this.dateconverter(data[0] ['four_month_date_of_clinics']),
      four_month_change_of_eye_size:data[0] ['four_month_change_of_eye_size'],
      four_month_squint:data[0] ['four_month_squint'],
      four_month_cataract:data[0] ['four_month_cataract'],
      four_month_impairment_of_eye_movement:data[0] ['four_month_impairment_of_eye_movement'],
      four_month_hearing_left:data[0] ['four_month_hearing_left'],
      four_month_hearing_right:data[0] ['four_month_hearing_right'],
      four_month_development_weight:data[0] ['four_month_development_weight'],
      four_month_development_height:data[0] ['four_month_development_height'],
      four_month_heart_disease:data[0] ['four_month_heart_disease'],
      four_month_lungs:data[0] ['four_month_lungs'],
      four_month_hip_joint:data[0] ['four_month_hip_joint'],
      four_month_inheited_problems:data[0] ['four_month_inheited_problems'],
      four_month_other_diseases:data[0] ['four_month_other_diseases'],
      four_month_designation_of_officer:data[0] ['four_month_designation_of_officer'],

            //child health form 6th month
      six_month_date_of_clinics: this.dateconverter(data[0] ['six_month_date_of_clinics']),
      six_month_change_of_eye_size:data[0] ['six_month_change_of_eye_size'],
      six_month_squint:data[0] ['six_month_squint'],
      six_month_cataract:data[0] ['six_month_cataract'],
      six_month_impairment_of_eye_movement:data[0] ['six_month_impairment_of_eye_movement'],
      six_month_hearing_left:data[0] ['six_month_hearing_left'],
      six_month_hearing_right:data[0] ['six_month_hearing_right'],
      six_month_development_weight:data[0] ['six_month_development_weight'],
      six_month_development_height:data[0] ['six_month_development_height'],
      six_month_heart_disease:data[0] ['six_month_heart_disease'],
      six_month_lungs:data[0] ['six_month_lungs'],
      six_month_hip_joint:data[0] ['six_month_hip_joint'],
      six_month_inheited_problems:data[0] ['six_month_inheited_problems'],
      six_month_other_diseases:data[0] ['six_month_other_diseases'],
      six_month_designation_of_officer:data[0] ['six_month_designation_of_officer'],
      six_month_dental_caries_white_brown_spots:data[0] ['six_month_dental_caries_white_brown_spots'],
      six_month_dental_caries_dental_cavities:data[0] ['six_month_dental_caries_dental_cavities'],

            //child health form 9th month
      nine_month_date_of_clinics: this.dateconverter(data[0] ['nine_month_date_of_clinics']),
      nine_month_change_of_eye_size:data[0] ['nine_month_change_of_eye_size'],
      nine_month_squint:data[0] ['nine_month_squint'],
      nine_month_cataract:data[0] ['nine_month_cataract'],
      nine_month_impairment_of_eye_movement:data[0] ['nine_month_impairment_of_eye_movement'],
      nine_month_hearing_left:data[0] ['nine_month_hearing_left'],
      nine_month_hearing_right:data[0] ['nine_month_hearing_right'],
      nine_month_development_weight:data[0] ['nine_month_development_weight'],
      nine_month_development_height:data[0] ['nine_month_development_height'],
      nine_month_heart_disease:data[0] ['nine_month_heart_disease'],
      nine_month_lungs:data[0] ['nine_month_lungs'],
      nine_month_hip_joint:data[0] ['nine_month_hip_joint'],
      nine_month_inheited_problems:data[0] ['nine_month_inheited_problems'],
      nine_month_other_diseases:data[0] ['nine_month_other_diseases'],
      nine_month_designation_of_officer:data[0] ['nine_month_designation_of_officer'],
      nine_month_dental_caries_white_brown_spots:data[0] ['nine_month_dental_caries_white_brown_spots'],
      nine_month_dental_caries_dental_cavities:data[0] ['nine_month_dental_caries_dental_cavities'],

            //child health form 12th month
      twelve_month_date_of_clinics:this.dateconverter(data[0] ['twelve_month_date_of_clinics']),
      twelve_month_change_of_eye_size:data[0] ['twelve_month_change_of_eye_size'],
      twelve_month_squint:data[0] ['twelve_month_squint'],
      twelve_month_cataract:data[0] ['twelve_month_cataract'],
      twelve_month_impairment_of_eye_movement:data[0] ['twelve_month_impairment_of_eye_movement'],
      twelve_month_hearing_left:data[0] ['twelve_month_hearing_left'],
      twelve_month_hearing_right:data[0] ['twelve_month_hearing_right'],
      twelve_month_development_weight:data[0] ['twelve_month_development_weight'],
      twelve_month_development_height:data[0] ['twelve_month_development_height'],
      twelve_month_heart_disease:data[0] ['twelve_month_heart_disease'],
      twelve_month_lungs:data[0] ['twelve_month_lungs'],
      twelve_month_hip_joint:data[0] ['twelve_month_hip_joint'],
      twelve_month_inheited_problems:data[0] ['twelve_month_inheited_problems'],
      twelve_month_other_diseases:data[0] ['twelve_month_other_diseases'],
      twelve_month_designation_of_officer:data[0] ['twelve_month_designation_of_officer'],
      twelve_month_dental_caries_white_brown_spots:data[0] ['twelve_month_dental_caries_white_brown_spots'],
      twelve_month_dental_caries_dental_cavities:data[0] ['twelve_month_dental_caries_dental_cavities'],

            //child health form 18th month
      eighteen_month_date_of_clinics: this.dateconverter(data[0] ['eighteen_month_date_of_clinics']),
      eighteen_month_change_of_eye_size:data[0] ['eighteen_month_change_of_eye_size'],
      eighteen_month_squint:data[0] ['eighteen_month_squint'],
      eighteen_month_cataract:data[0] ['eighteen_month_cataract'],
      eighteen_month_impairment_of_eye_movement:data[0] ['eighteen_month_impairment_of_eye_movement'],
      eighteen_month_hearing_left:data[0] ['eighteen_month_hearing_left'],
      eighteen_month_hearing_right:data[0] ['eighteen_month_hearing_right'],
      eighteen_month_development_weight:data[0] ['eighteen_month_development_weight'],
      eighteen_month_development_height:data[0] ['eighteen_month_development_height'],
      eighteen_month_heart_disease:data[0] ['eighteen_month_heart_disease'],
      eighteen_month_lungs:data[0] ['eighteen_month_lungs'],
      eighteen_month_hip_joint:data[0] ['eighteen_month_hip_joint'],
      eighteen_month_inheited_problems:data[0] ['eighteen_month_inheited_problems'],
      eighteen_month_other_diseases:data[0] ['eighteen_month_other_diseases'],
      eighteen_month_designation_of_officer:data[0] ['eighteen_month_designation_of_officer'],
      eighteen_month_dental_caries_white_brown_spots:data[0] ['eighteen_month_dental_caries_white_brown_spots'],
      eighteen_month_dental_caries_dental_cavities:data[0] ['eighteen_month_dental_caries_dental_cavities'],
                
            //child health form 3rd year
      three_year_date_of_clinics: this.dateconverter(data[0] ['three_year_date_of_clinics']),
      three_year_change_of_eye_size:data[0] ['three_year_change_of_eye_size'],
      three_year_squint:data[0] ['three_year_squint'],
      three_year_cataract:data[0] ['three_year_cataract'],
      three_year_impairment_of_eye_movement:data[0] ['three_year_impairment_of_eye_movement'],
      three_year_night_blindness:data[0] ['three_year_night_blindness'],
      three_year_bito_spots:data[0] ['three_year_bito_spots'],
      three_year_hearing_left:data[0] ['three_year_hearing_left'],
      three_year_hearing_right:data[0] ['three_year_hearing_right'],
      three_year_development_weight:data[0] ['three_year_development_weight'],
      three_year_development_height:data[0] ['three_year_development_height'],
      three_year_heart_disease:data[0] ['three_year_heart_disease'],
      three_year_lungs:data[0] ['three_year_lungs'],
      three_year_hip_joint:data[0] ['three_year_hip_joint'],
      three_year_inheited_problems:data[0] ['three_year_inheited_problems'],
      three_year_other_diseases:data[0] ['three_year_other_diseases'],
      three_year_designation_of_officer:data[0] ['three_year_designation_of_officer'],
      three_year_dental_caries_white_brown_spots:data[0] ['three_year_dental_caries_white_brown_spots'],
      three_year_dental_caries_dental_cavities:data[0] ['three_year_dental_caries_dental_cavities'],
            
            //child health form 4th year
      four_year_date_of_clinics: this.dateconverter(data[0] ['four_year_date_of_clinics']),
      four_year_change_of_eye_size:data[0] ['four_year_change_of_eye_size'],
      four_year_squint:data[0] ['four_year_squint'],
      four_year_cataract:data[0] ['four_year_cataract'],
      four_year_impairment_of_eye_movement:data[0] ['four_year_impairment_of_eye_movement'],
      four_year_night_blindness:data[0] ['four_year_night_blindness'],
      four_year_bito_spots:data[0] ['four_year_bito_spots'],
      four_year_hearing_left:data[0] ['four_year_hearing_left'],
      four_year_hearing_right:data[0] ['four_year_hearing_right'],
      four_year_development_weight:data[0] ['four_year_development_weight'],
      four_year_development_height:data[0] ['four_year_development_height'],
      four_year_heart_disease:data[0] ['four_year_heart_disease'],
      four_year_lungs:data[0] ['four_year_lungs'],
      four_year_hip_joint:data[0] ['four_year_hip_joint'],
      four_year_inheited_problems:data[0] ['four_year_inheited_problems'],
      four_year_other_diseases:data[0] ['four_year_other_diseases'],
      four_year_designation_of_officer:data[0] ['four_year_designation_of_officer'],
      four_year_dental_caries_white_brown_spots:data[0] ['four_year_dental_caries_white_brown_spots'],
      four_year_dental_caries_dental_cavities:data[0] ['four_year_dental_caries_dental_cavities'],

            //child health form 5th year
      five_year_date_of_clinics: this.dateconverter(data[0] ['five_year_date_of_clinics']),
      five_year_change_of_eye_size:data[0] ['five_year_change_of_eye_size'],
      five_year_squint:data[0] ['five_year_squint'],
      five_year_cataract:data[0] ['five_year_cataract'],
      five_year_impairment_of_eye_movement:data[0] ['five_year_impairment_of_eye_movement'],
      five_year_sight_left:data[0] ['five_year_sight_left'],
      five_year_sight_right:data[0] ['five_year_sight_right'],
      five_year_night_blindness:data[0] ['five_year_night_blindness'],
      five_year_bito_spots:data[0] ['five_year_bito_spots'],
      five_year_hearing_left:data[0] ['five_year_hearing_left'],
      five_year_hearing_right:data[0] ['five_year_hearing_right'],
      five_year_development_weight:data[0] ['five_year_development_weight'],
      five_year_development_height:data[0] ['five_year_development_height'],
      five_year_heart_disease:data[0] ['five_year_heart_disease'],
      five_year_lungs:data[0] ['five_year_lungs'],
      five_year_hip_joint:data[0] ['five_year_hip_joint'],
      five_year_inheited_problems:data[0] ['five_year_inheited_problems'],
      five_year_other_diseases:data[0] ['five_year_other_diseases'],
      five_year_designation_of_officer:data[0] ['five_year_designation_of_officer'],
      five_year_dental_caries_white_brown_spots:data[0] ['five_year_dental_caries_white_brown_spots'],
      five_year_dental_caries_dental_cavities:data[0] ['five_year_dental_caries_dental_cavities'],

      //Doctors Notes
      date_of_checked: this.dateconverter(data[0] ['date_of_checked']),
      special_notice: data[0] ['special_notice'],
      
      //to check teeth for mothers
      six_Number_of_teeth:data[0] ['six_Number_of_teeth'],
      six_status:data[0] ['six_status'],
      six_date: this.dateconverter(data[0] ['six_date']),
      seven_Number_of_teeth:data[0] ['seven_Number_of_teeth'],
      seven_status:data[0] ['seven_status'],
      seven_date: this.dateconverter(data[0] ['seven_date']),
      eight_Number_of_teeth:data[0] ['eight_Number_of_teeth'],
      eight_status:data[0] ['eight_status'],
      eight_date: this.dateconverter(data[0] ['eight_date']),
      nine_Number_of_teeth:data[0] ['nine_Number_of_teeth'],
      nine_status:data[0] ['nine_status'],
      nine_date: this.dateconverter(data[0] ['nine_date']),
      ten_Number_of_teeth:data[0] ['ten_Number_of_teeth'],
      ten_status:data[0] ['ten_status'],
      ten_date: this.dateconverter(data[0] ['ten_date']),
      eleven_Number_of_teeth:data[0] ['eleven_Number_of_teeth'],
      eleven_status:data[0] ['eleven_status'],
      eleven_date: this.dateconverter(data[0] ['eleven_date']),
      twelve_Number_of_teeth:data[0] ['twelve_Number_of_teeth'],
      twelve_status:data[0] ['twelve_status'],
      twelve_date: this.dateconverter(data[0] ['twelve_date']),
      thirteen_Number_of_teeth:data[0] ['thirteen_Number_of_teeth'],
      thirteen_status:data[0] ['thirteen_status'],
      thirteen_date: this.dateconverter(data[0] ['thirteen_date']),
      fouteen_Number_of_teeth:data[0] ['fouteen_Number_of_teeth'],
      fouteen_status:data[0] ['fouteen_status'],
      fouteen_date: this.dateconverter(data[0] ['fouteen_date']),
      fifteen_Number_of_teeth:data[0] ['fifteen_Number_of_teeth'],
      fifteen_status:data[0] ['fifteen_status'],
      fifteen_date: this.dateconverter(data[0] ['fifteen_date']),
      sixteen_Number_of_teeth:data[0] ['sixteen_Number_of_teeth'],
      sixteen_status:data[0] ['sixteen_status'],
      sixteen_date: this.dateconverter(data[0] ['sixteen_date']),
      seventeen_Number_of_teeth:data[0] ['seventeen_Number_of_teeth'],
      seventeen_status:data[0] ['seventeen_status'],
      seventeen_date: this.dateconverter(data[0] ['seventeen_date']),
      eighteen_Number_of_teeth:data[0] ['eighteen_Number_of_teeth'],
      eighteen_status:data[0] ['eighteen_status'],
      eighteen_date: this.dateconverter(data[0] ['eighteen_date']),

       //Hospital admits
      admit_date: this.dateconverter(data[0] ['admit_date']),
      reason_of_admit:data[0] ['reason_of_admit'],
      about_disease:data[0] ['about_disease'],
      referalls:data[0] ['referalls']
        });
    });

    this.autoRenew = new FormControl();
    this.onChange();
    
  }

  onSubmit() {
 
      if (this.BabyForm.invalid) {
          return;
      }
  
      this.success=true;
      this.addbabyService.register(this.BabyForm.value,this.babyID)
        .subscribe(
          response=>{
            if(response.status==201){
              this.openSnackBar("Updated Successfully");
              this.router.navigate(["viewBabies/"])
            }else{
              this.openSnackBar("Update is Unsuccessfull, Pls enter it again!");
              this.router.navigate([this.router.url,'viewMotherbyId',this.babyID])
            }
          } 
        )
      }

     



      openSnackBar(msg) {
            this._snackBar.open(msg,"OK")
          }
      

          dateconverter(isodate:String){ //Convert ISOFormat data to yyyy-MM-dd format
            if(isodate){
              if(isodate.length == 0){
                return null
              }else{
                return isodate.substr(0,10)
              }
            }
          }

          onChange(){        //Enabling ReadOnly Attribute when toggle is off
            this.onHidden()
            if(this.autoRenew.value){
              return "false"
            }else{
              return "true"
            }
          }

          onHidden(){      //Hide the submit button when toggle is off and vice versa
            if(this.autoRenew.value){
              return true;
            }else{
              return false;
            }
          }

          getToday(): string {
            
            return new Date().toISOString().split('T')[0]
            
          }

          getVaccineDate(months,DOB){
            let dateBirth = DOB.split('-');
            let month = dateBirth[1];
            let newMonth = parseInt(month)+months;
            return dateBirth[0]+"-"+newMonth+"-"+dateBirth[2]
          }

        
 
}
