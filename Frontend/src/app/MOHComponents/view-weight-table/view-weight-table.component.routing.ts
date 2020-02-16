import { Routes, RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';
import { ViewWeightTableComponent } from './view-weight-table.component';
import { AddWeightHeightComponent } from '../add-weight-height/add-weight-height.component';
import { ViewWeightByIdComponent } from '../view-weight-by-id/view-weight-by-id.component';
import { WeightHeightGraphbyIdComponent } from 'app/Graphs/weight-height-graphby-id/weight-height-graphby-id.component';
import { PhmDailyReportsComponent } from '../phm-daily-reports/phm-daily-reports.component';
import { MonthlyReportComponent } from '../monthly-report/monthly-report.component';



export const WeightHeightRoutes: Routes = [
    {
        path:'',
        component:ViewWeightTableComponent,
        children: [
            {
                path:'AddWeightHeight',
               component:AddWeightHeightComponent
            },
            {
                path:'viewWeightbyId/:babyID',
                component:ViewWeightByIdComponent
            },
            {
                path:'WeightHeightGraph/:babyID',
                component:  WeightHeightGraphbyIdComponent
            },
            {
                path:'phmReports',
                component:  PhmDailyReportsComponent
            },
            {
                path:'MonthlyReport/:year/:month',
                component: MonthlyReportComponent
            }


        ]
    }
    
]

@NgModule({
    imports:[RouterModule.forChild(WeightHeightRoutes)],
    exports:[RouterModule]
})

export class WeightHeightsR{}

