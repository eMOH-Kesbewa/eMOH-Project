import { Component, OnInit } from '@angular/core';
import { ClinicsService } from 'app/Services/clinics.service';
import { Clinic } from 'app/Services/Models/clinic';
import { Router } from '@angular/router';
import { TranslateService } from '@ngx-translate/core';

@Component({
  selector: 'app-clinic-notifications',
  templateUrl: './clinic-notifications.component.html',
  styleUrls: ['./clinic-notifications.component.scss'],
})
export class ClinicNotificationsComponent implements OnInit {


  constructor(private clinicService: ClinicsService, private router: Router,private translate: TranslateService) { }

  clinics : Clinic;
 
  
  
  ngOnInit() {
    //this.ClinicsService.getfamilydata().subscribe(data => this.clinics = data);
    this.clinicService.getUpcomingClinicData().subscribe(data => this.clinics = data);
    
  }

  checkRoute(){
    //console.log(this.router.url);
    //if(this.router.url=='/viewApprovedFamilies') return true;
  }

  
  
 

}
