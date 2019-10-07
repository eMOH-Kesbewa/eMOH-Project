import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { BabiesService } from 'app/Services/babies.service';

@Component({
  selector: 'app-add-weight-height',
  templateUrl: './add-weight-height.component.html',
  styleUrls: ['./add-weight-height.component.scss']
})
export class AddWeightHeightComponent implements OnInit {

  WeightHeightForm: FormGroup;
  submitted = false;
  success = false;

  constructor(private formBuilder: FormBuilder, private addbabyService: BabiesService) { }

  ngOnInit() {

    this.WeightHeightForm = this.formBuilder.group({
      
      baby_id:['', Validators.required],
      year:['', Validators.required],
      month:['', Validators.required],
      batch_no:['', Validators.required],
      name_of_child:['', Validators.required],
      sex:['', Validators.required],
      Date_of_birth:['', Validators.required],
      age_of_month:['', Validators.required],
      weight_of_child:['', Validators.required],
      height_of_child:[''],
      other_details:['']

    });

    

  }

  onSubmit() {
    this.submitted = true;
      

    if (this.WeightHeightForm.invalid) {
        return;
    }

    this.success = true;
    this.addbabyService.add(this.WeightHeightForm.value)
      .subscribe(
        response=>console.log('Success!',response),
        error=>{
          if(error) console.log("Failure") 
          else console.log("Success No Errors")
        }
    );

}
}
