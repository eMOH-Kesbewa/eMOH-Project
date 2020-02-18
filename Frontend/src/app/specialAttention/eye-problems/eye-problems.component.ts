import { Component, OnInit } from '@angular/core';
import { SpecialAttentionService } from 'app/Services/special-attention.service';
import { ActivatedRoute, Router } from '@angular/router';
import * as html2pdf from 'html2pdf.js';

@Component({
  selector: 'app-eye-problems',
  templateUrl: './eye-problems.component.html',
  styleUrls: ['./eye-problems.component.scss']
})
export class EyeProblemsComponent implements OnInit {

  constructor(private  specialAttentionService : SpecialAttentionService,private activeroute: ActivatedRoute, private router:Router) { }

  problemType;
  eyeProblemBabyDatas;

  ngOnInit() {
    this.problemType = this.activeroute.snapshot.paramMap.get('problemType');
    this.specialAttentionService.getEyeProblemBabies(this.problemType).subscribe(data=>{
      console.log(data)
      this.eyeProblemBabyDatas=data
    });
   
  }

  onClickMe(babyId){
    this.router.navigate(['viewBabies/ViewMotherBabybyID/',babyId])
  }

  saveToPdf(){
    const options = {
      filename:"eyeProblemBabies",
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
