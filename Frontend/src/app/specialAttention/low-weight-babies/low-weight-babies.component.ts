import { Component, OnInit } from '@angular/core';
import { SpecialAttentionService } from 'app/Services/special-attention.service';
import { ActivatedRoute, Router } from '@angular/router';
import { lowweightDetails } from 'app/Services/Models/lowweightDetails';
import { Weight } from 'app/Services/Models/weight';

@Component({
  selector: 'app-low-weight-babies',
  templateUrl: './low-weight-babies.component.html',
  styleUrls: ['./low-weight-babies.component.scss']
})
export class LowWeightBabiesComponent implements OnInit {

  constructor(private  specialAttentionService : SpecialAttentionService,private activeroute: ActivatedRoute, private router:Router) { }

  months;
  lowWeightBabyDatas : Weight;

  ngOnInit() {
    this.months = this.activeroute.snapshot.paramMap.get('month');
    this.specialAttentionService.getLowWeightBabies(this.months).subscribe(data=>{
      console.log(data)
      this.lowWeightBabyDatas=data
    });
   
  }

  onClickMe(babyId){
    this.router.navigate(['viewBabies/ViewMotherBabybyID/',babyId])
  }

}
