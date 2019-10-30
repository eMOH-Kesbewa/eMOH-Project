export class Baby{
    baby_id:String;
    name_of_child: String;
    date_of_birth_of_child:Date;
    date_of_registered: Date;
    name_of_mother: String;
    age_of_mother: Number;
    address: String;
    total_Number_of_children_alive_including_this_child: Number;
    
    method_of_delivery:String;
    Number_of_apgas_1m: String;
    Number_of_apgas_5m: String;
    Number_of_apgas_10m: String;
    birth_weight: String;
    gridle_circumference_at_birth: String;
    length_of_baby_at_birth: String;
    weight_in_discharge_from_hospital: String;
    K_vitamine: String;
    breast_feeding_breast_feeding_during_the_first_hour: String;
    breast_feeding_unstability: String;
    breast_feeding_connection: String;
    does_check_congenital_hypothyroidism: String;
 
    premature_births_status: String;
    premature_births_date: Date;
    low_birth_weight_status: String;
    low_birth_weight_date: Date;
    neonatal_abnomalities_status: String;
    neonatal_abnomalities_date: Date;
    inherited_problems_status: String;
    inherited_problems_date: Date;
    congenital_hypothyroidism_state: String;
    congenital_hypothyroidism_date: Date;
    server_illness_of_the_mother_after_delivery_status: String;
    server_illness_of_the_mother_after_delivery_date: Date; 
    breastfeeding_at_first_six_months_status: String;
    breastfeeding_at_first_six_months_date: Date;     
    impairments_of_growth_status: String;
    impairments_of_growth_date: Date;
    death_of_mother_or_father_status: String;
    death_of_mother_or_father_date: Date;  
    separation_or_depature_of_mother_or_father_status: String;
    separation_or_depature_of_mother_or_father_date: Date;
    other_status: String;
    other_date: Date;  
      
         
     //second page 
    second_date: Date;
    maturaty_of_baby_weeks: Number;
    baby_growth: String;
    blood_group_of_baby: String;
 
    peripheries_pink_and_warm_noraml: String;
    peripheries_pink_and_warm_abnormal: String;
 
    hydration_normal: String;
    hydration_abnormal: String;
 
    response_to_hnadling_normal: String;
    response_to_hnadling_abnormal: String;
 
    capillary_refilling_time_normal: String;
    capillary_refilling_time_abnormal: String;
 
    pulse_rate_or_volume_normal: String;
    pulse_rate_or_volume_abnormal: String;
 
    heart_murmurs_normal: String;
    heart_murmurs_abnormal: String;
 
    femoral_pulse_normal: String;
    femoral_pulse_abnormal: String;
 
    respiratory_rate_normal: String;
    respiratory_rate_abnormal: String;
 
    grunting_normal: String;
    grunting_abnormal: String;
 
    intercostal_or_subcostal_recession_normal: String;
    intercostal_or_subcostal_recession_abnormal: String;
 
    tone_normal: String;
    tone_abnormal: String;
 
    OFC_normal: String;
    OFC_abnormal: String;
 
    fontamelle_or_suture_line_normal: String;
    fontamelle_or_suture_line_abnormal: String;
 
    eyes_or_red_reflex_normal: String;
    eyes_or_red_reflex_abnormal: String;
 
    scalp_normal: String;
    scalp_abnormal: String;
 
    mouth_lips_normal: String;
    mouth_lips_abnormal: String;
 
    palate_normal: String;
    palate_abnormal: String;
 
    ears_normal: String;
    ears_abnormal: String;
 
    abdomen_normal: String;
    abdomen_abnormal: String;
 
    umbilicus_normal: String;
    umbilicus_abnormal: String;
 
    genitalia_normal: String;
    genitalia_abnormal: String;
 
    anus_normal: String;
    anus_abnormal: String;
 
    hips_normal: String;
    hips_abnormal: String;
 
    spine_normal: String;
    spine_abnormal: String;
 
    limbs_normal: String;
    limbs_abnormal: String;
 
    dysmorphic_featurse_normal: String;
    dysmorphic_featurse_abnormal: String;
 
    superficial_infection_skin_normal: String;
    superficial_infection_skin_abnormal: String;
 
    birth_injuries_normal: String;
    birth_injuries_abnormal: String;
 
    other_abnomalities: String;
    action_taken: String;
    diagnosis_of_discharge: String;
    date_of_discharge: Date;
 
 
    //third page for phm
    ten_days_from_birth_one_five_days_date: Date;
    six_ten_days_date: Date;
    fourteen_twentytwo_days_date: Date;
    fourtytwo_days_date: Date;
 
    color_of_skin_ten_days_from_birth_one_five_days_status: String;
    color_of_skin_six_ten_days_status: String;
    color_of_skin_fourteen_twentytwo_days_status: String;
    color_of_skin_fourtytwo_days_status: String;
 
    eyes_ten_days_from_birth_one_five_days_status: String;
    eyes_six_ten_days_status: String;
    eyes_fourteen_twentytwo_days_status: String;
    eyes_fourtytwo_days_status: String;
 
    the_native_of_lobbyists_ten_days_from_birth_one_five_days_status: String;
    the_native_of_lobbyists_six_ten_days_status: String;
    the_native_of_lobbyists_fourteen_twentytwo_days_status: String;
    the_native_of_lobbyists_fourtytwo_days_status: String;
 
    tempreture_ten_days_from_birth_one_five_days_status: String;
    tempreture_six_ten_days_status: String;
    tempreture_fourteen_twentytwo_days_status: String;
    tempreture_fourtytwo_days_status: String;
 
    only_breastfeeding_ten_days_from_birth_one_five_days_status: String;
    only_breastfeeding_six_ten_days_status: String;
    only_breastfeeding_fourteen_twentytwo_days_status: String;
    only_breastfeeding_fourtytwo_days_status: String;
 
    breastfeeding_stability_ten_days_from_birth_one_five_days_status: String;
    breastfeeding_stability_six_ten_days_status: String;
    breastfeeding_stability_fourteen_twentytwo_days_status: String;
    breastfeeding_stability_fourtytwo_days_status: String;
 
    breastfeeding_connection_ten_days_from_birth_one_five_days_status: String;
    breastfeeding_connection_six_ten_days_status: String;
    breastfeeding_connection_fourteen_twentytwo_days_status: String;
    breastfeeding_connection_fourtytwo_days_status: String;
 
    other_ten_days_from_birth_one_five_days_status: String;
    other_six_ten_days_status: String;
    other_fourteen_twentytwo_days_status: String;
    other_fourtytwo_days_status: String;
 
    //for mother to check eyes
    does_child_eyes_toward_the_light: String;
    does_the_child_look_good_on_your_face: String;
    when_you_turn_your_face_to_the_side_do_you_see_the_child_smiling_in_response: String;
    then_the_baby_eyes_move: String;
    does_the_child_look_arround: String;
    is_child_streching_out_his_hand_and_tryimg_to_touch_something: String;
    do_you_suspect_that_your_child_has_a_problem: String;
    is_it_possible_for_a_child_to_pickup_small_things_with_a_thumb_and_forefinger: String;
    have_your_child_strech_out_his_hand_and_touch_them: String;
    if_the_person_identifies_them_the_child_will_recognize_them_before_they_call_them: String;
 
    //to check baby hearing for mothers
    if_your_child_is_startled_by_a_sudden_loud_noise_does_his_stutter_or_widden_his_eyes: String;
    does_your_child_detect_sudden_or_presistent_noises_and_begin_to_listen_quitely_to_eve: String;
    if_they_cant_see_their_mother_do_they_keep_silent_or_laugh_when_their_voice_is_heard: String;
    when_the_mother_speaks_from_the_side_or_from_the_back_does_child_turn_his_head_or_eyes: String;
    does_child_turn_to_the_mother_side_immediately_after_speaking: String;
    listen_to_the_familiar_sounds_does_child_hear_everyday: String;
    does_find_out_about_noises_from_an_unknown_location: String;
    does_child_like_it_when_talking_to_a_loud_tune: String;
    does_he_respond_to_other_familiar_sounds_nd_his_name: String;
    does_he_respond_to_words_even_when_they_do_not: String;
   
    //child growth 6 weeks-3 months
    lie_on_his_hips_and_head_up_age_at_the_time_of_occurence: String;
    lie_on_his_hips_and_head_up_age_at_the_confirmed: String;
    lie_on_his_hips_and_head_up_status_of_the_officer: String;
    something_keeps_moving_from_one_place_to_another_age_at_the_time_of_occurence: String;
    something_keeps_moving_from_one_place_to_another_age_at_the_confirmed: String;
    something_keeps_moving_from_one_place_to_another_status_of_the_officer: String;
    stopping_or_increasing_action_responds_to_a_sudden_loud_noise_age_at_the_time_of_occurence: String;
    stopping_or_increasing_action_responds_to_a_sudden_loud_noise_age_at_the_confirmed: String;
    stopping_or_increasing_action_responds_to_a_sudden_loud_noise_status_of_the_officer: String;
    sounds_like_a_e_in_response_to_stimulus_age_at_the_time_of_occurence: String;
    sounds_like_a_e_in_response_to_stimulus_age_at_the_confirmed: String;
    sounds_like_a_e_in_response_to_stimulus_status_of_the_officer: String;
    the_mother_recognize_and_smiles_age_at_the_time_of_occurence: String;
    the_mother_recognize_and_smiles_age_at_the_confirmed: String;
    the_mother_recognize_and_smiles_status_of_the_officer: String; 
    
    //child growth 3-6 months
    raise_the_head_chest_while_standing_up_age_at_the_time_of_occurence: String;
    raise_the_head_chest_while_standing_up_age_at_the_confirmed: String;
    raise_the_head_chest_while_standing_up_status_of_the_officer: String;
    they_play_when_crossing_fingers_age_at_the_time_of_occurence: String;
    they_play_when_crossing_fingers_age_at_the_confirmed: String;
    they_play_when_crossing_fingers_status_of_the_officer: String;
    streching_his_hands_toward_something_he_hold_it_with_his_whole_hand_age_at_the_time_of_occurence: String;
    streching_his_hands_toward_something_he_hold_it_with_his_whole_hand_age_at_the_confirmed: String;
    streching_his_hands_toward_something_he_hold_it_with_his_whole_hand_status_of_the_officer: String;
    when_heard_a_sound_he_turn_his_head_toward_that_age_at_the_time_of_occurence: String;
    when_heard_a_sound_he_turn_his_head_toward_that_age_at_the_confirmed: String;
    when_heard_a_sound_he_turn_his_head_toward_that_status_of_the_officer: String;
    emits_single_letter_sounds_age_at_the_time_of_occurence: String;
    emits_single_letter_sounds_age_at_the_confirmed: String;
    emits_single_letter_sounds_status_of_the_officer: String;
    smiles_loudely_age_at_the_time_of_occurence: String;
    smiles_loudely_age_at_the_confirmed: String;
    smiles_loudely_status_of_the_officer: String;    
      
    //child growth 6-9 month
    lie_your_hips_and_head_up_age_at_the_time_of_occurence: String;
    lie_your_hips_and_head_up_age_at_the_confirmed: String;
    lie_your_hips_and_head_up_status_of_the_officer: String;
    turn_back_again_and_again_age_at_the_time_of_occurence: String;
    turn_back_again_and_again_age_at_the_confirmed: String;
    turn_back_again_and_again_status_of_the_officer: String;
    change_something_another_hand_to_other_hand_age_at_the_time_of_occurence: String;
    change_something_another_hand_to_other_hand_age_at_the_confirmed: String;
    change_something_another_hand_to_other_hand_status_of_the_officer: String;
    some_sounds_are_repeated_age_at_the_time_of_occurence: String;
    some_sounds_are_repeated_age_at_the_confirmed: String;
    some_sounds_are_repeated_status_of_the_officer: String;
     
    //child growth 9-12 month
    siting_without_help_age_at_the_time_of_occurence: String;
    siting_without_help_age_at_the_confirmed: String;
    siting_without_help_status_of_the_officer: String;
    holding_himself_alone_age_at_the_time_of_occurence: String;
    holding_himself_alone_age_at_the_confirmed: String;
    holding_himself_alone_status_of_the_officer: String;
    holding_small_things_using_thumb_And_forefinger_age_at_the_time_of_occurence: String;
    holding_small_things_using_thumb_And_forefinger_age_at_the_confirmed: String;
    holding_small_things_using_thumb_And_forefinger_status_of_the_officer: String;
    following_voice_age_at_the_time_of_occurence: String;
    following_voice_age_at_the_confirmed: String;
    following_voice_status_of_the_officer: String;
    pronounce_individual_words_makes_sounds_that_make_sense_age_at_the_time_of_occurence: String;
    pronounce_individual_words_makes_sounds_that_make_sense_age_at_the_confirmed: String;
    pronounce_individual_words_makes_sounds_that_make_sense_status_of_the_officer: String;
    understand_simple_instructions_age_at_the_time_of_occurence: String;
    understand_simple_instructions_age_at_the_confirmed: String;
    understand_simple_instructions_status_of_the_officer: String;    
    
    //child growth 12-18 month
    walking_with_help_age_at_the_time_of_occurence: String;
    walking_with_help_age_at_the_confirmed: String;
    walking_with_help_status_of_the_officer: String;
    they_can_speak_At_least_two_or_three_words_age_at_the_time_of_occurence: String;
    they_can_speak_At_least_two_or_three_words_age_at_the_confirmed: String;
    they_can_speak_At_least_two_or_three_words_status_of_the_officer: String;
    hand_is_pointed_out_when_hearing_familiar_things_age_at_the_time_of_occurence: String;
    hand_is_pointed_out_when_hearing_familiar_things_age_at_the_confirmed: String;
    hand_is_pointed_out_when_hearing_familiar_things_status_of_the_officer: String;
    they_can_roll_a_boll_age_at_the_time_of_occurence: String;
    they_can_roll_a_boll_age_at_the_confirmed: String;
    they_can_roll_a_boll_status_of_the_officer: String;
    can_identify_at_least_one_body_part_age_at_the_time_of_occurence: String;
    can_identify_at_least_one_body_part_age_at_the_confirmed: String;
    can_identify_at_least_one_body_part_status_of_the_officer: String;
     
    //child growth 18 month-2 year
    walking_without_help_age_at_the_time_of_occurence: String;
    walking_without_help_age_at_the_confirmed: String;
    walking_without_helpstatus_of_the_officer: String;
    can_climb_the_stair_with_help_age_at_the_time_of_occurence: String;
    can_climb_the_stair_with_help_age_at_the_confirmed: String;
    can_climb_the_stair_with_help_status_of_the_officer: String;
    can_make_a_tower_using_building_blocks_age_at_the_time_of_occurence: String;
    can_make_a_tower_using_building_blocks_age_at_the_confirmed: String;
    can_make_a_tower_using_building_blocks_status_of_the_officer: String;
    eat_himself_alone_age_at_the_time_of_occurence: String;
    eat_himself_alone_age_at_the_confirmed: String;
    eat_himself_alone_status_of_the_officer: String;
    can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words_age_at_the_time_of_occurence: String;
    can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words_age_at_the_confirmed: String;
    can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words_status_of_the_officer: String;
    the_lips_are_sharpened_to_kiss_age_at_the_time_of_occurence: String;
    the_lips_are_sharpened_to_kiss_age_at_the_confirmed: String;
    the_lips_are_sharpened_to_kiss_status_of_the_officer: String;
    
    //child growth 2-3 year
    ability_to_run_without_falling_age_at_the_time_of_occurence: String;
    ability_to_run_without_falling_age_at_the_confirmed: String;
    ability_to_run_without_falling_status_of_the_officer: String;
    ability_to_down_and_up_stair_age_at_the_time_of_occurence: String;
    ability_to_down_and_up_stair_age_at_the_confirmed: String;
    ability_to_down_and_up_stair_status_of_the_officer: String;
    can_copy_an_art_with_a_circle_age_at_the_time_of_occurence: String;
    can_copy_an_art_with_a_circle_age_at_the_confirmed: String;
    can_copy_an_art_with_a_circle_status_of_the_officer: String;
    can_create_a_sentence_with_three_or_more_words_age_at_the_time_of_occurence: String;
    can_create_a_sentence_with_three_or_more_words_age_at_the_confirmed: String;
    can_create_a_sentence_with_three_or_more_words_status_of_the_officer: String;
      
    //child health form 1st month
    one_month_date_of_clinics: Date;
    one_month_change_of_eye_size:String;
    one_month_squint: String;
    one_month_cataract: String;
    one_month_impairment_of_eye_movement: String;
    one_month_hearing_left: String;
    one_month_hearing_right: String;
    one_month_development_weight: String;
    one_month_development_height: String;
    one_month_heart_disease: String;
    one_month_lungs: String;
    one_month_hip_joint: String;
    one_month_inheited_problems: String;
    one_month_other_diseases: String;
    one_month_designation_of_officer: String;
 
    //child health form 2nd month
    two_month_date_of_clinics: Date;
    two_month_change_of_eye_size:String;
    two_month_squint: String;
    two_month_cataract: String;
    two_month_impairment_of_eye_movement: String;
    two_month_hearing_left: String;
    two_month_hearing_right: String;
    two_month_development_weight: String;
    two_month_development_height: String;
    two_month_heart_disease: String;
    two_month_lungs: String;
    two_month_hip_joint: String;
    two_month_inheited_problems: String;
    two_month_other_diseases: String;
    two_month_designation_of_officer: String;
     
    //child health form 4th month
    four_month_date_of_clinics: Date;
    four_month_change_of_eye_size:String;
    four_month_squint: String;
    four_month_cataract: String;
    four_month_impairment_of_eye_movement: String;
    four_month_hearing_left: String;
    four_month_hearing_right: String;
    four_month_development_weight: String;
    four_month_development_height: String;
    four_month_heart_disease: String;
    four_month_lungs: String;
    four_month_hip_joint: String;
    four_month_inheited_problems: String;
    four_month_other_diseases: String;
    four_month_designation_of_officer: String;
 
    //child health form 6th month
    six_month_date_of_clinics: Date;
    six_month_change_of_eye_size:String;
    six_month_squint: String;
    six_month_cataract: String;
    six_month_impairment_of_eye_movement: String;
    six_month_hearing_left: String;
    six_month_hearing_right: String;
    six_month_development_weight: String;
    six_month_development_height: String;
    six_month_heart_disease: String;
    six_month_lungs: String;
    six_month_hip_joint: String;
    six_month_inheited_problems: String;
    six_month_other_diseases: String;
    six_month_designation_of_officer: String;
    six_month_dental_caries_white_brown_spots: String;
    six_month_dental_caries_dental_cavities: String;
 
    //child health form 9th month
    nine_month_date_of_clinics: Date;
    nine_month_change_of_eye_size:String;
    nine_month_squint: String;
    nine_month_cataract: String;
    nine_month_impairment_of_eye_movement: String;
    nine_month_hearing_left: String;
    nine_month_hearing_right: String;
    nine_month_development_weight: String;
    nine_month_development_height: String;
    nine_month_heart_disease: String;
    nine_month_lungs: String;
    nine_month_hip_joint: String;
    nine_month_inheited_problems: String;
    nine_month_other_diseases: String;
    nine_month_designation_of_officer: String;
    nine_month_dental_caries_white_brown_spots: String;
    nine_month_dental_caries_dental_cavities: String;
 
    //child health form 12th month
    twelve_month_date_of_clinics: Date;
    twelve_month_change_of_eye_size:String;
    twelve_month_squint: String;
    twelve_month_cataract: String;
    twelve_month_impairment_of_eye_movement: String;
    twelve_month_hearing_left: String;
    twelve_month_hearing_right: String;
    twelve_month_development_weight: String;
    twelve_month_development_height: String;
    twelve_month_heart_disease: String;
    twelve_month_lungs: String;
    twelve_month_hip_joint: String;
    twelve_month_inheited_problems: String;
    twelve_month_other_diseases: String;
    twelve_month_designation_of_officer: String;
    twelve_month_dental_caries_white_brown_spots: String;
    twelve_month_dental_caries_dental_cavities: String;
 
    //child health form 18th month
    eighteen_month_date_of_clinics: Date;
    eighteen_month_change_of_eye_size:String;
    eighteen_month_squint: String;
    eighteen_month_cataract: String;
    eighteen_month_impairment_of_eye_movement: String;
    eighteen_month_hearing_left: String;
    eighteen_month_hearing_right: String;
    eighteen_month_development_weight: String;
    eighteen_month_development_height: String;
    eighteen_month_heart_disease: String;
    eighteen_month_lungs: String;
    eighteen_month_hip_joint: String;
    eighteen_month_inheited_problems: String;
    eighteen_month_other_diseases: String;
    eighteen_month_designation_of_officer: String;
    eighteen_month_dental_caries_white_brown_spots: String;
    eighteen_month_dental_caries_dental_cavities: String;
       
    //child health form 3rd year
    three_year_date_of_clinics: Date;
    three_year_change_of_eye_size:String;
    three_year_squint: String;
    three_year_cataract: String;
    three_year_impairment_of_eye_movement: String;
    three_year_night_blindness: String;
    three_year_bito_spots: String;
    three_year_hearing_left: String;
    three_year_hearing_right: String;
    three_year_development_weight: String;
    three_year_development_height: String;
    three_year_heart_disease: String;
    three_year_lungs: String;
    three_year_hip_joint: String;
    three_year_inheited_problems: String;
    three_year_other_diseases: String;
    three_year_designation_of_officer: String;
    three_year_dental_caries_white_brown_spots: String;
    three_year_dental_caries_dental_cavities: String;
    
    //child health form 4th year
    four_year_date_of_clinics: Date;
    four_year_change_of_eye_size:String;
    four_year_squint: String;
    four_year_cataract: String;
    four_year_impairment_of_eye_movement: String;
    four_year_night_blindness: String;
    four_year_bito_spots: String;
    four_year_hearing_left: String;
    four_year_hearing_right: String;
    four_year_development_weight: String;
    four_year_development_height: String;
    four_year_heart_disease: String;
    four_year_lungs: String;
    four_year_hip_joint: String;
    four_year_inheited_problems: String;
    four_year_other_diseases: String;
    four_year_designation_of_officer: String;
    four_year_dental_caries_white_brown_spots: String;
    four_year_dental_caries_dental_cavities: String;
 
    //child health form 5th year
    five_year_date_of_clinics: Date;
    five_year_change_of_eye_size:String;
    five_year_squint: String;
    five_year_cataract: String;
    five_year_impairment_of_eye_movement: String;
    five_year_sight_left: String;
    five_year_sight_right: String;
    five_year_night_blindness: String;
    five_year_bito_spots: String;
    five_year_hearing_left: String;
    five_year_hearing_right: String;
    five_year_development_weight: String;
    five_year_development_height: String;
    five_year_heart_disease: String;
    five_year_lungs: String;
    five_year_hip_joint: String;
    five_year_inheited_problems: String;
    five_year_other_diseases: String;
    five_year_designation_of_officer: String;
    five_year_dental_caries_white_brown_spots: String;
    five_year_dental_caries_dental_cavities: String;
 
 
     //Doctors Notes
    date_of_checked: Date;
    special_notice: String;
 
 
 
   //To check teeth for mothers
    six_Number_of_teeth: Number;
    six_status: String;
    six_date: Date;
    seven_Number_of_teeth: Number;
    seven_status: String;
    seven_date: Date;
    eight_Number_of_teeth: Number;
    eight_status: String;
    eight_date: Date;
    nine_Number_of_teeth: Number;
    nine_status: String;
    nine_date: Date;
    ten_Number_of_teeth: Number;
    ten_status: String;
    ten_date: Date;
    eleven_Number_of_teeth: Number;
    eleven_status: String;
    eleven_date: Date;
    twelve_Number_of_teeth: Number;
    twelve_status: String;
    twelve_date: Date;
    thirteen_Number_of_teeth: Number;
    thirteen_status: String;
    thirteen_date: Date;
    fouteen_Number_of_teeth: Number;
    fouteen_status: String;
    fouteen_date: Date;
    fifteen_Number_of_teeth: Number;
    fifteen_status: String;
    fifteen_date: Date;
    sixteen_Number_of_teeth: Number;
    sixteen_status: String;
    sixteen_date: Date;
    seventeen_Number_of_teeth: Number;
    seventeen_status: String;
    seventeen_date: Date;
    eighteen_Number_of_teeth: Number;
    eighteen_status: String;
    eighteen_date: Date;
    
    //Hospital admits
    admit_date:Date;
    reason_of_admit:String;
    about_disease:String;
    referalls:String;
 
    //vaccine
    b_c_g_date:Date;
    b_c_g_batch_no: String;
    b_c_g_effects_of_immunization: String;
    b_c_g_b_c_g_scar: Boolean;
 
    b_c_g_second_dose_date:Date;
    b_c_g_second_dose_batch_no: String;
    b_c_g_second_dose_effects_of_immunization: String;
 
    pentavalent_one_date:Date;
    pentavalent_one_batch_no: String;
    pentavalent_one_effects_of_immunization: String;
 
    opv_one_date:Date;
    opv_one_batch_no: String;
    opv_one_effects_of_immunization: String;
 
    pentavalent_two_date:Date;
    pentavalent_two_batch_no: String;
    pentavalent_two_effects_of_immunization: String;
 
    opv_two_date:Date;
    opv_two_batch_no: String;
    opv_two_effects_of_immunization: String;
 
    pentavalent_three_date:Date;
    pentavalent_three_batch_no: String;
    pentavalent_three_effects_of_immunization: String;
 
    opv_three_date:Date;
    opv_three_batch_no: String;
    opv_three_effects_of_immunization: String;
    
    live_je_date:Date;
    live_je_batch_no: String;
    live_je_effects_of_immunization: String;
 
    measules_mumps_rubella_date:Date;
    measules_mumps_rubella_batch_no: String;
    measules_mumps_rubella_effects_of_immunization: String;
 
    dpt_date:Date;
    dpt_batch_no: String;
    dpt_effects_of_immunization: String;
 
    opv_four_date:Date;
    opv_four_batch_no: String;
    opv_four_effects_of_immunization: String;
 
    measules_rubella_two_date:Date;
    measules_rubella_two_batch_no: String;
    measules_rubella_two_effects_of_immunization: String;
 
    d_t_date:Date;
    d_t_batch_no: String;
    d_t_effects_of_immunization: String;
 
    opv_five_date:Date;
    opv_five_batch_no: String;
    opv_five_effects_of_immunization: String;
 
    adult_tatanus_diphtheria_date:Date;
    adult_tatanus_diphtheria_batch_no: String;
    adult_tatanus_diphtheria_effects_of_immunization: String;
 
    other_vaccine_date:Date;
    other_batch_no: String;
    other_effects_of_immunization: String;
 
    date_of_refferals: Date;
    reason_for_referrals: String;
    place_of_refferal: String;
    notes_on_back: String;
    
    //vitamine A
    A_vitamine_six_month_date: Date;
    A_vitamine_six_month_batch_no: String;
 
 
    A_vitamine_one_year_date: Date;
    A_vitamine_one_year_batch_no: String;
    A_vitamine_one_half_year_date: Date;
    A_vitamine_one_half_year_batch_no: String;
    A_vitamine_two_year_date: Date;
    A_vitamine_two_year_batch_no: String;
 
    A_vitamine_two_half_year_date: Date;
    A_vitamine_two_half_year_batch_no: String;
 
    A_vitamine_three_year_date: Date;
    A_vitamine_three_year_batch_no: String;
 
    A_vitamine_three_half_year_date: Date;
    A_vitamine_three_half_year_batch_no: String;
 
    A_vitamine_four_year_date: Date;
    A_vitamine_four_year_batch_no: String;
 
    A_vitamine_four_half_year_date: Date;
    A_vitamine_four_half_year_batch_no: String;
 
    A_vitamine_five_year_date: Date;
    A_vitamine_five_year_batch_no: String;
 
    //warm treat
    warm_treat_one_year_date: Date;
    warm_treat_one_year_batch_no: String;
    warm_treat_one_half_year_date: Date;
    warm_treat_one_half_year_batch_no: String;
    warm_treat_two_year_date: Date;
    warm_treat_two_year_batch_no: String;
 
    warm_treat_two_half_year_date: Date;
    warm_treat_two_half_year_batch_no: String;
 
    warm_treat_three_year_date: Date;
    warm_treat_three_year_batch_no: String;
 
    warm_treat_three_half_year_date: Date;
    warm_treat_three_half_year_batch_no: String;
 
    warm_treat_four_year_date: Date;
    warm_treat_four_year_batch_no: String;
 
    warm_treat_four_half_year_date: Date;
    warm_treat_four_half_year_batch_no: String;
 
    warm_treat_five_year_date: Date;
    warm_treat_five_year_batch_no: String;
   
}