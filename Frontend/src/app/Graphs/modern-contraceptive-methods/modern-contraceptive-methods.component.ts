import { Component, OnInit } from '@angular/core';
import { FamiliesService } from 'app/Services/families.service';
import { Chart } from 'chart.js';
import { ActivatedRoute } from '@angular/router';
import * as html2pdf from 'html2pdf.js';

@Component({
  selector: 'app-modern-contraceptive-methods',
  templateUrl: './modern-contraceptive-methods.component.html',
  styleUrls: ['./modern-contraceptive-methods.component.scss']
})
export class ModernContraceptiveMethodsComponent implements OnInit {

  constructor(private familyService : FamiliesService,private activeroute: ActivatedRoute) { }
  LineChart=[];
  BarChart=[];
  PieChart=[];
  DMPA=[]
  OCP=[]
  IUCD=[]
  Implanon=[]
  Condoms=[]
  LRT=[]
  V=[]
  year

  ngOnInit() {
      this.year = this.activeroute.snapshot.paramMap.get('year');
      this.familyService.getModernContraceptiveMethods(this.year).subscribe(data=>{
        
        console.log(data['Quarter1'][2]['_id'])
        console.log(data['Quarter1'].length)

        let i = 0;
        while(i<data['Quarter1'].length){
           if(data['Quarter1'][i]['_id']=='DMPA') this.DMPA[0] = data['Quarter1'][i]['count']
           if(data['Quarter1'][i]['_id']=='OCP') this.OCP[0] = data['Quarter1'][i]['count']
           if(data['Quarter1'][i]['_id']=='IUCD') this.IUCD[0] = data['Quarter1'][i]['count']
           if(data['Quarter1'][i]['_id']=='Implanon') this.Implanon[0] = data['Quarter1'][i]['count']
           if(data['Quarter1'][i]['_id']=='Condoms') this.Condoms[0] = data['Quarter1'][i]['count']
           if(data['Quarter1'][i]['_id']=='LRT') this.LRT[0] = data['Quarter1'][i]['count']
           if(data['Quarter1'][i]['_id']=='V') this.V[0] = data['Quarter1'][i]['count']
           i++;
         }
         i=0;
         while(i<data['Quarter2'].length){
          if(data['Quarter2'][i]['_id']=='DMPA') this.DMPA[1] = data['Quarter2'][i]['count']
          if(data['Quarter2'][i]['_id']=='OCP') this.OCP[1] = data['Quarter2'][i]['count']
          if(data['Quarter2'][i]['_id']=='IUCD') this.IUCD[1] = data['Quarter2'][i]['count']
          if(data['Quarter2'][i]['_id']=='Implanon') this.Implanon[1] = data['Quarter2'][i]['count']
          if(data['Quarter2'][i]['_id']=='Condoms') this.Condoms[1] = data['Quarter2'][i]['count']
          if(data['Quarter2'][i]['_id']=='LRT') this.LRT[1] = data['Quarter2'][i]['count']
          if(data['Quarter2'][i]['_id']=='V') this.V[1] = data['Quarter2'][i]['count']
          i++;
        }
        i=0;
         while(i<data['Quarter3'].length){
          if(data['Quarter3'][i]['_id']=='DMPA') this.DMPA[2] = data['Quarter3'][i]['count']
          if(data['Quarter3'][i]['_id']=='OCP') this.OCP[2] = data['Quarter3'][i]['count']
          if(data['Quarter3'][i]['_id']=='IUCD') this.IUCD[2] = data['Quarter3'][i]['count']
          if(data['Quarter3'][i]['_id']=='Implanon') this.Implanon[2] = data['Quarter3'][i]['count']
          if(data['Quarter3'][i]['_id']=='Condoms') this.Condoms[2] = data['Quarter3'][i]['count']
          if(data['Quarter3'][i]['_id']=='LRT') this.LRT[2] = data['Quarter3'][i]['count']
          if(data['Quarter3'][i]['_id']=='V') this.V[2] = data['Quarter3'][i]['count']
          i++;
        }
        i=0;
         while(i<data['Quarter4'].length){
          if(data['Quarter4'][i]['_id']=='DMPA') this.DMPA[3] = data['Quarter4'][i]['count']
          if(data['Quarter4'][i]['_id']=='OCP') this.OCP[3] = data['Quarter4'][i]['count']
          if(data['Quarter4'][i]['_id']=='IUCD') this.IUCD[3] = data['Quarter4'][i]['count']
          if(data['Quarter4'][i]['_id']=='Implanon') this.Implanon[3] = data['Quarter4'][i]['count']
          if(data['Quarter4'][i]['_id']=='Condoms') this.Condoms[3] = data['Quarter4'][i]['count']
          if(data['Quarter4'][i]['_id']=='LRT') this.LRT[3] = data['Quarter4'][i]['count']
          if(data['Quarter4'][i]['_id']=='V') this.V[3] = data['Quarter4'][i]['count']
          i++;
        }
         console.log(this.Implanon[3])
        this.BarChart = new Chart('BarChart', {
          type: 'bar',
          data: {
            labels: ["Quarter 1","Quarter 2","Quarter 3","Quarter 4"],
            datasets:[
              {
                label: "DMPA",
                backgroundColor: "rgba(193, 7, 218, 0.34)",
                borderColor: "rgba(193, 7, 218, 0.6)",
                borderWidth: 1,
                data: [this.DMPA[0],this.DMPA[1],this.DMPA[2],this.DMPA[3]]
              },
              {
                label: "OCP",
                backgroundColor: "rgba(7, 218, 31, 0.34)",
                borderColor: "rgba(7, 218, 31, 0.6)",
                borderWidth: 1,
                data: [this.OCP[0],this.OCP[1],this.OCP[2],this.OCP[3]]
              },
              {
                label: "IUCD",
                backgroundColor: "rgba(7, 186, 218, 0.4)",
                borderColor: "rgba(7, 186, 218, 0.6)",
                borderWidth: 1,
                data: [this.IUCD[0],this.IUCD[1],this.IUCD[2],this.IUCD[3]]
              },
              {
                label: "Implanon",
                backgroundColor: "rgba(218, 7, 7, 0.34)",
                borderColor: "rgba(218, 7, 7, 0.6)",
                borderWidth: 1,
                data: [this.Implanon[0],this.Implanon[1],this.Implanon[2],this.Implanon[3]]
              },
              {
                label: "Condoms",
                backgroundColor: "rgba(249, 52, 186, 0.34)",
                borderColor: "rgba(249, 52, 186, 0.6)",
                borderWidth: 1,
                data: [this.Condoms[0],this.Condoms[1],this.Condoms[2],this.Condoms[3]]
              },
              {
                label: "LRT",
                backgroundColor: "rgba(249, 242, 52, 0.34)",
                borderColor: "rgba(249, 242, 52, 0.9)",
                borderWidth: 1,
                data: [this.LRT[0],this.LRT[1],this.LRT[2],this.LRT[3]]
              },
              {
                label: "V",
                backgroundColor: "rgba(249, 170, 52, 0.4)",
                borderColor: "rgba(249, 170, 52, 0.5)",
                borderWidth: 1,
                data: [this.V[0],this.V[1],this.V[2],this.V[3]]
              },
            ],
            
            
           },
           options: {
            title:{
                //text:'Current Users Of Modern Contraceptive Methods',
                //display:true
            },
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero:true,
                        stepSize: 1,

                    }
                }]
            }
            }
          }
        )
      
  })

}

saveToPdf(){
  const options = {
    filename:"dentalProblemBabies",
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
