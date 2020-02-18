var express = require('express');
var router = express.Router();
var Phm = require('../Schemas/phm');
var mongoose = require('mongoose');


//add daily data
router.post('/add', (req, res) => {
    console.log(req.body);
    var data = new Phm(req.body);
    data.save((err,doc)=>{
        res.status(200).send("Inserted successfully.");
    });
    console.log("Completed");
});

router.get('/view', (req, res) => {
    Phm.find((err, doc) => {
        res.send(doc)
    })
    
});

//create monthly report from the phm daily report
router.get('/MonthlyReport/:year/:month',(req,res)=>{
    currentMonth = req.params.month
    console.log(currentMonth)
    nextMonthInt = parseInt(currentMonth)
    console.log(nextMonthInt)
    nextMonthInt += 1
    console.log(nextMonthInt)
    nextMonth = "0"+nextMonthInt.toString();
    console.log(nextMonth)
     
    Year = req.params.year
    console.log(Year)

    Phm.aggregate([
        {$match :{
            "date_of_today": 
            {
                $gte: new Date(`${Year}-${currentMonth}-01T00:00:00.000Z`),
                $lt: new Date(`${Year}-${nextMonth}-01T00:00:00.000Z`),
            }
        }

        },
        {
            $group:{
                           _id:null,
                           
                        "No_of_new_registered_family":{$sum:"$No_of_new_registered_family"},
                        "No_of_house_walking":{$sum:"$No_of_house_walking"},
                        "No_of_low_risk_mothers":{$sum:"$No_of_low_risk_mothers"},
                        "No_of_hish_risk_mothers":{$sum:"$No_of_hish_risk_mothers"},
                        "Registered_mothers_before_eight_weeks":{$sum:"$Registered_mothers_before_eight_weeks"},
                        "Registered_mothers_between_eight_twelve_weeks":{$sum:"$Registered_mothers_between_eight_twelve_weeks"},
                        "Registered_mothers_after_twelve_weeks":{$sum:"$Registered_mothers_after_twelve_weeks"},
                        "Low_sixteen_age_in_registration":{$sum:"$Low_sixteen_age_in_registration"},
                        "between_sixteen_seventeen_age_in_registration":{$sum:"$between_sixteen_seventeen_age_in_registration"},
                        "between_eighteen_nineteen_age_in_registration":{$sum:"$between_eighteen_nineteen_age_in_registration"},
                        "between_twenty_thirtyfive_age_in_registration":{$sum:"$between_twenty_thirtyfive_age_in_registration"},
                        "high_thirtyfive_age_in_registration":{$sum:"$high_thirtyfive_age_in_registration"},

                        "No_of_registered_at_first_pregnant":{$sum:"$No_of_registered_at_first_pregnant"},
                        "no_of_before_preganancy_checked_at_first_pregnant":{$sum:"$no_of_before_preganancy_checked_at_first_pregnant"},
                        "no_of_couples_for_two_clinics_at_first_pregnant":{$sum:"$no_of_couples_for_two_clinics_at_first_pregnant"},
                        "no_of_couples_quasin_marraige_at_first_pregnant":{$sum:"$no_of_couples_quasin_marraige_at_first_pregnant"},
                        "No_of_registered_more_than_equal_five_pregnancy":{$sum:"$No_of_registered_more_than_equal_five_pregnancy"},
                        "No_of_mothers_have_three_or_more_than_living_children_more_than_equal_five_pregnancy":{$sum:"$No_of_mothers_have_three_or_more_than_living_children_more_than_equal_five_pregnancy"},

                        "No_of_registered_mothers_with_rubella":{$sum:"$No_of_registered_mothers_with_rubella"},
                        "No_of_registered_mothers_getting_folic_acid":{$sum:"$No_of_registered_mothers_getting_folic_acid"},
                        "No_of_new_house_walking":{$sum:"$No_of_new_house_walking"},
                        "No_of_old_house_walking":{$sum:"$No_of_old_house_walking"},
                        "No_of_coming_clinics_new_mothers":{$sum:"$No_of_coming_clinics_new_mothers"},
                        "No_of_coming_clinics_old_mothers":{$sum:"$No_of_coming_clinics_old_mothers"},
                        "No_of_out_of_registered_permanant_mothers":{$sum:"$No_of_out_of_registered_permanant_mothers"},
                        "No_of_out_of_registered_not_permanant_mothers":{$sum:"$No_of_out_of_registered_not_permanant_mothers"},
                        
                        "No_of_out_of_notregistered_permanant_mothers":{$sum:"$No_of_out_of_notregistered_permanant_mothers"},
                        "No_of_out_of_notregistered_notpermanant_mothers":{$sum:"$No_of_out_of_notregistered_notpermanant_mothers"},
                        

                        "No_of_delivery_permant_mothers_after_walking":{$sum:"No_of_delivery_permant_mothers_after_walking"},
                        "No_of_delivery_permant_mothers_hearing":{$sum:"No_of_delivery_permant_mothers_hearing"},
                        "No_of_out_of_registered_mothers_before_delivery":{$sum:"$No_of_out_of_registered_mothers_before_delivery"},
                        "No_of_out_of_not_registered_mothers_before_delivery":{$sum:"$No_of_out_of_not_registered_mothers_before_delivery"},
                        "No_of_out_of_registered_mothers_after_delivery":{$sum:"$No_of_out_of_registered_mothers_after_delivery"},
                        "No_of_out_of_not_registered_mothers_after_delivery":{$sum:"$No_of_out_of_not_registered_mothers_after_delivery"},
                        "Yoni_delivery":{$sum:"$Yoni_delivery"},
                        "Sesar_delivary":{$sum:"$Sesar_delivary"},
                        "Home_delivary_from_phm":{$sum:"$Home_delivary_from_phm"},
                        "Home_delivary_from_other_traineer":{$sum:"$Home_delivary_from_other_traineer"},
                        "Home_delivary_from_not_traineer":{$sum:"Home_delivary_from_not_traineer"},
                        "no_of_mothers_check_blood_group_in_delivary":{$sum:"$no_of_mothers_check_blood_group_in_delivary"},
                        "No_of_mothers_get_piatagasma_protection_in_delivary":{$sum:"No_of_mothers_get_piatagasma_protection_in_delivary"},
                        "No_of_mothers_vdrl_test_before_twelve_weeks":{$sum:"$No_of_mothers_vdrl_test_before_twelve_weeks"},
                        "No_of_mothers_vdrl_test_after_twelve_weeks":{$sum:"$No_of_mothers_vdrl_test_after_twelve_weeks"},
                        "No_of_mothers_hemoglobin_test_before_twelve_weeks_one":{$sum:"$No_of_mothers_hemoglobin_test_before_twelve_weeks_one"},
                        "No_of_mothers_hemoglobin_test_before_twelve_weeks_two":{$sum:"$No_of_mothers_hemoglobin_test_before_twelve_weeks_two"},
                        "No_of_mothers_hemoglobin_test_before_twelve_weeks_three":{$sum:"$No_of_mothers_hemoglobin_test_before_twelve_weeks_three"},
                        "No_of_mothers_hemoglobin_test_twentysix_twentyeight_weeks_one":{$sum:"$No_of_mothers_hemoglobin_test_twentysix_twentyeight_weeks_one"},
                        "No_of_mothers_hemoglobin_test_twentysix_twentyeight_weeks_two":{$sum:"$No_of_mothers_hemoglobin_test_twentysix_twentyeight_weeks_two"},
                        "No_of_mothers_hemoglobin_test_twentysix_twentyeight_weeks_three":{$sum:"$No_of_mothers_hemoglobin_test_twentysix_twentyeight_weeks_three"},
                        "No_of_mothers_sugar_test_before_twelve_weeks_normal":{$sum:"$No_of_mothers_sugar_test_before_twelve_weeks_normal"},
                        "No_of_mothers_sugar_test_before_twelve_weeks_abnormal":{$sum:"$No_of_mothers_sugar_test_before_twelve_weeks_abnormal"},
                        "No_of_mothers_hemoglobin_test_twentyfour_twentyeight_weeks_normal":{$sum:"$No_of_mothers_hemoglobin_test_twentyfour_twentyeight_weeks_normal"},
                        "No_of_mothers_hemoglobin_test_twentyfour_twentyeight_weeks_abnormal":{$sum:"$No_of_mothers_hemoglobin_test_twentyfour_twentyeight_weeks_abnormal"},
                        "No_of_mothers_do_hiv_check":{$sum:"$No_of_mothers_do_hiv_check"},
                        "no_of_couples_join_one_clinic":{$sum:"$no_of_couples_join_one_clinic"},
                        "No_of_couples_join_two_clinic":{$sum:"$No_of_couples_join_two_clinic"},
                        "no_of_couples_join_three_clinic":{$sum:"no_of_couples_join_three_clinic"},
                        "No_of_mothers_join_child_development_clinic":{$sum:"No_of_mothers_join_child_development_clinic"},
                        "No_of_mothers_less_than_three_clinics":{$sum:"No_of_mothers_less_than_three_clinics"},
                        "No_of_mothers_between_four_seven_clinics":{$sum:"$No_of_mothers_between_four_seven_clinics"},
                        "No_of_mothers_more_than_eight_clinics":{$sum:"$No_of_mothers_more_than_eight_clinics"},
                        "No_of_mothers_good_for_vdrl":{$sum:"$No_of_mothers_good_for_vdrl"},
                        "No_of_mothers_for_dental_treatement":{$sum:"$No_of_mothers_for_dental_treatement"},
                        "No_of_mothers_identify_dental_problems":{$sum:"$No_of_mothers_identify_dental_problems"},

                        "No_of_mothers_identify_health_problems_pregnancy_time":{$sum:"No_of_mothers_identify_health_problems_pregnancy_time"},
                        "Blood_presure_before":{$sum:"$Blood_presure_before"},
                        "Blood_presure_prgnancy":{$sum:"$Blood_presure_prgnancy"},
                        "Sugar_before":{$sum:"$Sugar_before"},
                        "Sugar_pregnancy":{$sum:"$Sugar_pregnancy"},

                        "No_of_live_birth_first_permamnt":{$sum:{$add:["$No_of_live_birth_first_permamnt","$No_of_live_birth_second_permamnt","$no_of_live_birth_notpermamnt"]}},
                        "No_of_abortions":{$sum:"$No_of_abortions"},
                        "No_of_death_birth":{$sum:"$No_of_death_birth"},
                        "No_of_mother_death":{$sum:"$No_of_mother_death"},

                        "No_of_after_dekivary_mothers":{$sum:"$No_of_after_dekivary_mothers"},
                        "New_first_five_days":{$sum:{$add:["$New_first_five_days","$Old_first_five_days"]}},
                        "New_between_six_ten_days":{$sum:{$add:["$New_between_six_ten_days","$Old_between_six_ten_days"]}},
                        "Between_elevn_thirteen_days":{$sum:"$Between_elevn_thirteen_days"},
                        "New_between_fouteen_twentyone_days":{$sum:{$add:["$New_between_fouteen_twentyone_days","$Old_between_fouteen_twentyone_days"]}},
                        "Near_fourtytwo_days":{$sum:"$Near_fourtytwo_days"},
                        "no_of_after_delivery_mothers_get_vitamine_A":{$sum:"$no_of_after_delivery_mothers_get_vitamine_A"},

                        "Hemorrhagic":{$sum:"$Hemorrhagic"},
                        "diseses_reproductivE_system":{$sum:"$diseses_reproductivE_system"},
                        "Urinary_tract":{$sum:"$Urinary_tract"},
                        "Vitapiya_infection":{$sum:"$Vitapiya_infection"},
                        "Vitapiya_broken":{$sum:"$Vitapiya_broken"},
                        "Vaginal_infection":{$sum:"$Vaginal_infection"},
                        "Sesariyan_cut":{$sum:"$Sesariyan_cut"},
                        "Mental_problem_after":{$sum:"$Mental_problem_after"},
                        "Depression":{$sum:"$Depression"},
                        "Nipples_erruptions":{$sum:"$Nipples_erruptions"},
                        "milk_tightning_breat":{$sum:"$milk_tightning_breat"},
                        "Breast_infection":{$sum:"$Breast_infection"},
                        "High_blood_presure":{$sum:"$High_blood_presure"},
                        "Heart":{$sum:"$Heart"},
                        "Blood_sugar":{$sum:"$Blood_sugar"},

                        "No_of_registered_child":{$sum:"$No_of_registered_child"},
                        "New_house_walking_after_fourtytwo_days":{$sum:{$add:["$New_house_walking_after_fourtytwo_days","$Old_house_walking_after_fourtytwo_days"]}},
                        "Join_to_the_clinic_first_month":{$sum:"$Join_to_the_clinic_first_month"},
                        "Join_to_the_clinic_after_month":{$sum:"$Join_to_the_clinic_after_month"},

                        "No_of_child_death_between_one_seven_days":{$sum:"$No_of_child_death_between_one_seven_days"},
                        "No_of_child_death_between_eight_twentyeight_days":{$sum:"$No_of_child_death_between_eight_twentyeight_days"},
                        "No_of_child_death_at_birth":{$sum:"$No_of_child_death_at_birth"},
                        "Nishpuranaya":{$sum:"$Nishpuranaya"},
                        "New_infections":{$sum:"$New_infections"},
                        "Birth_infections":{$sum:"$Birth_infections"},
                        "Premature":{$sum:"$Premature"},
                        "Other_num":{$sum:"$Other_num"},

                        "No_of_child_between_one_five":{$sum:"$No_of_child_between_one_five"},
                        "No_of_nursary_child":{$sum:"$No_of_nursary_child"},
                        "New_house_walking_for_small_child":{$sum:{$add:["$New_house_walking_for_small_child","$Old_house_walking_for_small_child"]}},
                        "New_house_walking_for_nursary_child":{$sum:{$add:["$New_house_walking_for_nursary_child","$Old_house_walking_for_nursary_child"]}},

                        "no_of_child_give_vitamine_A_18_month":{$sum:"$no_of_child_give_vitamine_A_18_month"},
                        "no_of_child_give_vitamine_A_2_yr":{$sum:"$no_of_child_give_vitamine_A_2_yr"},
                        "no_of_child_give_vitamine_A_3_yr":{$sum:"$no_of_child_give_vitamine_A_3_yr"},
                        "no_of_child_give_vitamine_A_4_yr":{$sum:"$no_of_child_give_vitamine_A_4_yr"},
                        "no_of_child_give_warm_18_month":{$sum:"$no_of_child_give_warm_18_month"},
                        "no_of_child_give_warm_2_yr":{$sum:"$no_of_child_give_warm_2_yr"},
                        "no_of_child_give_warm_3_yr":{$sum:"$no_of_child_give_warm_3_yr"},
                        "No_of_child_give_warm_4_yr":{$sum:"$No_of_child_give_warm_4_yr"},

                        "No_of_coming_clinic_new_1_2_yr":{$sum:{$add:["$No_of_coming_clinic_new_1_2_yr","$no_of_coming_clinic_old_1_2_yr"]}},
                        "no_of_coming_clinic_new_2_5_yr":{$sum:{$add:["$no_of_coming_clinic_new_2_5_yr","$No_of_coming_clinic_old_2_5_yr"]}},

                        "No_of_small_child_death":{$sum:"$No_of_small_child_death"},
                        "Accident":{$sum:"$Accident"},
                        "Infections":{$sum:"$Infections"},
                        "Diarrhea":{$sum:"$Diarrhea"},
                        "Respiratory":{$sum:"$Respiratory"},
                        "Other_numb":{$sum:"$Other_numb"},
                        "No_of_aefi_child":{$sum:"$No_of_aefi_child"},

                        "New_identified_tablet":{$sum:"$New_identified_tablet"},
                        "Removed_tablet":{$sum:"$Removed_tablet"},
                        "No_of_packet":{$sum:"$No_of_packet"},
                        "New_identified_injection":{$sum:"$New_identified_injection"},
                        "Removed_injection":{$sum:"$Removed_injection"},
                        "New_identified_uterus":{$sum:"$New_identified_uterus"},
                        "Removed_uterus":{$sum:"$Removed_uterus"},
                        "New_identified_hormona":{$sum:"$New_identified_hormona"},
                        "Removed_hormona":{$sum:"$Removed_hormona"},
                        "New_identified_condom":{$sum:"$New_identified_condom"},
                        "Removed_condom":{$sum:"$Removed_condom"},
                        "New_identified_lady":{$sum:"$New_identified_lady"},
                        "Removed_lady":{$sum:"$Removed_lady"},
                        "New_identified_man":{$sum:"$New_identified_man"},
                        "Removed_man":{$sum:"$Removed_man"},
                        "Total_couples_using_new_family_palning":{$sum:"$Total_couples_using_new_family_palning"},
                        "New_identified_old":{$sum:"$New_identified_old"},
                        "accept_new_old":{$sum:"$accept_new_old"},
                        "Removed_old":{$sum:"$Removed_old"},
                        "New_identified_not_use":{$sum:"$New_identified_not_use"},
                        "accept_use":{$sum:"$accept_use"},
                        "Removed_not_use":{$sum:"$Removed_not_use"},
                        "New_identified_madasaru":{$sum:"$New_identified_madasaru"},
                        "prganant_that_month_madasaru":{$sum:"$prganant_that_month_madasaru"},
                        "Removed_madasaru":{$sum:"$Removed_madasaru"},
                        "Reffer_madasaru":{$sum:"$Reffer_madasaru"},
                        "Fail_family_plan_one":{$sum:"$Fail_family_plan_one"},
                        "No_of_high_infections":{$sum:"$No_of_high_infections"},
                        "No_of_house_walking_new_famiy_planners":{$sum:"$No_of_house_walking_new_famiy_planners"},

                        "No_of_arresements_man":{$sum:"$No_of_arresements_man"},
                        "No_of_arresements_woman":{$sum:"$No_of_arresements_woman"},
                        "No_of_arresements_mental_new":{$sum:{$add:["$No_of_arresements_mental_new","$No_of_arresements_mental_old"]}},
                        "No_of_reffers":{$sum:"$No_of_reffers"},

                        "About_nutritions":{$sum:"$About_nutritions"},
                        "No_of_clinics_married":{$sum:"$No_of_clinics_married"},
                        "No_of_suawanari_clinic":{$sum:"$No_of_suawanari_clinic"},
                        "house_wlking_suawanari_clinic":{$sum:"$house_wlking_suawanari_clinic"},
                        "No_of_clinic_joined":{$sum:"$No_of_clinic_joined"},
                        "No_of_special_clinics":{$sum:"$No_of_special_clinics"},
                        "No_of_school_clinic":{$sum:"$No_of_school_clinic"},

    }
                    
               
               }

    ]).then(doc=>
        {
            res.status(200).json(doc[0])
    }
      )
})

module.exports = router ;