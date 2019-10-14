import { Component, OnInit } from '@angular/core';
import { MotherService } from 'app/Services/mother.service';
import { Router } from '@angular/router';
import { Mother } from 'app/Services/Models/mother';

@Component({
  selector: 'app-view-mothers',
  templateUrl: './view-mothers.component.html',
  styleUrls: ['./view-mothers.component.scss']
})
export class ViewMothersComponent implements OnInit {

  constructor(private motherService: MotherService, private router: Router) { }

  mother: Mother;

  ngOnInit() {
    this.motherService.getdata().subscribe(data=> this.mother=data);
  }

  onClickMe(motherID){
    console.log(motherID);
    this.router.navigate([this.router.url,'viewMother',motherID])
  }

}
