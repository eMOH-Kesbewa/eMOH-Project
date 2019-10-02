import { Component, OnInit ,NgZone, } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { registerLocaleData } from '@angular/common';

import { BabiesService } from 'app/Services/babies.service';
// import { FamiliesService } from 'app/Services/families.service';

@Component({
  selector: 'app-update-baby-book',
  templateUrl: './update-baby-book.component.html',
  styleUrls: ['./update-baby-book.component.scss'],
   providers: [BabiesService]
  // providers: [FamiliesService]
})
export class UpdateBabyBookComponent implements OnInit {

  BabyForm: FormGroup;
  submitted = false;
  success = false;

  constructor(private formBuilder: FormBuilder, private addbabyService: BabiesService, private ngZone: NgZone,) { }

  
 
  ngOnInit() {
    
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
      total_Number_of_children_alive_including_this_child: [''],
      method_of_delivery:[''],
      birth_weight: [''],
      gridle_circumference_at_birth: [''],
      length_of_baby_at_birth: [''],
      weight_in_discharge_from_hospital: [''],
      K_vitamine: [''],
      breast_feeding_breast_feeding_during_the_first_hour:[''] ,//check backend for all radio buttons
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
      place_of_refferal: [''],
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
      warm_treat_five_year_batch_no:['']
          
       


     
   
       
      
        
        
      
       
        

      
    
      
          
          
      
      
    });
  }

  onSubmit() {
    this.submitted = true;
      

    if (this.BabyForm.invalid) {
        return;
    }

    this.success = true;
   // this.addbabyService.register(this.BabyForm.value);
}
 
}
