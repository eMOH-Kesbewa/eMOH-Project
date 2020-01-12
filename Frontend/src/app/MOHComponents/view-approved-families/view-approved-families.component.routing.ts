import { Routes, RouterModule } from '@angular/router';
import { ViewApprovedFamiliesComponent } from './view-approved-families.component';
import { AddApprovedFamiliesComponent } from '../add-approved-families/add-approved-families.component';
import { ViewFamilybyIdComponent } from '../view-familyby-id/view-familyby-id.component';
import { AddMotherComponent } from '../add-mother/add-mother.component';
import { NgModule } from '@angular/core';
import { AuthGuard } from 'app/auth.guard';



export const ApprovedFamilyRoutes: Routes = [
    {
        path: '',
        component: ViewApprovedFamiliesComponent,
        canActivate:[AuthGuard],
        children: [
            {
                path: 'AddApprovedFamilies',
                component: AddApprovedFamiliesComponent,
                canActivate:[AuthGuard]
            },
            {
                path: 'ViewFamilesById/:familyId',
                component: ViewFamilybyIdComponent,
                canActivate:[AuthGuard]
            },
            { 
                path: 'AddMother/:familyId',
                component: AddMotherComponent,
                canActivate:[AuthGuard]
            }
        
        ]   
    }
    
]

@NgModule({
    imports:[RouterModule.forChild(ApprovedFamilyRoutes)],
    exports:[RouterModule]
})

export class ApprovedFamilies{}

