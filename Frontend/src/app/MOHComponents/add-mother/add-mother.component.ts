import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MotherService } from 'app/Services/mother.service';
import { Router } from '@angular/router';


@Component({
  selector: 'app-add-mother',
  templateUrl: './add-mother.component.html',
  styleUrls: ['./add-mother.component.scss']
})
export class AddMotherComponent implements OnInit {

  addMotherSchema: FormGroup;
  submit=false;
  success=false;

  constructor(private fb: FormBuilder, private motherService: MotherService) { }

  ngOnInit() {
    this.addMotherSchema= this.fb.group({
      mother_id: ['', Validators.required],
      registration_no: ['', Validators.required],
      registration_date: ['', Validators.required],
      mothers_name: ['', Validators.required],
      address: ['', Validators.required],
      age: ['', Validators.required],
      no_of_living_children: ['', Validators.required],
      gravidity: ['', Validators.required],
      POA: [''],
      EDD: [''],
      protection_against_tetanus: [false],
      protection_against_rubella: [false],
      risk_conditions: [false],
      blood_sugar__during_first_twelve_weeks: [''],
      blood_sugar__twentyfour_fourtyeight_weeks: [''],
      hemoglobin_level__first_twelve_weeks: [''],
      hemoglobin_level__twentysix_twentyeight_weeks: [''],
      blood_group: [''],
      vdrl_test__before_twelve_weeks: [''],
      vdrl_test__after_twelve_weeks: [''],
      hiv_screening: [''],
      
      mothers_weight__weight_at_first_visit: [''],
      mothers_weight__poa_at_first_visit: [''],
      mothers_weight__weight_at_last_visit: [''],
      mothers_weight__poa_at_last_visit: [''],
      mothers_weight__gained_weight_during_pregnancy: [''],

      bmi_before_twelve_weeks: [''],

      delivery_informations__date: [''],
      delivery_informations__place: [''],
      delivery_informations__outcome: [''],
      delivery_informations__sex: [''],
      mode_of_delivery: [''],

      birth_weight: [''],

      postpartum_visits__within_first_five_days: [''],
      postpartum_visits__six_to_ten_days: [''],
      postpartum_visits__late_first_visit_eleven_thirteen_days: [''],
      postpartum_visits__fourteen_twentyone_days: [''],
      postpartum_visits__arround_fourtytwo_days: [''],

      registration_no_in_bi_register: [''],
      registration_date_in_bi_register: [''],
      remarks: ['']
    });
  }
  onSubmit(){
    this.submit=true;

    if(this.addMotherSchema.invalid){
      return;
    }

    this.success=true;
    console.log(this.addMotherSchema.value);
      this.motherService.add(this.addMotherSchema.value)
        .subscribe(
          response=>console.log('Success!',response),
          error=>{
            if(error) console.log("Failure") 
            else console.log("Success No Errors")
          }
        );
  }

}
