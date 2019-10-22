import { Component, OnInit } from '@angular/core';
import { Chart } from 'chart.js';
import { Weight } from 'app/Services/Models/weight';
import { WeightService } from 'app/Services/weight.service';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-weight-height-graphby-id',
  templateUrl: './weight-height-graphby-id.component.html',
  styleUrls: ['./weight-height-graphby-id.component.scss']
})
export class WeightHeightGraphbyIdComponent implements OnInit {

  constructor(private WeightService : WeightService,private activeroute:ActivatedRoute) { }
  
  babyId
  title = 'Ng7ChartJs By DotNet Techy';
  LineChart=[];
  BarChart=[];
  PieChart=[];

  ngOnInit()
  {
    this.babyId = this.activeroute.snapshot.paramMap.get('babyID');
    this.WeightService.getbabyweightById(this.babyId).subscribe(data => {
      console.log(data.body[0]['baby_id'])
      this.LineChart = new Chart('lineChart', {
        type: 'line',
        data: {

          labels: ["01", "02", "03","04","05", "06", "07","08","09","10","11","12","13", "14", "15","16","17", "18", "19","20","21","22","23","24"],
          datasets: [{
              label: 'Weight of the baby according Months',
              data: [
                data.body[0]['first_yearone'],
                data.body[0]['first_yeartwo'],
                data.body[0]['first_yearthree'],
                data.body[0]['first_yearfour'],
                data.body[0]['first_yearfive'],
                data.body[0]['first_yearsix'],
                data.body[0]['first_yearseven'],
                data.body[0]['first_yeareight'],
                data.body[0]['first_yearnine'],
                data.body[0]['first_yearten'],
                data.body[0]['first_yeareleven'],
                data.body[0]['first_yeartwelve'],
               
                data.body[0]['sec_yearone'],
                data.body[0]['sec_yeartwo'],
                data.body[0]['sec_yearthree'],
                data.body[0]['sec_yearfour'],
                data.body[0]['sec_yearfive'],
                data.body[0]['sec_yearsix'],
                data.body[0]['sec_yearseven'],
                data.body[0]['sec_yeareight'],
                data.body[0]['sec_yearnine'],
                data.body[0]['sec_yearten'],
                data.body[0]['sec_yeareleven'],
                data.body[0]['sec_yeartwelve'],

              ],  
              fill:false,
              lineTension:0.2,
              borderColor:"black",
              borderWidth: 3,
              

          },
          {
              label: 'Extreme Low Weight',
              data: [2.7,3.4,3.95,4.42,4.8,5.1,
                5.3,5.55,5.75,5.95,6.1,6.3,
                6.5,6.6,6.8,6.9,7.1,7.2,
                7.35,7.5,7.65,7.8,7.9,8],
              type: 'line',
              fill:true,
              borderWidth:0,
              backgroundColor: 'rgba(255,0,31,0.39)',
              pointRadius: 0,
              pointHoverRadius: 1
          },
          {
            label: 'Low Weight',
            data: [2.3,
              3.1,3.9,4.5,4.85,5.7,
              5.9,6.2,6.43,6.63,6.8,7,
              7.15,7.3,7.5,7.7,7.85,8,
              8.2,8.35,8.55,8.7,8.8,9
              ],
            type: 'line',
            fill:true,
            borderWidth:0,
            backgroundColor: 'rgba(255,164,0,0.3)',
            pointRadius: 0,
            pointHoverRadius: 1

        },
        {
          label: 'Risked to Low Weight',
          data: [2.8,
            3.55,4.4,5.1,5.6,6.05,6.4,
            6.7,7,7.25,7.5,7.7,7.95,
            8.1,8.3,8.5,8.7,8.8,9,
            9.2,9.4,9.6,9.8,9.97,10.15
            ],
          type: 'line',
          fill:true,
          borderWidth:0,
          backgroundColor: 'rgba(0,152,0,0.29)',
          pointRadius: 0,
          pointHoverRadius: 1
  
      },
      {
        label: 'Appropriate Weight',
        data: [3.2,
          4.1,5.1,5.8,6.4,6.85,7.3,
          7.65,7.95,8.2,8.5,8.7,8.95,
          9.15,9.4,9.6,9.8,10,10.2,
          10.4,10.6,10.85,11.05,11.3,11.5
          ],
        type: 'line',
        fill:true,
        borderWidth:1,
        borderColor:'rgba(0,152,0,1)',
        backgroundColor: 'rgba(0,152,0,0.26)',
        pointRadius: 0,
        pointHoverRadius: 1
      },
      {
        label: '',
        data: [4.3,
          5.4,6.5,7.5,8.2,8.8,9.3,
          9.8,10.2,10.5,10.9,11.2,11.5,
          11.8,12.1,12.4,12.6,12.9,13.2,
          13.4,13.7,15,15.3,15.6,15.8
          ],
        type: 'line',
        fill:true,
        borderWidth:1,
        borderColor:'rgba(0,152,0,1)',
        backgroundColor:  'rgba(0,152,0,0.20)',
        pointRadius: 0,
        pointHoverRadius: 1
      },
      {
        label: 'Extreme Weight',
        data: [4.8,
          6.1,7.4,8.4,9.2,9.95,10.5,
          11,11.5,11.95,12.35,12.7,13.1,
          13.45,13.75,14.1,14.4,14.75,15.1,
          15.4,15.7,16,16.4,16.7,17
          ],
        type: 'line',
        fill:true,
        borderWidth:1,
        borderColor:'rgba(77, 139, 239, 1)',
        backgroundColor: 'rgba(77, 139, 239, 0.15)',
        pointRadius: 0,
        pointHoverRadius: 1
      },
      
        ]
        }, 
        options: {
        title:{
            text:'Weight Graph Of the Baby',
            display:true
        },
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true,
                    suggestedMax: 17,
                    stepSize: 1,
                    maxTicksLimit:20
                }
            }]
        }
        }
        });
    });
     // Line chart:

  }
}
