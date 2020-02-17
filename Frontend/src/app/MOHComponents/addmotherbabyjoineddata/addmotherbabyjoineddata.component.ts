import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MotherbabyjoinedService } from 'app/Services/motherbabyjoined.service';
import { Router, ActivatedRoute } from '@angular/router';
import {MatSnackBar} from '@angular/material/snack-bar';

import { FamiliesService } from 'app/Services/families.service';

@Component({
  selector: 'app-addmotherbabyjoineddata',
  templateUrl: './addmotherbabyjoineddata.component.html',
  styleUrls: ['./addmotherbabyjoineddata.component.scss']
})
export class AddmotherbabyjoineddataComponent implements OnInit {

  addmotherbabyForm: FormGroup;
  submitted = false;
  success = false;
  motherId;
  constructor(private fb: FormBuilder,private MotherbabyjoinedService : MotherbabyjoinedService,private familyservice : FamiliesService, private activeroute: ActivatedRoute,private router: Router, private _snackBar: MatSnackBar) { }

  
  ngOnInit() {
    this.motherId = localStorage.getItem('selectedFamId');
    this.addmotherbabyForm=this.fb.group({
    mother_id: ['', Validators.required],
    child_name: ['', Validators.required],
    baby_id: ['', Validators.required],
    mothers_name: ['', Validators.required],
    address: ['', Validators.required],
    sex: ['', Validators.required],
    date_of_birth: ['', Validators.required],
    birth_weight: ['', Validators.required],
    registration_date: ['', Validators.required],
    registration_category: [''],
    immunization__BGC: [''],
    immunization__scar: [false],
    immunization__pentavalent__first: [''],
    immunization__pentavalent__second: [''],
    immunization__pentavalent__third: [''],
    immunization__polio__opv__first: [''],
    immunization__polio__opv__second: [''],
    immunization__polio__opv__third: [''],
    immunization__polio__fipv__two_m: [''],
    immunization__polio__fipv__foru_m: [''],
    immunization__japanese_encephalitis: [''],
    immunization__measles_mumps_rubella_mmr_1: [''],
    immunization__diptheria_pertusis_tetanus_4: [''],
    immunization__polio_4: [''],
    immunization__measles_mumps_rubella_mmr_2: [''],
    immunization__diptheria_tetanus_5: [''],
    immunization__diptheria_tetanus_6: [''],
    vitamin_a_mega_dose__postnatal_mothers: [''],
    vitamin_a_mega_dose__at_sixth_month: [''],
    vitamin_a_mega_dose__at_first_year: [''],
    vitamin_a_mega_dose__at_one_and_half_yr: [''],
    vitamin_a_mega_dose__at_year_two: [''],
    vitamin_a_mega_dose__at_year_two_and_half: [''],
    vitamin_a_mega_dose__at_year_three: [''],
    vitamin_a_mega_dose__at_year_three_and_half: [''],
    vitamin_a_mega_dose__at_year_four: [''],
    vitamin_a_mega_dose__at_year_four_and_half: [''],
    vitamin_a_mega_dose__at_year_nine: [''],
    vitamin_a_mega_dose__at_year_twelve: [''],
    remarks: ['']
    })
    this.addmotherbabyForm.valueChanges.subscribe(console.log)

    this.familyservice.getfamilydataById(this.motherId).subscribe(data => {
      console.log(data[0]);
      this.addmotherbabyForm.patchValue({
        mother_id: data[0]['Identity_number'],
        registration_date: this.getCurrentDate(),
        mothers_name:data[0]['Name_of_wife'],
        address: data[0]['Address'],
        age: this.getAge(data[0]['Date_of_birth'])
      })
    })
  }

  

  onSubmit(){
    
    this.submitted=true;

    if(this.addmotherbabyForm.invalid){
      return;
    }

    this.success=true;

    console.log(this.addmotherbabyForm.value);
      this.MotherbabyjoinedService.addnewbaby(this.addmotherbabyForm.value)
        .subscribe(
          response=>{
            this.openSnackBar("Inserted Successfully");
            this.router.navigate(["viewMothers/"])
          },
          error=>{
            this.openSnackBar("Inserted  not Successful");
            this.router.navigate(["viewMothers/"])
          }
        );
       // this.router.navigate(['viewClinics']);
    console.log(this.addmotherbabyForm.value);
  }

   
  openSnackBar(msg) {
    this._snackBar.open(msg,"OK")
  }
  
  getAge(dob){
    let presentYear = new Date().getUTCFullYear();
    let birthYearStr = dob.substr(0,4);
    let birthYear = parseInt(birthYearStr)
    return presentYear-birthYear;
  }

  getCurrentDate(){
    let iso =  new Date().toISOString();
    let isoDate = iso.substr(0,10);
    let isoDateArray = isoDate.split("-");
    let stdDate = isoDateArray[0].concat("-",isoDateArray[1],"-",isoDateArray[2]);
    return stdDate
  }


}
