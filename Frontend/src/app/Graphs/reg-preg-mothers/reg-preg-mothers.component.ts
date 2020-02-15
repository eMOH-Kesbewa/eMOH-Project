import { Component, OnInit } from '@angular/core';
import { Chart } from 'chart.js';
import { MotherService } from 'app/Services/mother.service'
import { ActivatedRoute } from '@angular/router';
import { count } from 'rxjs/operators';
import * as html2pdf from 'html2pdf.js';

@Component({
  selector: 'app-reg-preg-mothers',
  templateUrl: './reg-preg-mothers.component.html',
  styleUrls: ['./reg-preg-mothers.component.scss']
})
export class RegPregMothersComponent implements OnInit {

  constructor(private motherService:MotherService,private activeroute: ActivatedRoute) { }
  LineChart=[];
  BarChart=[];
  PieChart=[];
  year
  

  ngOnInit() {
    this.year = this.activeroute.snapshot.paramMap.get('year');
    this.motherService.registerMother(this.year).subscribe(data=>{
      
    console.log(data)
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
            data: [data['sum_of_dates1']]
          },
          {
            label: "Registered Mothers Between 8-12 Weeks",
            backgroundColor: "rgba(193, 7, 218, 0.34)",
            borderColor: "rgba(193, 7, 218, 0.6)",
            borderWidth: 1,
            data: [data['sum_of_dates2']]
          },
          {
            label: "Registered Mothers After 12 Weeks",
            backgroundColor: "rgba(249, 170, 52, 0.4)",
            borderColor: "rgba(249, 170, 52, 0.5)",
            borderWidth: 1,
            data: [data['sum_of_dates3']]
          },
          {
            label: "Total",
            backgroundColor: "rgba(249, 170, 52, 0.4)",
            borderColor: "rgba(249, 170, 52, 0.5)",
            borderWidth: 1,
            data: [data['total']]
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
