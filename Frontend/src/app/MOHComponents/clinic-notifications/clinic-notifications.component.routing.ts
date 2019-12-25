import { Routes, RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';
import { ClinicRecordsComponent } from '../clinic-records/clinic-records.component';
import { AddClinicComponent } from '../add-clinic/add-clinic.component';
import { ClinicNotificationsComponent } from './clinic-notifications.component';



export const ClinicRoutes: Routes = [
    { path: '',       
        component: ClinicNotificationsComponent ,
        children: [
            {
                path: 'viewClinicRecords',
                component: ClinicRecordsComponent
            },
            {
                path: 'addClinic',
                component:AddClinicComponent
            }
        ]
    },
    
]

@NgModule({
    imports:[RouterModule.forChild(ClinicRoutes)],
    exports:[RouterModule]
})

export class Clinics{}

