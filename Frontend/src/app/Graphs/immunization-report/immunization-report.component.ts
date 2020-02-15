import { Component, OnInit } from '@angular/core';
import { BabiesService } from 'app/Services/babies.service'
import { ActivatedRoute } from '@angular/router';
import { Chart } from 'chart.js';
import * as html2pdf from 'html2pdf.js';

@Component({
  selector: 'app-immunization-report',
  templateUrl: './immunization-report.component.html',
  styleUrls: ['./immunization-report.component.scss']
})
export class ImmunizationReportComponent implements OnInit {

  constructor(private babyService:BabiesService,private activeroute: ActivatedRoute) { }

  BarChart:[];
  year
  ngOnInit() {
    this.year = this.activeroute.snapshot.paramMap.get('year');
    this.babyService.ImmuniReport(this.year).subscribe(data=>{
      
      console.log(data['Quarter1'].length)
      this.BarChart = new Chart('BarChart', {
        type: 'bar',
        height:20,
        data: {
          
          datasets:[
            {
              label: "JE",
              backgroundColor: "rgba(255, 99, 132, 0.2)",
              borderColor: "rgba(193, 7, 218, 0.6)",
              borderWidth: 1,
              data: [data['Quarter1'].length]
            },
            {
              label: "MMR 2",
              backgroundColor: "rgba(249, 170, 52, 0.4)",
              borderColor: "rgba(249, 170, 52, 0.5)",
              borderWidth: 1,
              data: [data['Quarter2'].length]
            },
            {
              label: "PVV 1",
              backgroundColor: "rgba(255, 99, 132, 0.2)",
              borderColor: "rgba(193, 7, 218, 0.6)",
              borderWidth: 1,
              data: [data['Quarter3'].length]
            },
            
            
           
          
          ],
          
          
         },
         options: {
          title:{
             
          },
          scales: {
            xAxes: [{
              barPercentage: 0.4
          }],
              yAxes: [{
                  ticks: {
                      beginAtZero:true,
                      stepSize: 10,
                      
  
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
