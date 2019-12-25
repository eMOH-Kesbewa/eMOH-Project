import { Routes, RouterModule } from '@angular/router';
import { ViewApprovedFamiliesComponent } from './view-approved-families.component';
import { AddApprovedFamiliesComponent } from '../add-approved-families/add-approved-families.component';
import { ViewFamilybyIdComponent } from '../view-familyby-id/view-familyby-id.component';
import { AddMotherComponent } from '../add-mother/add-mother.component';
import { NgModule } from '@angular/core';



export const ApprovedFamilyRoutes: Routes = [
    {
        path: '',
        component: ViewApprovedFamiliesComponent,
        children: [
            {
                path: 'AddApprovedFamilies',
                component: AddApprovedFamiliesComponent
            },
            {
                path: 'ViewFamilesById/:familyId',
                component: ViewFamilybyIdComponent
            },
            { 
                path: 'AddMother/:familyId',
                component: AddMotherComponent
            }
        
        ]   
    }
    
]

@NgModule({
    imports:[RouterModule.forChild(ApprovedFamilyRoutes)],
    exports:[RouterModule]
})

export class ApprovedFamilies{}

