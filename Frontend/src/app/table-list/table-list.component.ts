import { Component, OnInit } from '@angular/core';
import { FamiliesService } from 'app/Services/families.service';
import { Family } from 'app/Services/family';

@Component({
  selector: 'app-table-list',
  templateUrl: './table-list.component.html',
  styleUrls: ['./table-list.component.css']
})
export class TableListComponent implements OnInit {

  constructor(private familyservice : FamiliesService) { }

  families : Family;
  
  
  ngOnInit() {
    this.familyservice.getfamilydata().subscribe(data => this.families = data);
    var pregnancies = this.families['Pregnancy_details'];
  }

}