import { Routes, RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';

import { AuthGuard } from 'app/auth.guard';
import { MainComponent } from './main.component';
import { LowWeightBabiesComponent } from '../low-weight-babies/low-weight-babies.component';
import { EyeProblemsComponent } from '../eye-problems/eye-problems.component';



export const MainAttenRoutes: Routes = [
    {
        path: '',        //Msg has been added to show the success or failure msg to the user when they submit clinic form data
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
        //    {
        //         path:'ViewMotherBabybyID/:babyId',
        //         component:ViewBabybyIDComponent,
        //         canActivate:[AuthGuard],
        //    },/*
        //    {
        //        path:'AddWeightHeight',
        //        component:AddWeightHeightComponent
        //    }*/
        ]
    }
    
]

@NgModule({
    imports:[RouterModule.forChild(MainAttenRoutes)],
    exports:[RouterModule]
})

export class MainAttentions{}

