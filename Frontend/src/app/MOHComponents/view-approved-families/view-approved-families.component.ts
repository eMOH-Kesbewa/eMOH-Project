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
  showTable : Boolean = false;
  
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
  
  onKey(event: any){
    console.log(event.target.value)
    this.familyservice.searchfamilydataById(event.target.value).subscribe(
      data=>{
        
        this.families = data.body;
        if(!event.target.value){
          this.showTable = false
        }else{
          this.showTable = true;
        }
      }
    )
}
}
