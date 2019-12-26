import { Component, OnInit } from '@angular/core';
import { WeightService } from 'app/Services/weight.service';
import { Router } from '@angular/router';
import { Weight } from 'app/Services/Models/weight';

@Component({
  selector: 'app-view-weight-table',
  templateUrl: './view-weight-table.component.html',
  styleUrls: ['./view-weight-table.component.scss']
})
export class ViewWeightTableComponent implements OnInit {

  constructor(private weightService: WeightService, private router: Router) { }

  weights: Weight;
  showTable : Boolean = false;

  ngOnInit() {
    this.weightService.getdata().subscribe(data=> this.weights=data);
  }

  onClickMe(babyID){
    this.router.navigate([this.router.url,'viewWeightbyId',babyID])
  }

  onKey(event: any){
    console.log(event.target.value)
    this.weightService.searchweightdataById(event.target.value).subscribe(
      data=>{
        
        this.weights = data.body;
        if(!event.target.value){
          this.showTable = false
          
        }else{
          this.showTable = true;
        }
      }
    )
}
}
