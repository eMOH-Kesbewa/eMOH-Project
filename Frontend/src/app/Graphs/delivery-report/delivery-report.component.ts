import { Component, OnInit } from '@angular/core';
import { MotherService } from 'app/Services/mother.service';
import { ActivatedRoute } from '@angular/router';
import { Chart } from 'chart.js';

@Component({
  selector: 'app-delivery-report',
  templateUrl: './delivery-report.component.html',
  styleUrls: ['./delivery-report.component.scss']
})
export class DeliveryReportComponent implements OnInit {

  constructor(private motherService:MotherService,private activeroute: ActivatedRoute) { }
  BarChart=[];
  year

  ngOnInit() {
    this.year = this.activeroute.snapshot.paramMap.get('year');
    this.motherService.deliveryrMother(this.year).subscribe(data=>{
      
      console.log(data)
      this.BarChart = new Chart('BarChart', {
        type: 'bar',
        
        data: {
        
          datasets:[
            {
              label: "Total Deliveries",
              backgroundColor: "rgba(255, 99, 132, 0.2)",
              borderColor: "rgba(193, 7, 218, 0.6)",
              borderWidth: 1,
              data: [data['total1']]
            },
            {
              label: "Pospartum 1-5 Days",
              backgroundColor: "rgba(193, 7, 218, 0.34)",
              borderColor: "rgba(193, 7, 218, 0.6)",
              borderWidth: 1,
              data: [data['total2']]
            },
            {
              label: "Pospartum 6-9 Days",
              backgroundColor: "rgba(249, 170, 52, 0.4)",
              borderColor: "rgba(249, 170, 52, 0.5)",
              borderWidth: 1,
              data: [data['total3']]
            },
            {
              label: "Pospartum 11-13 Days",
              backgroundColor: "rgba(249, 170, 52, 0.4)",
              borderColor: "rgba(249, 170, 52, 0.5)",
              borderWidth: 1,
              data: [data['total4']]
            },
            {
              label: "Pospartum 14-21 Days",
              backgroundColor: "rgba(193, 7, 218, 0.34)",
              borderColor: "rgba(193, 7, 218, 0.6)",
              borderWidth: 1,
              data: [data['total5']]
            },
            {
              label: "Pospartum 42 Days",
              backgroundColor: "rgba(255, 99, 132, 0.2)",
              borderColor: "rgba(193, 7, 218, 0.6)",
              borderWidth: 1,
              data: [data['total6']]
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

}
