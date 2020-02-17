import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { Router } from '@angular/router';
import {MatSnackBar} from '@angular/material/snack-bar';

import { FamiliesService } from 'app/Services/families.service';

import {  minDate,prop, RxReactiveFormsModule, RxwebValidators} from "@rxweb/reactive-form-validators";


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

  constructor(private formBuilder: FormBuilder, private addfamilyService: FamiliesService, private router: Router, private activeroute: ActivatedRoute, private _snackBar: MatSnackBar) { }

  ngOnInit() {
    this.approvedFamilyForm = this.formBuilder.group({
      village_id : ['', Validators.required],
      // Approved_family_category: ['', Validators.required],
      Identity_number: ['', Validators.required],
      Date: ['',Validators.required],
      Name_of_wife: ['', Validators.required],
      Name_of_husband: [''],
      Address: ['', Validators.required],
      Date_of_birth: [''],
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
    },
    {validator: this.dateLessThan('Date_of_birth', 'Date')});
  }

  dateLessThan(from: string, to: string) {
    return (group: FormGroup): {[key: string]: any} => {
      let f = group.controls[from];
      let t = group.controls[to];
      if (f.value > t.value) {
        return {
          dates: "Date of birth should be less than Date"
        };
      }
      return {};
    }
}

  onSubmit() {
    this.submitted = true;
      

    if (this.approvedFamilyForm.invalid) {
        return;
    }

   // this.success = true;
    this.addfamilyService.add(this.approvedFamilyForm.value)
      .subscribe(
        response=>{
            this.openSnackBar("Inserted Successfully");
            this.router.navigate(["viewApprovedFamilies/"])
          
        } ,
        error=>{
          this.openSnackBar("Update is Unsuccessfull, Pls enter it again!");
            this.router.navigate(["AddApprovedFamilies"])
        }
    );
}

openSnackBar(msg) {
  this._snackBar.open(msg,"OK")
}

}

