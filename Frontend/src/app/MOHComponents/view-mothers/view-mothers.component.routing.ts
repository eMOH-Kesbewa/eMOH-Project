import { Routes, RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';
import { ViewMothersComponent } from './view-mothers.component';
import { AddMotherComponent } from '../add-mother/add-mother.component';
import { PregnancyFormComponent } from '../pregnancy-form/pregnancy-form.component';
import { ViewMotherByIDComponent } from '../view-mother-by-id/view-mother-by-id.component';
import { ViewPregnantMothersComponent } from '../view-pregnant-mothers/view-pregnant-mothers.component';


export const MotherRoutes: Routes = [
    {
        path: '',
        component:ViewMothersComponent,
        children: [
            {
                path: "AddPregnancyForm",
                component:PregnancyFormComponent
            },
            {
                path: 'viewMotherbyId/:motherId',
                component: ViewMotherByIDComponent
            },
            {
                path:'ViewPregnantMother',
                component:ViewPregnantMothersComponent
            }


        ]
    }
    
]

@NgModule({
    imports:[RouterModule.forChild(MotherRoutes)],
    exports:[RouterModule]
})

export class Mothers{}

