import { Routes, RouterModule } from '@angular/router';
import { ViewApprovedFamiliesComponent } from './view-approved-families.component';
import { AddApprovedFamiliesComponent } from '../add-approved-families/add-approved-families.component';
import { ViewFamilybyIdComponent } from '../view-familyby-id/view-familyby-id.component';
import { AddMotherComponent } from '../add-mother/add-mother.component';
import { NgModule } from '@angular/core';
import { AuthGuard } from 'app/auth.guard';
import { FamilyReportComponent } from 'app/Graphs/family-report/family-report.component';
import { ModernContraceptiveMethodsComponent } from 'app/Graphs/modern-contraceptive-methods/modern-contraceptive-methods.component';
import { ContraceptivePrevalanceComponent } from 'app/Graphs/contraceptive-prevalance/contraceptive-prevalance.component';



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
            },
            {
                path: 'ModernContMethods/:year',
                component: ModernContraceptiveMethodsComponent,
                canActivate:[AuthGuard]
            },
            {
                path: 'ContraPrevailMethods/:year',
                component: ContraceptivePrevalanceComponent,
                canActivate:[AuthGuard]
            },
            {
                path:'ViewFamilyReport/:year',
                component:FamilyReportComponent,
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

