import { Routes, RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';
import { ClinicRecordsComponent } from '../clinic-records/clinic-records.component';
import { AddClinicComponent } from '../add-clinic/add-clinic.component';
import { ClinicNotificationsComponent } from './clinic-notifications.component';
import { AuthGuard } from 'app/auth.guard';



export const ClinicRoutes: Routes = [
    { path: '',       
        component: ClinicNotificationsComponent ,
        canActivate:[AuthGuard],
        children: [
            {
                path: 'viewClinicRecords',
                component: ClinicRecordsComponent,
                canActivate:[AuthGuard],
            },
            {
                path: 'addClinic',
                component:AddClinicComponent,
                canActivate:[AuthGuard],
            }
        ]
    },
    
]

@NgModule({
    imports:[RouterModule.forChild(ClinicRoutes)],
    exports:[RouterModule]
})

export class Clinics{}

