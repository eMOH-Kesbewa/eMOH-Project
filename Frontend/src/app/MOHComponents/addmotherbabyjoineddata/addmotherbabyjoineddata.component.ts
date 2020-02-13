import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MotherbabyjoinedService } from 'app/Services/motherbabyjoined.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-addmotherbabyjoineddata',
  templateUrl: './addmotherbabyjoineddata.component.html',
  styleUrls: ['./addmotherbabyjoineddata.component.scss']
})
export class AddmotherbabyjoineddataComponent implements OnInit {

  addmotherbabyForm: FormGroup;
  submitted = false;
  success = false;

  constructor(private fb: FormBuilder,private MotherbabyjoinedService : MotherbabyjoinedService) { }

  ngOnInit() {
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
          response=>console.log('Success!',response),
          error=>{
            if(error) console.log("Failure") 
            else console.log("Success No Errors")
          }
        );
       // this.router.navigate(['viewClinics']);
    console.log(this.addmotherbabyForm.value);
  }

}
