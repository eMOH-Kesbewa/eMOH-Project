import { Component, OnInit } from '@angular/core';
import { ClinicsService } from 'app/Services/clinics.service';
import { Clinic } from 'app/Services/Models/clinic';
import { Router } from '@angular/router';

@Component({
  selector: 'app-clinic-notifications',
  templateUrl: './clinic-notifications.component.html',
  styleUrls: ['./clinic-notifications.component.scss'],
})
export class ClinicNotificationsComponent implements OnInit {


  constructor(private clinicService: ClinicsService, private router: Router) { }

  clinics : Clinic;
  
  ngOnInit() {
    //this.ClinicsService.getfamilydata().subscribe(data => this.clinics = data);
    this.clinicService.getClinicData().subscribe(data => this.clinics = data);
  }

  checkRoute(){
    //console.log(this.router.url);
    //if(this.router.url=='/viewApprovedFamilies') return true;
  }
  
}
