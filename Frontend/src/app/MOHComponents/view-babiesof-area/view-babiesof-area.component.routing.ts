import { Routes, RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';
import { ViewBabiesofAreaComponent } from './view-babiesof-area.component';
import { AddmotherbabyjoineddataComponent } from '../addmotherbabyjoineddata/addmotherbabyjoineddata.component';
import { UpdateBabyBookComponent } from '../update-baby-book/update-baby-book.component';
import { ViewBabybyIDComponent } from '../view-babyby-id/view-babyby-id.component';
import { AddWeightHeightComponent } from '../add-weight-height/add-weight-height.component';
import { ImmunizationReportComponent } from 'app/Graphs/immunization-report/immunization-report.component';
import { AuthGuard } from 'app/auth.guard';



export const BabiesRoutes: Routes = [
    {
        path: '',        //Msg has been added to show the success or failure msg to the user when they submit clinic form data
        component: ViewBabiesofAreaComponent,
        canActivate:[AuthGuard],
        children: [
           {
               path: 'AddMotherBabyJoined',
               component: AddmotherbabyjoineddataComponent,
               canActivate:[AuthGuard]
           },
           {
               path: 'UpdateBabyBook/:babyId',
               component: UpdateBabyBookComponent,
               canActivate:[AuthGuard]
           },
           {
                path:'ViewMotherBabybyID/:babyId',
                component:ViewBabybyIDComponent,
                canActivate:[AuthGuard],
           },/*
           {
               path:'AddWeightHeight',
               component:AddWeightHeightComponent
           }*/
           {
               path:'ViewImmunizationReport/:year',
               component:ImmunizationReportComponent,
               canActivate:[AuthGuard],
           }
        ]
    }
    
]

@NgModule({
    imports:[RouterModule.forChild(BabiesRoutes)],
    exports:[RouterModule]
})

export class Babies{}

