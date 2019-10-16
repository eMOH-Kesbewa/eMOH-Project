import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { MotherfordocService } from 'app/Services/motherfordoc.service';
import { WeightService } from 'app/Services/weight.service';
import {Pregnantmother} from 'app/Services/Models/pregnantmother';
import { Weight } from 'app/Services/Models/weight';


@Component({
  selector: 'app-view-pregnant-mothers',
  templateUrl: './view-pregnant-mothers.component.html',
  styleUrls: ['./view-pregnant-mothers.component.scss']
})
export class ViewPregnantMothersComponent implements OnInit {

  constructor(private motherfordocService: MotherfordocService,private router: Router) { }
 
   pregnantmother =  Pregnantmother;
  // weight: Weight;
  ngOnInit() {
    //  this.motherfordocService.getdata().subscribe(data=> this.pregnantmother=data);
    // this.weightService.getdata().subscribe(data=> this.weight=data);
  }

}
