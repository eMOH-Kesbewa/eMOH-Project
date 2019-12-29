const mongoose = require('mongoose');
var Schema = mongoose.Schema;
var phm = new Schema({

    // 1 st page
    "MOH_division": String,
    "date_of_today" : Date,
    "Batch_no" : String,
    "Division" : String,
    "Moh_population_urban" :Number,
    "Moh_population_rural" :Number,
    "Moh_population_other" :Number,

    // MOH DIVISION”S IMPORTANT THINGS
    "Number_of_birth_for_year":Number,
    "Number_of_baby_death_for_year":Number,
    "Number_of_mother_death_for_year":Number,
    "Number_of_child_death_for_year":Number,

    // 01.Approved family details
    "No_of_approved_families_start_of_month":Number,
    "No_of_new_registered_family":Number,
    "No_of_removed_family_from_form":Number,
    "No_of_house_walking":Number,
    //"No_of_new_married_couple":Number,

    // 02. Mother protections

    "No_of_low_risk_mothers":Number,
    "No_of_hish_risk_mothers":Number,
    "Registered_mothers_before_eight_weeks":Number,
    "Registered_mothers_between_eight_twelve_weeks":Number,
    "Registered_mothers_after_twelve_weeks":Number,
    "Low_sixteen_age_in_registration":Number,
    "between_sixteen_seventeen_age_in_registration":Number,
    "between_eighteen_nineteen_age_in_registration":Number,
    "between_twenty_thirtyfive_age_in_registration":Number,
    "high_thirtyfive_age_in_registration":Number,
    "No_of_registered_at_first_pregnant":Number,
    "no_of_before_preganancy_checked_at_first_pregnant":Number,
    "no_of_couples_for_two_clinics_at_first_pregnant":Number,
    "no_of_couples_quasin_marraige_at_first_pregnant":Number,
    "No_of_registered_more_than_equal_five_pregnancy":Number,
    "No_of_mothers_have_three_or_more_than_living_children_more_than_equal_five_pregnancy":Number,

    // SECOND PAGE

    "No_of_registered_mothers_with_rubella":Number,
    "No_of_registered_mothers_getting_folic_acid":Number,
    "No_of_new_house_walking":Number,
    "No_of_old_house_walking":Number,
    "No_of_coming_clinics_new_mothers":Number,
    "No_of_coming_clinics_old_mothers":Number,
    "No_of_out_of_registered_permanant_mothers":Number,
    "No_of_out_of_registered_not_permanant_mothers":Number,
    "No_of_out_of_notregistered_permanant_mothers":Number,
    "No_of_out_of_notregistered_notpermanant_mothers":Number,
    "No_of_permanant_mothers_removed_from_village":Number,
    "No_of_notpermanant_mothers_removed_from_village":Number,

    // 03. MOTHER PROTECTIONS AT DELIVERY

    "No_of_delivery_permant_mothers_after_walking":Number,
    "No_of_delivery_permant_mothers_hearing":Number,
    "No_of_out_of_registered_mothers_before_delivery":Number,
    "No_of_out_of_not_registered_mothers_before_delivery":Number,
    "No_of_out_of_registered_mothers_after_delivery":Number,
    "No_of_out_of_not_registered_mothers_after_delivery":Number,
    "Yoni_delivery":Number,
    "Sesar_delivary":Number,
    "Home_delivary_from_phm":Number,
    "Home_delivary_from_other_traineer":Number,
    "Home_delivary_from_not_traineer":Number,
    "No_of_mothers_get_piatagasma_protection_in_delivary":Number,
    "no_of_mothers_check_blood_group_in_delivary":Number,

    "No_of_mothers_vdrl_test_before_twelve_weeks":Number,
    "No_of_mothers_vdrl_test_after_twelve_weeks":Number,
    "No_of_mothers_hemoglobin_test_before_twelve_weeks_one":Number,
    "No_of_mothers_hemoglobin_test_before_twelve_weeks_two":Number,
    "No_of_mothers_hemoglobin_test_before_twelve_weeks_three":Number,
    "No_of_mothers_hemoglobin_test_twentysix_twentyeight_weeks_one":Number,
    "No_of_mothers_hemoglobin_test_twentysix_twentyeight_weeks_two":Number,
    "No_of_mothers_hemoglobin_test_twentysix_twentyeight_weeks_three":Number,
    "No_of_mothers_sugar_test_before_twelve_weeks_normal":Number,
    "No_of_mothers_sugar_test_before_twelve_weeks_abnormal":Number,
    "No_of_mothers_hemoglobin_test_twentyfour_twentyeight_weeks_normal":Number,
    "No_of_mothers_hemoglobin_test_twentyfour_twentyeight_weeks_abnormal":Number,
    "No_of_mothers_do_hiv_check":Number,
    "no_of_couples_join_one_clinic":Number,
    "No_of_couples_join_two_clinic":Number,
    "no_of_couples_join_three_clinic":Number,

    // THIRD PAGE

    "No_of_mothers_join_child_development_clinic":Number,
    "No_of_mothers_less_than_three_clinics":Number,
    "No_of_mothers_between_four_seven_clinics":Number,
    "No_of_mothers_more_than_eight_clinics":Number,
    "No_of_mothers_good_for_vdrl":Number,
    "No_of_mothers_for_dental_treatement":Number,
    "No_of_mothers_identify_dental_problems":Number,

    // 04. MOTHER PROTECTIONS

    "No_of_mothers_identify_health_problems_pregnancy_time":Number,
    "Blood_presure_before":Number,
    "Blood_presure_prgnancy":Number,
    "Sugar_before":Number,
    "Sugar_pregnancy":Number,
    "Nirakthiya":Number,
    "Rakthapathya":Number,
    "Aduma":Number,
    "Heart_diseases":Number,
    "Akma_diseases":Number,
    "Mental_problems":Number,
    "Sexual_problems":Number,
    "Thairoid_diseases":Number,
    "Urinary_tract_infections":Number,
    "Other":Number,

    // 05. RESULT OF PREGNANCY
    "No_of_live_birth_first_permamnt":Number,
    "No_of_live_birth_second_permamnt":Number,
    "no_of_live_birth_notpermamnt":Number,

    // FOUR PAGE

    "More_than_two_kg_first_one_birth":Number,
    "More_than_two_kg_second_one_birth":Number,
    "less_than_two_kg_first_one_birth":Number,
    "Less_than_two_kg_second_one_birth":Number,
    "More_than_two_kg_first_more_birth":Number,
    "More_than_two_kg_second_more_birth":Number,
    "less_than_two_kg_first_more_birth":Number,
    "Less_than_two_kg_second_more_birth":Number,

    "More_than_two_kg_one_birth":Number,
    "less_than_two_kg_one_birth":Number,
    "More_than_two_kg_more_birth":Number,
    "less_than_two_kg_more_birth":Number,
    "No_of_abortions":Number,
    "No_of_death_birth":Number,
    "No_of_mother_death":Number,

    // 06. AFTER DELIVERY
    "No_of_after_dekivary_mothers":Number,
    "New_first_five_days":Number,
    "Old_first_five_days":Number,
    "New_between_six_ten_days":Number,
    "Old_between_six_ten_days":Number,
    "Between_elevn_thirteen_days":Number,
    "New_between_fouteen_twentyone_days":Number,
    "Old_between_fouteen_twentyone_days":Number,
    "Near_fourtytwo_days":Number,
    "no_of_after_delivery_mothers_get_vitamine_A":Number,
    "No_of_mothers_have_after_delivery_problems":Number,

    "Hemorrhagic":Number,
    "diseses_reproductivE_system":Number,
    "Urinary_tract":Number,
    "Vitapiya_infection":Number,
    "Vitapiya_broken":Number,
    "Vaginal_infection":Number,
    "Sesariyan_cut":Number,
    "Mental_problem_after":Number,
    "Depression":Number,
    "Nipples_erruptions":Number,
    "milk_tightning_breat":Number,

    // FIVE PAGE
    "Breast_infection":Number,
    "High_blood_presure":Number,
    "Heart":Number,
    "Blood_sugar":Number,
    // "Other_detial1":String,
    // "Other1_no":Number,
    // "Other_detial2":String,
    // "Other2_no":Number,
    // "Other_detial3":String,
    // "Other3_no":Number,

    // 07.CHILD PROTECTION
    "No_of_child":Number,
    "No_of_registered_child":Number,
    "No_of_removed_child":Number,
    "New_house_walking_after_fourtytwo_days":Number,
    "Old_house_walking_after_fourtytwo_days":Number,
    "Join_to_the_clinic_first_month":Number,
    "Join_to_the_clinic_after_month":Number,
    "Join_to_the_clinic_old":Number,
    "No_of_child_measured_weight_at_clinic":Number,
    "No_of_child_measured_weight_at_weight_clinic":Number,
    "Low_weight_child":Number,
    "More_low_weight_child":Number,
    "High_weight_child":Number,
    "give_vitamine_A_six_month":Number,
    "give_vitamine_A_twelve_month":Number,
    "No_of_child_death_between_one_seven_days":Number,
    "No_of_child_death_between_eight_twentyeight_days":Number,
    "No_of_child_death_at_birth":Number,
    "Total_child_death":Number,
    "Nishpuranaya":Number,
    "New_infections":Number,
    "Birth_infections":Number,
    "Premature":Number,
    "Other_num":Number,

    // 08.  Year 1-5 CHILD PROTECTION
    "No_of_child_between_one_five":Number,
    "No_of_nursary_child":Number,
    "New_house_walking_for_small_child":Number,
    "Old_house_walking_for_small_child":Number,
    "New_house_walking_for_nursary_child":Number,
    "Old_house_walking_for_nursary_child":Number,

    // SIX PAGE
    "No_of_small_child_measure_weight_at_clinic":Number,
    "No_of_small_child_measure_weight_at_weight_clinic":Number,
    "No_of_small_child_low_weight":Number,
    "No_of_small_child_more_low_weight":Number,
    "No_of_small_child_high_weight":Number,
    "No_of_nurasry_child_measure_weight_at_clinic":Number,
    "No_of_nursaryl_child_measure_weight_at_weight_clinic":Number,
    "No_of_nursary_child_low_weight":Number,
    "No_of_nursary_child_more_low_weight":Number,
    "No_of_nursary_child_high_weight":Number,

    "no_of_child_give_vitamine_A_18_month":Number,
    "no_of_child_give_vitamine_A_2_yr":Number,
    "no_of_child_give_vitamine_A_3_yr":Number,
    "no_of_child_give_vitamine_A_4_yr":Number,
    "no_of_child_give_warm_18_month":Number,
    "no_of_child_give_warm_2_yr":Number,
    "no_of_child_give_warm_3_yr":Number,
    "No_of_child_give_warm_4_yr":Number,

    "No_of_coming_clinic_new_1_2_yr":Number,
    "no_of_coming_clinic_old_1_2_yr":Number,
    "no_of_coming_clinic_new_2_5_yr":Number,
    "No_of_coming_clinic_old_2_5_yr":Number,

    "No_of_small_child_death":Number,
    "Accident":Number,
    "Infections":Number,
    "Diarrhea":Number,
    "Respiratory":Number,
    "Other_inform":String,
    "Other_numb":Number,
    "No_of_aefi_child":Number,

    // 09. Child and newyoungers
    "No_of_new_youngers":Number,
    "No_of_new_registered_new_youngers":Number,
    "No_of_removed_new_youngers":Number,
    "No_of_house_walking_new_youngers":Number,
    "No_of_problems":Number,
    "No_of_enter_phm":Number,
    "No_of_referes":Number,
    "No_of_death_between_5_10_yr":Number,
    "no_of_death_between_10_19_yr":Number,

    // SEVEN PAGE
    // FAMILY PLANNING

    "No_of_couples_start_month_tablet":Number,
    "New_identified_tablet":Number,
    "Removed_tablet":Number,
    "No_of_packet":Number,

    "No_of_couples_start_month_injection":Number,
    "New_identified_injection":Number,
    "Removed_injection":Number,

    "No_of_couples_start_month_uterus":Number,
    "New_identified_uterus":Number,
    "Removed_uterus":Number,

    "No_of_couples_start_month_hormona":Number,
    "New_identified_hormona":Number,
    "Removed_hormona":Number,

    "No_of_couples_start_month_condom":Number,
    "New_identified_condom":Number,
    "Removed_condom":Number,

    "No_of_couples_start_month_lady":Number,
    "New_identified_lady":Number,
    "Removed_lady":Number,

    "No_of_couples_start_month_man":Number,
    "New_identified_man":Number,
    "Removed_man":Number,

    "Total_couples_using_new_family_palning":Number,

    "No_of_couples_start_month_old":Number,
    "New_identified_old":Number,
    "accept_new_old":Number,
    "Removed_old":Number,

    "No_of_couples_start_month_not_use":Number,
    "New_identified_not_use":Number,
    "accept_use":Number,
    "Removed_not_use":Number,

    // EIGHT PAGE

    "No_of_couples_start_month_madasaru":Number,
    "New_identified_madasaru":Number,
    "prganant_that_month_madasaru":Number,
    "Removed_madasaru":Number,
    "Reffer_madasaru":Number,

    "Fail_family_plan_one_detail":String,
    "Fail_family_plan_one":Number,
    "Fail_family_plan_two_detai":String,
    "Fail_family_plan_two":Number,
    "Fail_family_plan_three_detail":String,
    "Fail_family_plan_three":Number,

    "No_of_high_infections":Number,
    "No_of_house_walking_new_famiy_planners":Number,

    // 11.Sexual society
    "No_of_arresements_man":Number,
    "No_of_arresements_woman":Number,
    "No_of_arresements_mental_new":Number,
    "No_of_arresements_mental_old":Number,
    "No_of_reffers":Number,

    // 12. OTHER
    "About_nutritions":Number,
    "No_of_clinics_married":Number,
    "No_of_suawanari_clinic":Number,
    "house_wlking_suawanari_clinic":Number,
    "No_of_clinic_joined":Number,
    "No_of_special_clinics":Number,
    "No_of_school_clinic":Number,

    // 13.VISITING
    "Officer":Number,
    "Health_officer":Number,
    "Deputy_officer":Number,
    "Nurse":Number,
    "Mo_nurse":Number,
    "Phm":Number,
    "date":Date


}, {
    collection: 'Phms'
});
var phm = mongoose.model('phm', phm);

module.exports = phm;