import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

import { FamiliesService } from 'app/Services/families.service';

@Component({
  selector: 'app-add-approved-families',
  templateUrl: './add-approved-families.component.html',
  styleUrls: ['./add-approved-families.component.scss'],
  providers: [FamiliesService]
})
export class AddApprovedFamiliesComponent implements OnInit {
  

  approvedFamilyForm: FormGroup;
  submitted = false;
  success = false;

  constructor(private formBuilder: FormBuilder, private addfamilyService: FamiliesService) { }

  ngOnInit() {
    this.approvedFamilyForm = this.formBuilder.group({
      village_id : ['', Validators.required],
      Approved_family_category: ['', Validators.required],
      Identity_number: ['', Validators.required],
      Date: ['', Validators.required],
      Name_of_wife: ['', Validators.required],
      Name_of_husband: [''],
      address: ['', Validators.required],
      Date_of_birth: ['', Validators.required],
      Age_at_the_time_of_marriage: [null, Validators.required],
      Job_status: [''],
      Education_level: ['', Validators.required],
      Number_of_living_children: [null, Validators.required],
      Pregnancy_details_Pregnancy_Frist: [''],
      Pregnancy_details_Pregnancy_Second: [''],
      Pregnancy_details_Pregnancy_Third: [''],
      Pregnancy_details_Pregnancy_Fourth: [''],
      Pregnancy_details_Pregnancy_Fifth: [''],
      Pregnancy_details_Result_First: [''],
      Pregnancy_details_Result_Second: [''],
      Pregnancy_details_Result_Third: [''],
      Pregnancy_details_Result_Fourth: [''],
      Pregnancy_details_Result_Fifth: [''],
      Family_planning_methods_First_Method: [''],
      Family_planning_methods_First_Date: [''],
      Family_planning_methods_second_Method: [''],
      Family_planning_methods_second_Date: [''],
      Family_planning_methods_third_Method: [''],
      Family_planning_methods_third_Date: [''],
      Family_planning_methods_fourth_Method: [''],
      Family_planning_methods_fourth_Date: [''],
      Safe_for_rubella: [''],
      Date_of_cervical_mucous_test: [''],
      Other_details: [''],
      number_of_young_children: [null]
    });
  }

  onSubmit() {
    this.submitted = true;
      

    if (this.approvedFamilyForm.invalid) {
        return;
    }

    this.success = true;
    this.addfamilyService.register(this.approvedFamilyForm.value);
}

}

