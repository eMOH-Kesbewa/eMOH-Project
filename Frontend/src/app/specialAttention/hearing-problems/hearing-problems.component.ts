import { Component, OnInit } from '@angular/core';
import { SpecialAttentionService } from 'app/Services/special-attention.service';
import { ActivatedRoute, Router } from '@angular/router';
import * as html2pdf from 'html2pdf.js';

@Component({
  selector: 'app-hearing-problems',
  templateUrl: './hearing-problems.component.html',
  styleUrls: ['./hearing-problems.component.scss']
})
export class HearingProblemsComponent implements OnInit {

  constructor(private  specialAttentionService : SpecialAttentionService,private activeroute: ActivatedRoute, private router:Router) { }

  problemType;
  hearingProblemBabyDatas;

  ngOnInit() {
    this.problemType = this.activeroute.snapshot.paramMap.get('problemType');
    this.specialAttentionService.getHearingProblemBabies(this.problemType).subscribe(data=>{
      this.hearingProblemBabyDatas=data
    });
   
  }
  onClickMe(babyId){
    this.router.navigate(['viewBabies/ViewMotherBabybyID/',babyId])
  }

  saveToPdf(){
    const options = {
      filename:"HearingProblemBabies",
      image:{type:'jpeg'},
      html2canvas:{},
      jsPDF:{orientation: 'landscape'}
    };

    const content : Element = document.getElementById('element-to-export');

    html2pdf()
      .from(content)
      .set(options)
      .save();
   }


}
