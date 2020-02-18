import { Routes, RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';
import { ViewWeightTableComponent } from './view-weight-table.component';
import { AddWeightHeightComponent } from '../add-weight-height/add-weight-height.component';
import { ViewWeightByIdComponent } from '../view-weight-by-id/view-weight-by-id.component';
import { WeightHeightGraphbyIdComponent } from 'app/Graphs/weight-height-graphby-id/weight-height-graphby-id.component';
import { PhmDailyReportsComponent } from '../phm-daily-reports/phm-daily-reports.component';
import { MonthlyReportComponent } from '../monthly-report/monthly-report.component';
import { AuthGuard } from 'app/auth.guard';



export const WeightHeightRoutes: Routes = [
    {
        path:'',
        component:ViewWeightTableComponent,
        canActivate:[AuthGuard],
        children: [
            {
                path:'AddWeightHeight',
                component:AddWeightHeightComponent,
                canActivate:[AuthGuard]
            },
            {
                path:'viewWeightbyId/:babyID',
                component:ViewWeightByIdComponent,
                canActivate:[AuthGuard]
            },
            {
                path:'WeightHeightGraph/:babyID',
                component:  WeightHeightGraphbyIdComponent,
                canActivate:[AuthGuard]
            },
            {
                path:'phmReports',
                component:  PhmDailyReportsComponent,
                canActivate:[AuthGuard]
            },
            {
                path:'MonthlyReport/:year/:month',
                component: MonthlyReportComponent,
                canActivate:[AuthGuard]
            }


        ]
    }
    
]

@NgModule({
    imports:[RouterModule.forChild(WeightHeightRoutes)],
    exports:[RouterModule]
})

export class WeightHeightsR{}

