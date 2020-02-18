import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { Router } from '@angular/router';
import {MatSnackBar} from '@angular/material/snack-bar';

import { WeightService } from 'app/Services/weight.service';


@Component({
  selector: 'app-add-weight-height',
  templateUrl: './add-weight-height.component.html',
  styleUrls: ['./add-weight-height.component.scss']
})
export class AddWeightHeightComponent implements OnInit {

  WeightHeightForm: FormGroup;
  submitted = false;
  success = false;

  constructor(private formBuilder: FormBuilder, private addweightService: WeightService, private router: Router, private activeroute: ActivatedRoute, private _snackBar: MatSnackBar) { }

  ngOnInit() {

    this.WeightHeightForm = this.formBuilder.group({
      
      baby_id:['', Validators.required],
      batch_no:[''],
      name_of_child:['', Validators.required],
      sex:['', Validators.required],
      Date_of_birth:['', Validators.required],
      weight_of_birth:['', Validators.required],
	    height_of_birth:['', Validators.required],
      other_details:[''],

      first_yearone: [''],
      first_yeartwo: [''],
      first_yearthree: [''],
      first_yearfour: [''],
      first_yearfive: [''],
      first_yearsix: [''],
      first_yearseven: [''],
      first_yeareight: [''],
      first_yearnine: [''],
      first_yearten: [''],
      first_yeareleven: [''],
      first_yeartwelve: [''],

      sec_yearone: [''],
      sec_yeartwo: [''],
      sec_yearthree: [''],
      sec_yearfour: [''],
      sec_yearfive: [''],
      sec_yearsix: [''],
      sec_yearseven: [''],
      sec_yeareight: [''],
      sec_yearnine: [''],
      sec_yearten: [''],
      sec_yeareleven: [''],
      sec_yeartwelve: [''],

      third_yearone: [''],
      third_yeartwo: [''],
      third_yearthree: [''],
      third_yearfour: [''],
      third_yearfive: [''],
      third_yearsix: [''],
      third_yearseven: [''],
      third_yeareight: [''],
      third_yearnine: [''],
      third_yearten: [''],
      third_yeareleven: [''],
      third_yeartwelve: [''],

      four_yearone: [''],
      four_yeartwo: [''],
      four_yearthree: [''],
      four_yearfour: [''],
      four_yearfive: [''],
      four_yearsix: [''],
      four_yearseven: [''],
      four_yeareight: [''],
      four_yearnine: [''],
      four_yearten: [''],
      four_yeareleven: [''],
      four_yeartwelve: [''],

      five_yearone: [''],
      five_yeartwo: [''],
      five_yearthree: [''],
      five_yearfour: [''],
      five_yearfive: [''],
      five_yearsix: [''],
      five_yearseven: [''],
      five_yeareight: [''],
      five_yearnine: [''],
      five_yearten: [''],
      five_yeareleven: [''],
      five_yeartwelve: [''],

      //height
      oneyeardate:[''],
      twoyeardate:[''],
      threeyeardate:[''],
      foueyeardate:[''],
      fiveyeardate:[''],
      oneyearheight:[''],
      twoyearheight:[''],
      threeyearheight:[''],
      foueyearheight:[''],
      fiveyearheight:['']

    });

    

  }

  onSubmit() {
    this.submitted = true;
      

    if (this.WeightHeightForm.invalid) {
        return;
    }

   // this.success = true;
    this.addweightService.add(this.WeightHeightForm.value)
      .subscribe(
        response=>{
          this.openSnackBar("Inserted Successfully");
            this.router.navigate(["ViewWeightTable/"])
        },
        error=>{
          if(error) {
            this.openSnackBar("Inserted Unsuccessful! Please add Again");
            this.router.navigate(["AddWeightHeight"])
          } 
          else console.log("Success No Errors")
        }
    );

}

openSnackBar(msg) {
  this._snackBar.open(msg,"OK")
}
}
