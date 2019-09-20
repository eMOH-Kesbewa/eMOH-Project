import { Component, OnInit } from '@angular/core';
import { FamiliesService } from 'app/Services/families.service';
import { Family } from 'app/Services/family';

@Component({
  selector: 'app-view-approved-families',
  templateUrl: './view-approved-families.component.html',
  styleUrls: ['./view-approved-families.component.scss']
})
export class ViewApprovedFamiliesComponent implements OnInit {

  constructor(private familyservice : FamiliesService) { }

  families : Family;
  
  
  ngOnInit() {
    this.familyservice.getfamilydata().subscribe(data => this.families = data);
  }

  
}
