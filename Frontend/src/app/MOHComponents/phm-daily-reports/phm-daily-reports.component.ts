import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { PhmdailyupdateService } from 'app/Services/phmdailyupdate.service';
//import { FamiliesService } from 'app/Services/families.service';
import { from } from 'rxjs';

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

  constructor(private formBuilder: FormBuilder, private addphmService: PhmdailyupdateService) { }

  ngOnInit() {
    this.phmForm = this.formBuilder.group({
      
      MOH_division: ['', Validators.required],
      date_of_today : ['', Validators.required],
      Batch_no : ['', Validators.required],
      Division : ['', Validators.required],
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

}
