import { Component, OnInit } from '@angular/core';
import { Chart } from 'chart.js';
import { MotherService } from 'app/Services/mother.service'
import { count } from 'rxjs/operators';

@Component({
  selector: 'app-reg-preg-mothers',
  templateUrl: './reg-preg-mothers.component.html',
  styleUrls: ['./reg-preg-mothers.component.scss']
})
export class RegPregMothersComponent implements OnInit {

  constructor(private motherService:MotherService) { }
  LineChart=[];
  BarChart=[];
  PieChart=[];
  

  ngOnInit() {
    this.motherService.registerMother().subscribe(data=>{
      let i = 0;
      while(i<data['Quarter1'].length){
         count()
         i++;
       }
    })
  }

}
