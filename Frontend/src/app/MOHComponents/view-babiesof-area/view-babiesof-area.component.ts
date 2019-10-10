import { Component, OnInit } from '@angular/core';
import { MotherbabyjoinedService } from 'app/Services/motherbabyjoined.service';
import { motherbabyjoined } from 'app/Services/Models/motherbabyjoined';
import { Router } from '@angular/router';

@Component({
  selector: 'app-view-babiesof-area',
  templateUrl: './view-babiesof-area.component.html',
  styleUrls: ['./view-babiesof-area.component.scss']
})
export class ViewBabiesofAreaComponent implements OnInit {

  constructor(private motherbabyjoinedservice : MotherbabyjoinedService,private router: Router) { }

  motherbabyjoineddatas : motherbabyjoined;
  
  
  ngOnInit() {
    this.motherbabyjoinedservice.getMotherBabyJoinedData().subscribe(data => this.motherbabyjoineddatas = data);
  }

  onClickMe(babyId){
    console.log(babyId);
    //this.router.navigate([this.router.url,'ViewFamilesById',familyID])
  }
}
