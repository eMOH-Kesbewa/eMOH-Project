import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup,Validators,FormControl} from '@angular/forms';
import { ClinicsService } from 'app/Services/clinics.service';

@Component({
  selector: 'app-add-clinic',
  templateUrl: './add-clinic.component.html',
  styleUrls: ['./add-clinic.component.scss']
})
export class AddClinicComponent implements OnInit {

  clinicForm: FormGroup;
  
  constructor(private clinic : FormBuilder,private clinicService : ClinicsService) { }

    ngOnInit() {
      this.clinicForm = this.clinic.group({
        clinic_title:'',
        date:[''],
        clinic_priority:'',
        clinic_discription:''
      });
      
      this.clinicForm.valueChanges.subscribe(console.log)
    }

    submitClinicData(){
      console.log(this.clinicForm.value);
      this.clinicService.addClinic(this.clinicForm.value)
        .subscribe(
          response=>console.log('Success!',response),
          error=>console.error('Error',error)
        );
    }

    getToday(): string {
      return new Date().toISOString().split('T')[0]
    }

}
