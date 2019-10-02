import { Component, OnInit } from '@angular/core';
import { FamiliesService } from 'app/Services/families.service';
import { Family } from 'app/Services/Models/family';
import { Router } from '@angular/router';

@Component({
  selector: 'app-view-approved-families',
  templateUrl: './view-approved-families.component.html',
  styleUrls: ['./view-approved-families.component.scss']
})
export class ViewApprovedFamiliesComponent implements OnInit {

  constructor(private familyservice : FamiliesService,private router: Router) { }

  families : Family;
  
  
  ngOnInit() {
    this.familyservice.getfamilydata().subscribe(data => this.families = data);
  }

  checkRoute(){
    //console.log(this.router.url);
    if(this.router.url=='/viewApprovedFamilies'||this.router.url=='/viewApprovedFamilies/AddApprovedFamilies') return true;
  }

  onClickMe(familyID){
    console.log(familyID);
    this.router.navigate([this.router.url,'ViewFamilesById',familyID])
  }
  
}
