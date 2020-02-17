import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { PhmdailyupdateService } from 'app/Services/phmdailyupdate.service';
//import { FamiliesService } from 'app/Services/families.service';
import { from } from 'rxjs';
import { Router } from '@angular/router';

@Component({
  selector: 'app-phm-daily-reports',
  templateUrl: './phm-daily-reports.component.html',
  styleUrls: ['./phm-daily-reports.component.scss'],
  providers: [PhmdailyupdateService]
})
export class PhmDailyReportsComponent implements OnInit {

  phmForm: FormGroup;
  submitted = false;
  success = false;

  constructor(private formBuilder: FormBuilder, private addphmService: PhmdailyupdateService,private router: Router) { }

  ngOnInit() {
    this.phmForm = this.formBuilder.group({
      
      // MOH_division: ['', Validators.required],
      date_of_today : ['', Validators.required],
      // Batch_no : ['', Validators.required],
      // Division : ['', Validators.required],
      Moh_population_urban :[''],
      Moh_population_rural :[''],
      Moh_population_other :[''],
      Number_of_birth_for_year:[''],
      Number_of_baby_death_for_year:[''],
      Number_of_mother_death_for_year:[''],
      Number_of_child_death_for_year:[''],
      No_of_approved_families_start_of_month:[''],
      No_of_new_registered_family:[''],
      No_of_removed_family_from_form:[''],
      No_of_house_walking:[''],
      No_of_low_risk_mothers:[''],
      No_of_hish_risk_mothers:[''],
      Registered_mothers_before_eight_weeks:[''],
      Registered_mothers_between_eight_twelve_weeks:[''],
      Registered_mothers_after_twelve_weeks:[''],
      Low_sixteen_age_in_registration:[''],
      between_sixteen_seventeen_age_in_registration:[''],
      between_eighteen_nineteen_age_in_registration:[''],
      between_twenty_thirtyfive_age_in_registration:[''],
      high_thirtyfive_age_in_registration:[''],
      No_of_registered_at_first_pregnant:[''],
      no_of_before_preganancy_checked_at_first_pregnant:[''],
      no_of_couples_for_two_clinics_at_first_pregnant:[''],
      no_of_couples_quasin_marraige_at_first_pregnant:[''],
      No_of_registered_more_than_equal_five_pregnancy:[''],
      No_of_mothers_have_three_or_more_than_living_children_more_than_equal_five_pregnancy:[''],
      No_of_registered_mothers_with_rubella:[''],
      No_of_registered_mothers_getting_folic_acid:[''],
      No_of_new_house_walking:[''],
      No_of_old_house_walking:[''],
      No_of_coming_clinics_new_mothers:[''],
      No_of_coming_clinics_old_mothers:[''],
      No_of_out_of_registered_permanant_mothers:[''],
      No_of_out_of_registered_not_permanant_mothers:[''],
      No_of_out_of_notregistered_permanant_mothers:[''],
      No_of_out_of_notregistered_notpermanant_mothers:[''],
      No_of_permanant_mothers_removed_from_village:[''],
      No_of_notpermanant_mothers_removed_from_village:[''],

      // 03. MOTHER PROTECTIONS AT DELIVERY

      No_of_delivery_permant_mothers_after_walking:[''],
      No_of_delivery_permant_mothers_hearing:[''],
      No_of_out_of_registered_mothers_before_delivery:[''],
      No_of_out_of_not_registered_mothers_before_delivery:[''],
      No_of_out_of_registered_mothers_after_delivery:[''],
      No_of_out_of_not_registered_mothers_after_delivery:[''],
      Yoni_delivery:[''],
      Sesar_delivary:[''],
      Home_delivary_from_phm:[''],
      Home_delivary_from_other_traineer:[''],
      Home_delivary_from_not_traineer:[''],
      No_of_mothers_get_piatagasma_protection_in_delivary:[''],
      no_of_mothers_check_blood_group_in_delivary:[''],

      No_of_mothers_vdrl_test_before_twelve_weeks:[''],
      No_of_mothers_vdrl_test_after_twelve_weeks:[''],
      No_of_mothers_hemoglobin_test_before_twelve_weeks_one:[''],
      No_of_mothers_hemoglobin_test_before_twelve_weeks_two:[''],
      No_of_mothers_hemoglobin_test_before_twelve_weeks_three:[''],
      No_of_mothers_hemoglobin_test_twentysix_twentyeight_weeks_one:[''],
      No_of_mothers_hemoglobin_test_twentysix_twentyeight_weeks_two:[''],
      No_of_mothers_hemoglobin_test_twentysix_twentyeight_weeks_three:[''],
      No_of_mothers_sugar_test_before_twelve_weeks_normal:[''],
      No_of_mothers_sugar_test_before_twelve_weeks_abnormal:[''],
      No_of_mothers_hemoglobin_test_twentyfour_twentyeight_weeks_normal:[''],
      No_of_mothers_hemoglobin_test_twentyfour_twentyeight_weeks_abnormal:[''],
      No_of_mothers_do_hiv_check:[''],
      no_of_couples_join_one_clinic:[''],
      No_of_couples_join_two_clinic:[''],
      no_of_couples_join_three_clinic:[''],

      // THIRD PAGE

      No_of_mothers_join_child_development_clinic:[''],
      No_of_mothers_less_than_three_clinics:[''],
      No_of_mothers_between_four_seven_clinics:[''],
      No_of_mothers_more_than_eight_clinics:[''],
      No_of_mothers_good_for_vdrl:[''],
      No_of_mothers_for_dental_treatement:[''],
      No_of_mothers_identify_dental_problems:[''],
      
      // 04. MOTHER PROTECTIONS

      No_of_mothers_identify_health_problems_pregnancy_time:[''],
      Blood_presure_before:[''],
      Blood_presure_prgnancy:[''],
      Sugar_before:[''],
      Sugar_pregnancy:[''],
      Nirakthiya:[''],
      Rakthapathya:[''],
      Aduma:[''],
      Heart_diseases:[''],
      Akma_diseases:[''],
      Mental_problems:[''],
      Sexual_problems:[''],
      Thairoid_diseases:[''],
      Urinary_tract_infections:[''],
      Other:[''],

      // 05. RESULT OF PREGNANCY
      No_of_live_birth_first_permamnt:[''],
      No_of_live_birth_second_permamnt:[''],
      no_of_live_birth_notpermamnt:[''],

      // FOUR PAGE

      More_than_two_kg_first_one_birth:[''],
      More_than_two_kg_second_one_birth:[''],
      less_than_two_kg_first_one_birth:[''],
      Less_than_two_kg_second_one_birth:[''],
      More_than_two_kg_first_more_birth:[''],
      More_than_two_kg_second_more_birth:[''],
      less_than_two_kg_first_more_birth:[''],
      Less_than_two_kg_second_more_birth:[''],
      More_than_two_kg_one_birth:[''],
      less_than_two_kg_one_birth:[''],
      More_than_two_kg_more_birth:[''],
      less_than_two_kg_more_birth:[''],
      No_of_abortions:[''],
      No_of_death_birth:[''],
      No_of_mother_death:[''],

      // 06. AFTER DELIVERY
      No_of_after_dekivary_mothers:[''],
      New_first_five_days:[''],
      Old_first_five_days:[''],
      New_between_six_ten_days:[''],
      Old_between_six_ten_days:[''],
      Between_elevn_thirteen_days:[''],
      New_between_fouteen_twentyone_days:[''],
      Old_between_fouteen_twentyone_days:[''],
      Near_fourtytwo_days:[''],
      no_of_after_delivery_mothers_get_vitamine_A:[''],
      No_of_mothers_have_after_delivery_problems:[''],

      Hemorrhagic:[''],
      diseses_reproductivE_system:[''],
      Urinary_tract:[''],
      Vitapiya_infection:[''],
      Vitapiya_broken:[''],
      Vaginal_infection:[''],
      Sesariyan_cut:[''],
      Mental_problem_after:[''],
      Depression:[''],
      Nipples_erruptions:[''],
      milk_tightning_breat:[''],

      // FIVE PAGE
      Breast_infection:[''],
      High_blood_presure:[''],
      Heart:[''],
      Blood_sugar:[''],
      
      // 07.CHILD PROTECTION
      No_of_child:[''],
      No_of_registered_child:[''],
      No_of_removed_child:[''],
      New_house_walking_after_fourtytwo_days:[''],
      Old_house_walking_after_fourtytwo_days:[''],
      Join_to_the_clinic_first_month:[''],
      Join_to_the_clinic_after_month:[''],
      Join_to_the_clinic_old:[''],
      No_of_child_measured_weight_at_clinic:[''],
      No_of_child_measured_weight_at_weight_clinic:[''],
      Low_weight_child:[''],
      More_low_weight_child:[''],
      High_weight_child:[''],
      give_vitamine_A_six_month:[''],
      give_vitamine_A_twelve_month:[''],
      No_of_child_death_between_one_seven_days:[''],
      No_of_child_death_between_eight_twentyeight_days:[''],
      No_of_child_death_at_birth:[''],
      Total_child_death:[''],
      Nishpuranaya:[''],
      New_infections:[''],
      Birth_infections:[''],
      Premature:[''],
      Other_num:[''],

      // 08.  Year 1-5 CHILD PROTECTION
      No_of_child_between_one_five:[''],
      No_of_nursary_child:[''],
      New_house_walking_for_small_child:[''],
      Old_house_walking_for_small_child:[''],
      New_house_walking_for_nursary_child:[''],
      Old_house_walking_for_nursary_child:[''],

      // SIX PAGE
      No_of_small_child_measure_weight_at_clinic:[''],
      No_of_small_child_measure_weight_at_weight_clinic:[''],
      No_of_small_child_low_weight:[''],
      No_of_small_child_more_low_weight:[''],
      No_of_small_child_high_weight:[''],
      No_of_nurasry_child_measure_weight_at_clinic:[''],
      No_of_nursaryl_child_measure_weight_at_weight_clinic:[''],
      No_of_nursary_child_low_weight:[''],
      No_of_nursary_child_more_low_weight:[''],
      No_of_nursary_child_high_weight:[''],

      no_of_child_give_vitamine_A_18_month:[''],
      no_of_child_give_vitamine_A_2_yr:[''],
      no_of_child_give_vitamine_A_3_yr:[''],
      no_of_child_give_vitamine_A_4_yr:[''],
      no_of_child_give_warm_18_month:[''],
      no_of_child_give_warm_2_yr:[''],
      no_of_child_give_warm_3_yr:[''],
      No_of_child_give_warm_4_yr:[''],

      No_of_coming_clinic_new_1_2_yr:[''],
      no_of_coming_clinic_old_1_2_yr:[''],
      no_of_coming_clinic_new_2_5_yr:[''],
      No_of_coming_clinic_old_2_5_yr:[''],

      No_of_small_child_death:[''],
      Accident:[''],
      Infections:[''],
      Diarrhea:[''],
      Respiratory:[''],
      Other_numb:[''],
      No_of_aefi_child:[''],

      // 09. Child and newyoungers
      No_of_new_youngers:[''],
      No_of_new_registered_new_youngers:[''],
      No_of_removed_new_youngers:[''],
      No_of_house_walking_new_youngers:[''],
      No_of_problems:[''],
      No_of_enter_phm:[''],
      No_of_referes:[''],
      No_of_death_between_5_10_yr:[''],
      no_of_death_between_10_19_yr:[''],

      // SEVEN PAGE
      // FAMILY PLANNING

      No_of_couples_start_month_tablet:[''],
      New_identified_tablet:[''],
      Removed_tablet:[''],
      No_of_packet:[''],

      No_of_couples_start_month_injection:[''],
      New_identified_injection:[''],
      Removed_injection:[''],

      No_of_couples_start_month_uterus:[''],
      New_identified_uterus:[''],
      Removed_uterus:[''],

      No_of_couples_start_month_hormona:[''],
      New_identified_hormona:[''],
      Removed_hormona:[''],

      No_of_couples_start_month_condom:[''],
      New_identified_condom:[''],
      Removed_condom:[''],

      No_of_couples_start_month_lady:[''],
      New_identified_lady:[''],
      Removed_lady:[''],

      No_of_couples_start_month_man:[''],
      New_identified_man:[''],
      Removed_man:[''],

      Total_couples_using_new_family_palning:[''],

      No_of_couples_start_month_old:[''],
      New_identified_old:[''],
      accept_new_old:[''],
      Removed_old:[''],

      No_of_couples_start_month_not_use:[''],
      New_identified_not_use:[''],
      accept_use:[''],
      Removed_not_use:[''],

      // EIGHT PAGE

      No_of_couples_start_month_madasaru:[''],
      New_identified_madasaru:[''],
      prganant_that_month_madasaru:[''],
      Removed_madasaru:[''],
      Reffer_madasaru:[''],

      Fail_family_plan_one_detail:[''],
      Fail_family_plan_one:[''],
      Fail_family_plan_two_detai:[''],
      Fail_family_plan_two:[''],
      // Fail_family_plan_three_detail:String,
      // Fail_family_plan_three:[''],

      No_of_high_infections:[''],
      No_of_house_walking_new_famiy_planners:[''],

      // 11.Sexual society
      No_of_arresements_man:[''],
      No_of_arresements_woman:[''],
      No_of_arresements_mental_new:[''],
      No_of_arresements_mental_old:[''],
      No_of_reffers:[''],

      // 12. OTHER
      About_nutritions:[''],
      No_of_clinics_married:[''],
      No_of_suawanari_clinic:[''],
      house_wlking_suawanari_clinic:[''],
      No_of_clinic_joined:[''],
      No_of_special_clinics:[''],
      No_of_school_clinic:[''],

      // 13.VISITING
      Officer:[''],
      Health_officer:[''],
      Deputy_officer:[''],
      Nurse:[''],
      Mo_nurse:[''],
      Phm:[''],
    });
    
  }

  onSubmit() {
    this.submitted = true;
      

    if (this.phmForm.invalid) {
        return;
    }

    this.success = true;
    this.addphmService.add(this.phmForm.value)
      .subscribe(
        response=>console.log('Success!',response),
        error=>{
          if(error) console.log("Failure") 
          else console.log("Success No Errors")
        }
    );
}
GotoMonth(year,month){
  
  this.router.navigate(["ViewWeightTable",'MonthlyReport',year,month])
}

}
