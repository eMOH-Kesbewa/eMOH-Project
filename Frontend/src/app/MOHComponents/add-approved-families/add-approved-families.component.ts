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
      Age_at_the_time_of_marriage: ['', Validators.required],
      Job_status: [''],
      Education_level: [''],
      Number_of_living_children: ['', Validators.required],
      Pregnancy_details__Pregnancy__Frist: [''],
      Pregnancy_details__Pregnancy__Second: [''],
      Pregnancy_details__Pregnancy__Third: [''],
      Pregnancy_details__Pregnancy__Fourth: [''],
      Pregnancy_details__Pregnancy__Fifth: [''],
      Pregnancy_details__Result__First: [''],
      Pregnancy_details__Result__Second: [''],
      Pregnancy_details__Result__Third: [''],
      Pregnancy_details__Result__Fourth: [''],
      Pregnancy_details__Result__Fifth: [''],
      Family_planning_methods__First__Method: [''],
      Family_planning_methods__First__Date: [''],
      Family_planning_methods__second__Method: [''],
      Family_planning_methods__second__Date: [''],
      Family_planning_methods__third__Method: [''],
      Family_planning_methods__third__Date: [''],
      Family_planning_methods__fourth__Method: [''],
      Family_planning_methods__fourth__Date: [''],
      Safe_for_rubella: [''],
      Date_of_cervical_mucous_test: [''],
      Other_details: [''],
      number_of_young_children: ['']
    });
  }

  onSubmit() {
    this.submitted = true;
      

    if (this.approvedFamilyForm.invalid) {
        return;
    }

    this.success = true;
    this.addfamilyService.add(this.approvedFamilyForm.value)
      .subscribe(
        response=>console.log('Success!',response),
        error=>{
          if(error) console.log("Failure") 
          else console.log("Success No Errors")
        }
    );
}

}

