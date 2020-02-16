import { Component, OnInit } from '@angular/core';
import { FamiliesService } from 'app/Services/families.service'
import { ActivatedRoute } from '@angular/router';
import { Chart } from 'chart.js';
import * as html2pdf from 'html2pdf.js';

@Component({
  selector: 'app-family-report',
  templateUrl: './family-report.component.html',
  styleUrls: ['./family-report.component.scss']
})
export class FamilyReportComponent implements OnInit {

  constructor(private familyService:FamiliesService,private activeroute: ActivatedRoute) { }
  BarChart=[];
  PieChart=[];
  year

  ngOnInit() {
    this.year = this.activeroute.snapshot.paramMap.get('year');
    this.familyService.FamilyReport(this.year).subscribe(data=>{
      this.BarChart = new Chart('BarChart', {
        type: 'bar',
        height:20,
        data: {
          
          datasets:[
            {
              label: "Registered Mothers Before 8 Weeks",
              backgroundColor: "rgba(255, 99, 132, 0.2)",
              borderColor: "rgba(193, 7, 218, 0.6)",
              borderWidth: 1,
              data: [data['total1']]
            },
            {
              label: "Registered Mothers Between 8-12 Weeks",
              backgroundColor: "rgba(249, 170, 52, 0.4)",
              borderColor: "rgba(249, 170, 52, 0.5)",
              borderWidth: 1,
              data: [data['total2']]
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
      filename:"familyReport",
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
