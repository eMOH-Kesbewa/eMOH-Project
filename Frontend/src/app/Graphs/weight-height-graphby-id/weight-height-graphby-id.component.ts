import { Component, OnInit } from '@angular/core';
import { Chart } from 'chart.js';

@Component({
  selector: 'app-weight-height-graphby-id',
  templateUrl: './weight-height-graphby-id.component.html',
  styleUrls: ['./weight-height-graphby-id.component.scss']
})
export class WeightHeightGraphbyIdComponent implements OnInit {

  constructor() { }
  LineChart=[]
  ngOnInit() {

    
    
    this.LineChart = new Chart("LineChart", {
        type: 'line',
        data: {
            labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
            datasets: [{
                label: '# of Votes',
                data: [12, 19, 3, 5, 2, 3],
                borderColor: "red",
                borderWidth: 1
            }]
        },
        options: {
            title:{
              texxt:"Bar Chart",
              display:true
            },
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
  }

}
