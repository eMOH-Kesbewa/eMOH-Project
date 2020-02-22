import { Component, OnInit } from '@angular/core';
import { ClinicsService } from 'app/Services/clinics.service';
import { Clinic } from 'app/Services/Models/clinic';

@Component({
  selector: 'app-clinic-records',
  templateUrl: './clinic-records.component.html',
  styleUrls: ['./clinic-records.component.scss']
})
export class ClinicRecordsComponent implements OnInit {

  constructor(private clinicService: ClinicsService) { }
  
  clinics : Clinic;
  
  ngOnInit() {
    this.clinicService.getPreviousClinicData()
      .subscribe(
        data => {
          console.log(data)
          this.clinics = data
        });
  }

}
