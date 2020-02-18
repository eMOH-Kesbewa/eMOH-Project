import { Routes, RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';

import { AuthGuard } from 'app/auth.guard';
import { MainComponent } from './main.component';
import { LowWeightBabiesComponent } from '../low-weight-babies/low-weight-babies.component';
import { EyeProblemsComponent } from '../eye-problems/eye-problems.component';
import { HearingProblemsComponent } from '../hearing-problems/hearing-problems.component';
import { DentalProblemsComponent } from '../dental-problems/dental-problems.component';
import { HeartProblemsComponent } from '../heart-problems/heart-problems.component';



export const MainAttenRoutes: Routes = [
    {
        path: '',       
        component: MainComponent,
        canActivate:[AuthGuard],
        children: [
            {
              path: 'lowWeightBabies/:month',
              component: LowWeightBabiesComponent,
              canActivate:[AuthGuard]
            },
           {
               path: 'eyeProblems/:problemType',
               component: EyeProblemsComponent,
               canActivate:[AuthGuard]
           },
           {
                path:'hearingProblems/:problemType',
                component:HearingProblemsComponent,
                canActivate:[AuthGuard],
           },
           {
                path:'dental/:problemType',
                component:DentalProblemsComponent,
                canActivate:[AuthGuard],
            },
            {
                path:'heart/:problemType',
                component:HeartProblemsComponent,
                canActivate:[AuthGuard],
            },
        

        ]
    }
    
]

@NgModule({
    imports:[RouterModule.forChild(MainAttenRoutes)],
    exports:[RouterModule]
})

export class MainAttentions{}

