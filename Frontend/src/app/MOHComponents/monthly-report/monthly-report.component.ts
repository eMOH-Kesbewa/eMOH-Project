import { Component, OnInit } from '@angular/core';
import { PhmdailyupdateService } from 'app/Services/phmdailyupdate.service';
import { ActivatedRoute, Router } from '@angular/router';
import { FormBuilder, FormGroup, Validators,FormControl } from '@angular/forms';
import {MatSnackBar} from '@angular/material/snack-bar';
import * as html2pdf from 'html2pdf.js';


@Component({
  selector: 'app-monthly-report',
  templateUrl: './monthly-report.component.html',
  styleUrls: ['./monthly-report.component.scss']
})
export class MonthlyReportComponent implements OnInit {

  constructor(private phmService : PhmdailyupdateService,private router: Router,private activeroute: ActivatedRoute,private formBuilder: FormBuilder,private _snackBar: MatSnackBar) { }

  phmForm:FormGroup
  autoRenew : FormControl;
  public year;
  public month;
  ngOnInit() {
    this.year = this.activeroute.snapshot.paramMap.get('year');
    this.month = this.activeroute.snapshot.paramMap.get('month')
    
    this.phmForm = this.formBuilder.group({
      "No_of_new_registered_family":[''],
      "No_of_house_walking":[''],
      "No_of_low_risk_mothers":[''],
    "No_of_hish_risk_mothers":[''],
    "Registered_mothers_before_eight_weeks":[''],
    "Registered_mothers_between_eight_twelve_weeks":[''],
    "Registered_mothers_after_twelve_weeks":[''],
    "Low_sixteen_age_in_registration":[''],
    "between_sixteen_seventeen_age_in_registration":[''],
    "between_eighteen_nineteen_age_in_registration":[''],
    "between_twenty_thirtyfive_age_in_registration":[''],
    "high_thirtyfive_age_in_registration":[''],
    "No_of_registered_at_first_pregnant":[''],
    "no_of_before_preganancy_checked_at_first_pregnant":[''],
    "no_of_couples_for_two_clinics_at_first_pregnant":[''],
    "no_of_couples_quasin_marraige_at_first_pregnant":[''],
    "No_of_registered_more_than_equal_five_pregnancy":[''],
    "No_of_mothers_have_three_or_more_than_living_children_more_than_equal_five_pregnancy":[''],

      
    "No_of_registered_mothers_with_rubella":[''],
    "No_of_registered_mothers_getting_folic_acid":[''],
    "No_of_new_house_walking":[''],
    "No_of_old_house_walking":[''],
    "No_of_coming_clinics_new_mothers":[''],
    "No_of_coming_clinics_old_mothers":[''],
    "No_of_out_of_registered_not_permanant_mothers":[''],
    "No_of_out_of_registered_permanant_mothers":[''],
    "No_of_out_of_notregistered_permanant_mothers":[''],
    "No_of_out_of_notregistered_notpermanant_mothers":[''],
    
    
    "No_of_delivery_permant_mothers_after_walking":[''],
    "No_of_delivery_permant_mothers_hearing":[''],
    "No_of_out_of_registered_mothers_before_delivery":[''],
    "No_of_out_of_not_registered_mothers_before_delivery":[''],
    "No_of_out_of_registered_mothers_after_delivery":[''],
    "No_of_out_of_not_registered_mothers_after_delivery":[''],
    "Yoni_delivery":[''],
    "Sesar_delivary":[''],
    "Home_delivary_from_phm":[''],
    "Home_delivary_from_other_traineer":[''],
    "Home_delivary_from_not_traineer":[''],
    "No_of_mothers_get_piatagasma_protection_in_delivary":[''],
    "no_of_mothers_check_blood_group_in_delivary":[''],

    "No_of_mothers_vdrl_test_before_twelve_weeks":[''],
    "No_of_mothers_vdrl_test_after_twelve_weeks":[''],
    "No_of_mothers_hemoglobin_test_before_twelve_weeks_one":[''],
    "No_of_mothers_hemoglobin_test_before_twelve_weeks_two":[''],
    "No_of_mothers_hemoglobin_test_before_twelve_weeks_three":[''],
    "No_of_mothers_hemoglobin_test_twentysix_twentyeight_weeks_one":[''],
    "No_of_mothers_hemoglobin_test_twentysix_twentyeight_weeks_two":[''],
    "No_of_mothers_hemoglobin_test_twentysix_twentyeight_weeks_three":[''],
    "No_of_mothers_sugar_test_before_twelve_weeks_normal":[''],
    "No_of_mothers_sugar_test_before_twelve_weeks_abnormal":[''],
    "No_of_mothers_hemoglobin_test_twentyfour_twentyeight_weeks_normal":[''],
    "No_of_mothers_hemoglobin_test_twentyfour_twentyeight_weeks_abnormal":[''],
    "No_of_mothers_do_hiv_check":[''],
    "no_of_couples_join_one_clinic":[''],
    "No_of_couples_join_two_clinic":[''],
    "no_of_couples_join_three_clinic":[''],

    // THIRD PAGE

    "No_of_mothers_join_child_development_clinic":[''],
    "No_of_mothers_less_than_three_clinics":[''],
    "No_of_mothers_between_four_seven_clinics":[''],
    "No_of_mothers_more_than_eight_clinics":[''],
    "No_of_mothers_good_for_vdrl":[''],
    "No_of_mothers_for_dental_treatement":[''],
    "No_of_mothers_identify_dental_problems":[''],

    "No_of_mothers_identify_health_problems_pregnancy_time":[''],
    "Blood_presure_before":[''],
    "Blood_presure_prgnancy":[''],
    "Sugar_before":[''],
    "Sugar_pregnancy":[''],

    "No_of_live_birth_first_permamnt":[''],
    "No_of_abortions":[''],
    "No_of_death_birth":[''],
    "No_of_mother_death":[''],

    "No_of_after_dekivary_mothers":[''],
    "New_first_five_days":[''],
    "New_between_six_ten_days":[''],
    "Between_elevn_thirteen_days":[''],
    "New_between_fouteen_twentyone_days":[''],
    "Near_fourtytwo_days":[''],
    "no_of_after_delivery_mothers_get_vitamine_A":[''],

    "Hemorrhagic":[''],
    "diseses_reproductivE_system":[''],
    "Urinary_tract":[''],
    "Vitapiya_infection":[''],
    "Vitapiya_broken":[''],
    "Vaginal_infection":[''],
    "Sesariyan_cut":[''],
    "Mental_problem_after":[''],
    "Depression":[''],
    "Nipples_erruptions":[''],
    "milk_tightning_breat":[''],

    // FIVE PAGE
    "Breast_infection":[''],
    "High_blood_presure":[''],
    "Heart":[''],
    "Blood_sugar":[''],

    "No_of_registered_child":[''],
    "New_house_walking_after_fourtytwo_days":[''],
    "Join_to_the_clinic_first_month":[''],
    "Join_to_the_clinic_after_month":[''],

    "No_of_child_death_between_one_seven_days":[''],
    "No_of_child_death_between_eight_twentyeight_days":[''],
    "No_of_child_death_at_birth":[''],
    "Nishpuranaya":[''],
    "New_infections":[''],
    "Birth_infections":[''],
    "Premature":[''],
    "Other_num":[''],

    "No_of_child_between_one_five":[''],
    "No_of_nursary_child":[''],
    "New_house_walking_for_small_child":[''],
    "New_house_walking_for_nursary_child":[''],
     
    "no_of_child_give_vitamine_A_18_month":[''],
    "no_of_child_give_vitamine_A_2_yr":[''],
    "no_of_child_give_vitamine_A_3_yr":[''],
    "no_of_child_give_vitamine_A_4_yr":[''],
    "no_of_child_give_warm_18_month":[''],
    "no_of_child_give_warm_2_yr":[''],
    "no_of_child_give_warm_3_yr":[''],
    "No_of_child_give_warm_4_yr":[''],

    "No_of_coming_clinic_new_1_2_yr": [''],
    "no_of_coming_clinic_new_2_5_yr": [''],
    "No_of_small_child_death":[''],
    "Accident":[''],
    "Infections":[''],
    "Diarrhea":[''],
    "Respiratory":[''],
    "Other_numb":[''],
    "No_of_aefi_child":[''],

    "New_identified_tablet":[''],
    "Removed_tablet":[''],
    "No_of_packet":[''],
    "New_identified_injection":[''],
    "Removed_injection":[''],
    "New_identified_uterus":[''],
    "Removed_uterus":[''],
    "New_identified_hormona":[''],
    "Removed_hormona":[''],
    "New_identified_condom":[''],
    "Removed_condom":[''],
    "New_identified_lady":[''],
    "Removed_lady":[''],
    "New_identified_man":[''],
    "Removed_man":[''],
    "Total_couples_using_new_family_palning":[''],
    "New_identified_old":[''],
    "accept_new_old":[''],
    "Removed_old":[''],
    "New_identified_not_use":[''],
    "accept_use":[''],
    "Removed_not_use":[''],
    "New_identified_madasaru":[''],
    "prganant_that_month_madasaru":[''],
    "Removed_madasaru":[''],
    "Reffer_madasaru":[''],
    "Fail_family_plan_one":[''],
    "No_of_high_infections":[''],
    "No_of_house_walking_new_famiy_planners":[''],

    "No_of_arresements_man":[''],
    "No_of_arresements_woman":[''],
    "No_of_arresements_mental_new":[''],
    "No_of_reffers":[''],

    "About_nutritions":[''],
    "No_of_clinics_married":[''],
    "No_of_suawanari_clinic":[''],
    "house_wlking_suawanari_clinic":[''],
    "No_of_clinic_joined":[''],
    "No_of_special_clinics":[''],
    "No_of_school_clinic":[''],
      
    })
    
    this.phmService.Monthlyreport(this.year,this.month).subscribe(data => {
      console.log(data['No_of_new_registered_family']);
      this.phmForm.patchValue({
        No_of_new_registered_family : data['No_of_new_registered_family'],
        No_of_house_walking: data['No_of_house_walking'] ,
        No_of_low_risk_mothers: data['No_of_low_risk_mothers'],
        No_of_hish_risk_mothers: data['No_of_hish_risk_mothers'],
        Registered_mothers_before_eight_weeks: data['Registered_mothers_before_eight_weeks'],
        Registered_mothers_between_eight_twelve_weeks: data['Registered_mothers_between_eight_twelve_weeks'],
        Registered_mothers_after_twelve_weeks: data['Registered_mothers_after_twelve_weeks'],
        Low_sixteen_age_in_registration: data['Low_sixteen_age_in_registration'],
        between_sixteen_seventeen_age_in_registration: data['between_sixteen_seventeen_age_in_registration'],
        between_eighteen_nineteen_age_in_registration: data['between_eighteen_nineteen_age_in_registration'],
        between_twenty_thirtyfive_age_in_registration: data['between_twenty_thirtyfive_age_in_registration'],
        high_thirtyfive_age_in_registration: data['high_thirtyfive_age_in_registration'],

        No_of_registered_at_first_pregnant: data['No_of_registered_at_first_pregnant'],
        no_of_before_preganancy_checked_at_first_pregnant: data['no_of_before_preganancy_checked_at_first_pregnant'],
        no_of_couples_for_two_clinics_at_first_pregnant: data['no_of_couples_for_two_clinics_at_first_pregnant'],
        no_of_couples_quasin_marraige_at_first_pregnant: data['no_of_couples_quasin_marraige_at_first_pregnant'],
        No_of_registered_more_than_equal_five_pregnancy: data['No_of_registered_more_than_equal_five_pregnancy'],
        No_of_mothers_have_three_or_more_than_living_children_more_than_equal_five_pregnancy: data['No_of_mothers_have_three_or_more_than_living_children_more_than_equal_five_pregnancy'],
        No_of_registered_mothers_with_rubella: data['No_of_registered_mothers_with_rubella'],
        No_of_registered_mothers_getting_folic_acid: data['No_of_registered_mothers_getting_folic_acid'],
        No_of_new_house_walking: data['No_of_new_house_walking'],
        No_of_old_house_walking: data['No_of_old_house_walking'],
        No_of_coming_clinics_new_mothers: data['No_of_coming_clinics_new_mothers'],
        No_of_coming_clinics_old_mothers: data['No_of_coming_clinics_old_mothers'],
        No_of_out_of_registered_not_permanant_mothers: data['No_of_out_of_registered_not_permanant_mothers'],
       
        No_of_out_of_notregistered_permanant_mothers: data['No_of_out_of_notregistered_permanant_mothers'],
        No_of_out_of_notregistered_notpermanant_mothers: data['No_of_out_of_notregistered_notpermanant_mothers'],

        No_of_delivery_permant_mothers_after_walking: data['No_of_delivery_permant_mothers_after_walking'],
        No_of_delivery_permant_mothers_hearing: data['No_of_delivery_permant_mothers_hearing'],
        No_of_out_of_registered_mothers_before_delivery: data['No_of_out_of_registered_mothers_before_delivery'],
        No_of_out_of_not_registered_mothers_before_delivery: data['No_of_out_of_not_registered_mothers_before_delivery'],
        No_of_out_of_registered_mothers_after_delivery: data['No_of_out_of_registered_mothers_after_delivery'],
        No_of_out_of_not_registered_mothers_after_delivery: data['No_of_out_of_not_registered_mothers_after_delivery'],
        No_of_out_of_registered_permanant_mothers :data['No_of_out_of_registered_permanant_mothers'],
        Yoni_delivery: data['Yoni_delivery'],
        Sesar_delivary: data['Sesar_delivary'],
        Home_delivary_from_phm: data['Home_delivary_from_phm'],
        Home_delivary_from_other_traineer: data['Home_delivary_from_other_traineer'],
        Home_delivary_from_not_traineer: data['Home_delivary_from_not_traineer'],
        no_of_mothers_check_blood_group_in_delivary: data['no_of_mothers_check_blood_group_in_delivary'],
        No_of_mothers_get_piatagasma_protection_in_delivary: data['No_of_mothers_get_piatagasma_protection_in_delivary'],
        No_of_mothers_vdrl_test_before_twelve_weeks: data['No_of_mothers_vdrl_test_before_twelve_weeks'],
        No_of_mothers_vdrl_test_after_twelve_weeks: data['No_of_mothers_vdrl_test_after_twelve_weeks'],
        No_of_mothers_hemoglobin_test_before_twelve_weeks_one: data['No_of_mothers_hemoglobin_test_before_twelve_weeks_one'],
        No_of_mothers_hemoglobin_test_before_twelve_weeks_two: data['No_of_mothers_hemoglobin_test_before_twelve_weeks_two'],
        No_of_mothers_hemoglobin_test_before_twelve_weeks_three: data['No_of_mothers_hemoglobin_test_before_twelve_weeks_three'],
        No_of_mothers_hemoglobin_test_twentysix_twentyeight_weeks_one: data['No_of_mothers_hemoglobin_test_twentysix_twentyeight_weeks_one'],
        No_of_mothers_hemoglobin_test_twentysix_twentyeight_weeks_two: data['No_of_mothers_hemoglobin_test_twentysix_twentyeight_weeks_two'],
        No_of_mothers_hemoglobin_test_twentysix_twentyeight_weeks_three: data['No_of_mothers_hemoglobin_test_twentysix_twentyeight_weeks_three'],
        No_of_mothers_sugar_test_before_twelve_weeks_normal: data['No_of_mothers_sugar_test_before_twelve_weeks_normal'],
        No_of_mothers_sugar_test_before_twelve_weeks_abnormal: data['No_of_mothers_sugar_test_before_twelve_weeks_abnormal'],
        No_of_mothers_hemoglobin_test_twentyfour_twentyeight_weeks_normal: data['No_of_mothers_hemoglobin_test_twentyfour_twentyeight_weeks_normal'],
        No_of_mothers_hemoglobin_test_twentyfour_twentyeight_weeks_abnormal: data['No_of_mothers_hemoglobin_test_twentyfour_twentyeight_weeks_abnormal'],
        No_of_mothers_do_hiv_check: data['No_of_mothers_do_hiv_check'],
        no_of_couples_join_one_clinic: data['no_of_couples_join_one_clinic'],
        No_of_couples_join_two_clinic: data['No_of_couples_join_two_clinic'],
        no_of_couples_join_three_clinic: data['no_of_couples_join_three_clinic'],
        No_of_mothers_join_child_development_clinic: data['No_of_mothers_join_child_development_clinic'],
        No_of_mothers_less_than_three_clinics: data['No_of_mothers_less_than_three_clinics'],
        No_of_mothers_between_four_seven_clinics: data['No_of_mothers_between_four_seven_clinics'],
        No_of_mothers_more_than_eight_clinics: data['No_of_mothers_more_than_eight_clinics'],
        No_of_mothers_good_for_vdrl: data['No_of_mothers_good_for_vdrl'],
        No_of_mothers_for_dental_treatement: data['No_of_mothers_for_dental_treatement'],
        No_of_mothers_identify_dental_problems: data['No_of_mothers_identify_dental_problems'],
        No_of_mothers_identify_health_problems_pregnancy_time: data['No_of_mothers_identify_health_problems_pregnancy_time'],
        Blood_presure_before: data['Blood_presure_before'],
        Blood_presure_prgnancy: data['Blood_presure_prgnancy'],
        Sugar_before: data['Sugar_before'],
        Sugar_pregnancy: data['Sugar_pregnancy'],
        No_of_live_birth_first_permamnt:data['No_of_live_birth_first_permamnt'],
        No_of_abortions: data['No_of_abortions'],
        No_of_death_birth: data['No_of_death_birth'],
        No_of_mother_death: data['No_of_mother_death'],
        No_of_after_dekivary_mothers:data['No_of_after_dekivary_mothers'],
        New_first_five_days: data['New_first_five_days'],
        New_between_six_ten_days:data['New_between_six_ten_days'],
        Between_elevn_thirteen_days: data['Between_elevn_thirteen_days'],
        New_between_fouteen_twentyone_days: data['New_between_fouteen_twentyone_days'],
        Near_fourtytwo_days: data['Near_fourtytwo_days'],
        no_of_after_delivery_mothers_get_vitamine_A: data['no_of_after_delivery_mothers_get_vitamine_A'],
        Hemorrhagic: data['Hemorrhagic'],
        diseses_reproductivE_system: data['diseses_reproductivE_system'],
        Urinary_tract: data['Urinary_tract'],
        Vitapiya_infection: data['Vitapiya_infection'],
        Vitapiya_broken: data['Vitapiya_broken'],
        Vaginal_infection: data['Vaginal_infection'],
        Sesariyan_cut: data['Sesariyan_cut'],
        Mental_problem_after: data['Mental_problem_after'],
        Depression: data['Depression'],
        Nipples_erruptions: data['Nipples_erruptions'],
        milk_tightning_breat: data['milk_tightning_breat'],
        Breast_infection: data['Breast_infection'],
        High_blood_presure: data['High_blood_presure'],
        Heart: data['Heart'],
        Blood_sugar: data['Blood_sugar'],
        No_of_registered_child: data['No_of_registered_child'],
        New_house_walking_after_fourtytwo_days: data['New_house_walking_after_fourtytwo_days'],
        Join_to_the_clinic_first_month: data['Join_to_the_clinic_first_month'],
        Join_to_the_clinic_after_month: data['Join_to_the_clinic_after_month'],
        No_of_child_death_between_one_seven_days: data['No_of_child_death_between_one_seven_days'],
        No_of_child_death_between_eight_twentyeight_days: data['No_of_child_death_between_eight_twentyeight_days'],
        No_of_child_death_at_birth: data['No_of_child_death_at_birth'],
        Nishpuranaya: data['Nishpuranaya'],
        New_infections: data['New_infections'],
        Birth_infections: data['Birth_infections'],
        Premature: data['Premature'],
        Other_num: data['Other_num'],
        No_of_child_between_one_five: data['No_of_child_between_one_five'],
        No_of_nursary_child: data['No_of_nursary_child'],
        New_house_walking_for_small_child: data['New_house_walking_for_small_child'],
        New_house_walking_for_nursary_child: data['New_house_walking_for_nursary_child'],
       no_of_child_give_vitamine_A_18_month: data['no_of_child_give_vitamine_A_18_month'],
       no_of_child_give_vitamine_A_2_yr: data['no_of_child_give_vitamine_A_2_yr'],
       no_of_child_give_vitamine_A_3_yr: data['no_of_child_give_vitamine_A_3_yr'],
       no_of_child_give_vitamine_A_4_yr: data['no_of_child_give_vitamine_A_4_yr'],
       no_of_child_give_warm_18_month: data['no_of_child_give_warm_18_month'],
       no_of_child_give_warm_2_yr: data['no_of_child_give_warm_2_yr'],
       no_of_child_give_warm_3_yr: data['no_of_child_give_warm_3_yr'],
       No_of_child_give_warm_4_yr: data['No_of_child_give_warm_4_yr'],
       No_of_coming_clinic_new_1_2_yr: data['No_of_coming_clinic_new_1_2_yr'],
       no_of_coming_clinic_new_2_5_yr: data['no_of_coming_clinic_new_2_5_yr'],

       No_of_small_child_death: data['No_of_small_child_death'],
       Accident: data['Accident'],
       Infections: data['Infections'],
       Diarrhea: data['Diarrhea'],
       Respiratory: data['Respiratory'],
       Other_numb: data['Other_numb'],
       No_of_aefi_child: data['No_of_aefi_child'],
       New_identified_tablet: data['New_identified_tablet'],
       Removed_tablet: data['Removed_tablet'],
       No_of_packet: data['No_of_packet'],
       New_identified_injection: data['New_identified_injection'],
       Removed_injection: data['Removed_injection'],
       New_identified_uterus: data['New_identified_uterus'],
       Removed_uterus: data['Removed_uterus'],
       New_identified_hormona: data['New_identified_hormona'],
       Removed_hormona: data['Removed_hormona'],
       New_identified_condom: data['New_identified_condom'],
       Removed_condom: data['Removed_condom'],
       New_identified_lady: data['New_identified_lady'],
       Removed_lady: data['Removed_lady'],
       New_identified_man: data['New_identified_man'],
       Removed_man: data['Removed_man'],
       Total_couples_using_new_family_palning: data['Total_couples_using_new_family_palning'],
       New_identified_old: data['New_identified_old'],
       accept_new_old: data['accept_new_old'],
       Removed_old: data['Removed_old'],
       New_identified_not_use: data['New_identified_not_use'],
       accept_use: data['accept_use'],
       Removed_not_use: data['Removed_not_use'],
       New_identified_madasaru: data['New_identified_madasaru'],
       prganant_that_month_madasaru: data['prganant_that_month_madasaru'],
       Removed_madasaru: data['Removed_madasaru'],
       Reffer_madasaru: data['Reffer_madasaru'],
       Fail_family_plan_one: data['Fail_family_plan_one'],
       No_of_high_infections: data['No_of_high_infections'],
       No_of_house_walking_new_famiy_planners: data['No_of_house_walking_new_famiy_planners'],
       No_of_arresements_man: data['No_of_arresements_man'],
       No_of_arresements_woman: data['No_of_arresements_woman'],
       No_of_arresements_mental_new: data['No_of_arresements_mental_new'],
       No_of_reffers: data['No_of_reffers'],

       About_nutritions: data['About_nutritions'],
       No_of_clinics_married: data['No_of_clinics_married'],
       No_of_suawanari_clinic: data['No_of_suawanari_clinic'],
       house_wlking_suawanari_clinic: data['house_wlking_suawanari_clinic'],
       No_of_clinic_joined: data['No_of_clinic_joined'],
       No_of_special_clinics: data['No_of_special_clinics'],
       No_of_school_clinic: data['No_of_school_clinic'],

        
      })
      console.log(data);
  });
  this.phmForm.valueChanges.subscribe(console.log)
    this.autoRenew = new FormControl();
  }
  saveToPdf(){
    const options = {
      filename:"lowWeightBabies",
      image:{type:'jpeg'},
      html2canvas:{},
      jsPDF:{orientation: 'landscape'}
    };

    
    const content : Element = document.getElementById('element-to-export');

    html2pdf()
      .from(content)
      .set(options)
      .save();
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

}
