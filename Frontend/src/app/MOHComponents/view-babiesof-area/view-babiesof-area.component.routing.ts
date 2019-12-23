import { Routes, RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';
import { ViewBabiesofAreaComponent } from './view-babiesof-area.component';
import { AddmotherbabyjoineddataComponent } from '../addmotherbabyjoineddata/addmotherbabyjoineddata.component';
import { UpdateBabyBookComponent } from '../update-baby-book/update-baby-book.component';
import { ViewBabybyIDComponent } from '../view-babyby-id/view-babyby-id.component';
import { AddWeightHeightComponent } from '../add-weight-height/add-weight-height.component';



export const BabiesRoutes: Routes = [
    {
        path: '',        //Msg has been added to show the success or failure msg to the user when they submit clinic form data
        component: ViewBabiesofAreaComponent,
        children: [
           {
               path: 'AddMotherBabyJoined',
               component: AddmotherbabyjoineddataComponent
           },
           {
               path: 'UpdateBabyBook/:babyId',
               component: UpdateBabyBookComponent
           },
           {
                path:'ViewMotherBabybyID/:babyId',
                component:ViewBabybyIDComponent
           },/*
           {
               path:'AddWeightHeight',
               component:AddWeightHeightComponent
           }*/
        ]
    }
    
]

@NgModule({
    imports:[RouterModule.forChild(BabiesRoutes)],
    exports:[RouterModule]
})

export class Babies{}

