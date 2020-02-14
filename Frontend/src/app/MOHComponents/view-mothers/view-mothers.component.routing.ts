import { Routes, RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';
import { ViewMothersComponent } from './view-mothers.component';
import { AddMotherComponent } from '../add-mother/add-mother.component';
import { PregnancyFormComponent } from '../pregnancy-form/pregnancy-form.component';
import { ViewMotherByIDComponent } from '../view-mother-by-id/view-mother-by-id.component';
import { ViewPregnantMothersComponent } from '../view-pregnant-mothers/view-pregnant-mothers.component';
import { AuthGuard } from 'app/auth.guard';
import { RegPregMothersComponent } from 'app/Graphs/reg-preg-mothers/reg-preg-mothers.component';
import { DeliveryReportComponent } from 'app/Graphs/delivery-report/delivery-report.component';



export const MotherRoutes: Routes = [
    {
        path: '',
        component:ViewMothersComponent,
        canActivate:[AuthGuard],
        children: [
            {
                path: "AddPregnancyForm",
                component:PregnancyFormComponent,
                canActivate:[AuthGuard]
            },
            {
                path: 'viewMotherbyId/:motherId',
                component: ViewMotherByIDComponent,
                canActivate:[AuthGuard]
            },
            {
                path:'ViewPregnantMother',
                component:ViewPregnantMothersComponent,
                canActivate:[AuthGuard]
            },
            {
                path:'viewPregnantReport/:year',
                component:RegPregMothersComponent,
                canActivate:[AuthGuard]
            },
            {
                path:'ViewDeliveryReport/:year',
                component:DeliveryReportComponent,
                canActivate:[AuthGuard]
            },
            



        ]
    }
    
]

@NgModule({
    imports:[RouterModule.forChild(MotherRoutes)],
    exports:[RouterModule]
})

export class Mothers{}

