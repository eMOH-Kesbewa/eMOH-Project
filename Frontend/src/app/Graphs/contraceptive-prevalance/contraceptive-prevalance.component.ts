import { Component, OnInit } from '@angular/core';
import { Chart } from 'chart.js';
import { FamiliesService } from 'app/Services/families.service';
@Component({
  selector: 'app-contraceptive-prevalance',
  templateUrl: './contraceptive-prevalance.component.html',
  styleUrls: ['./contraceptive-prevalance.component.scss']
})
export class ContraceptivePrevalanceComponent implements OnInit {

  constructor(private familyService : FamiliesService) { }

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
  not_accepted=[]
  totalFp=[]
  ModMethods=[]

  ngOnInit() {
    this.familyService.getModernContraceptiveMethods().subscribe(data=>{
        
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
         if(data['Quarter1'][i]['_id']=='not accepted') this.not_accepted[0] = data['Quarter1'][i]['count']
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
        if(data['Quarter2'][i]['_id']=='not accepted') this.not_accepted[1] = data['Quarter2'][i]['count']
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
        if(data['Quarter3'][i]['_id']=='not accepted') this.not_accepted[2] = data['Quarter3'][i]['count']
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
        if(data['Quarter4'][i]['_id']=='not accepted') this.not_accepted[3] = data['Quarter4'][i]['count']
        i++;
      }
       console.log(this.Implanon[3])
      i=0;
      
     // this.totalFp[0]=this.DMPA[0]+this.not_accepted[0];
      
       while(i<4){
          this.totalFp[i]=(this.DMPA[i]||0)+(this.IUCD[i]||0)+(this.OCP[i]||0)+(this.Implanon[i]||0)+(this.Condoms[i]||0)+(this.LRT[i]||0)+(this.V[i]||0)+(this.not_accepted[i]||0);
          i++;
       }
      
      i=0;
      

      while(i<4){
        this.ModMethods[i]=(this.totalFp[i]||0)-(this.not_accepted[i]||0)
        i++;
      }
      console.log(this.totalFp[2])
      this.BarChart = new Chart('BarChart', {
        type: 'bar',
        data: {
          labels: ["Quarter 1","Quarter 2","Quarter 3","Quarter 4"],
          datasets:[
            {
              label: "Total.FP.",
              backgroundColor: "rgba(193, 7, 218, 0.34)",
              borderColor: "rgba(193, 7, 218, 0.6)",
              borderWidth: 1,
              data: [this.totalFp[0],this.totalFp[1],this.totalFp[2],this.totalFp[3]]
            },
            {
              label: "Modern Methods",
              backgroundColor: "rgba(7, 218, 31, 0.34)",
              borderColor: "rgba(7, 218, 31, 0.6)",
              borderWidth: 1,
              data: [this.ModMethods[0],this.ModMethods[1],this.ModMethods[2],this.ModMethods[3]]
            },
            {
              label: "Un. Need",
              backgroundColor: "rgba(7, 186, 218, 0.4)",
              borderColor: "rgba(7, 186, 218, 0.6)",
              borderWidth: 1,
              data: [this.not_accepted[0],this.not_accepted[1],this.not_accepted[2],this.not_accepted[3]]
            }
          
          ],
          
          
         },
         options: {
          title:{
              text:'Contraceptive Prevalence',
              display:true
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
}
