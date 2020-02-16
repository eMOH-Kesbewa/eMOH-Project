import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup,Validators,FormControl} from '@angular/forms';
import { ClinicsService } from 'app/Services/clinics.service';
import { Router } from '@angular/router';
import { MatSnackBar } from '@angular/material';

@Component({
  selector: 'app-add-clinic',
  templateUrl: './add-clinic.component.html',
  styleUrls: ['./add-clinic.component.scss']
})
export class AddClinicComponent implements OnInit {

  clinicForm: FormGroup;
  isDisabled=true;
  constructor(private clinic : FormBuilder,private clinicService : ClinicsService,private router : Router,private _snackBar: MatSnackBar) { }

    ngOnInit() {
      this.clinicForm = this.clinic.group({
        clinic_id:'',
        clinic_title:'',
        date:[''],
        clinic_priority:'',
        clinic_discription:''
      });
      
      this.clinicForm.valueChanges.subscribe(console.log)

      this.clinicService.getClinicId().subscribe(data => {
        console.log(data)
        this.clinicForm.patchValue({
          clinic_id:"C"+(parseInt(data[0]['clinic_id'].substr(1,))+1).toString()
        })
    })
  }
    submitClinicData(){
      console.log(this.clinicForm.value);
      this.clinicService.addClinic(this.clinicForm.value)
        .subscribe(
          res=>{
            console.log('Success!',res)
            this.isDisabled = false;
            let snackBarRef = this._snackBar.open('Clinic Scheduled In Database, Click On Notify On Mothers','OK');
          },
          err=>console.log(err)
        );
    }

    getToday(): string {
      return new Date().toISOString().split('T')[0]
    }

    sendEmails(){
      this.clinicService.sendEmails(this.clinicForm.value)
        .subscribe(
          res=>{
            let snackBarRef = this._snackBar.open('Emails Has Been Sent','OK');
            this.router.navigate(["viewClinics/viewClinicRecords"]);
          },
          err=>{
            console.log(err);
            let snackBarRef = this._snackBar.open('Error! Pls Try Again','OK');
          }
        )
    }
}
