import { Routes } from '@angular/router';

import { DashboardComponent } from '../../dashboard/dashboard.component';
//import { ViewApprovedFamiliesComponent } from 'app/MOHComponents/view-approved-families/view-approved-families.component';
import { AddApprovedFamiliesComponent } from 'app/MOHComponents/add-approved-families/add-approved-families.component';
import { ViewBabiesofAreaComponent } from 'app/MOHComponents/view-babiesof-area/view-babiesof-area.component';
import { AddmotherbabyjoineddataComponent } from 'app/MOHComponents/addmotherbabyjoineddata/addmotherbabyjoineddata.component';
import { ClinicNotificationsComponent } from 'app/MOHComponents/clinic-notifications/clinic-notifications.component';
import { ClinicRecordsComponent } from 'app/MOHComponents/clinic-records/clinic-records.component';
import { AddClinicComponent } from 'app/MOHComponents/add-clinic/add-clinic.component';
import { UpdateBabyBookComponent } from 'app/MOHComponents/update-baby-book/update-baby-book.component';
import { ViewBabybyIDComponent } from 'app/MOHComponents/view-babyby-id/view-babyby-id.component';
import { ViewFamilybyIdComponent } from 'app/MOHComponents/view-familyby-id/view-familyby-id.component';
import { AddWeightHeightComponent } from 'app/MOHComponents/add-weight-height/add-weight-height.component';
import { AddMotherComponent } from 'app/MOHComponents/add-mother/add-mother.component';
import { ViewMothersComponent } from 'app/MOHComponents/view-mothers/view-mothers.component';
import { PregnancyFormComponent } from 'app/MOHComponents/pregnancy-form/pregnancy-form.component';
import { ViewPregnantMothersComponent } from 'app/MOHComponents/view-pregnant-mothers/view-pregnant-mothers.component';
import { ViewWeightTableComponent } from 'app/MOHComponents/view-weight-table/view-weight-table.component';
import { ViewMotherByIDComponent } from 'app/MOHComponents/view-mother-by-id/view-mother-by-id.component';


import { WeightHeightGraphbyIdComponent } from 'app/Graphs/weight-height-graphby-id/weight-height-graphby-id.component';
import { ViewWeightByIdComponent } from 'app/MOHComponents/view-weight-by-id/view-weight-by-id.component';

export const AdminLayoutRoutes: Routes = [
    { path: 'dashboard',      component: DashboardComponent },
   /* {
        path: 'viewApprovedFamilies',
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
            },
            


        ]
    },*/
    /*{
        path: 'viewBabies',        //Msg has been added to show the success or failure msg to the user when they submit clinic form data
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
           },
           {
               path:'AddWeightHeight',
               component:AddWeightHeightComponent
           }
           
       ]
       
       },
    { path: 'viewClinics',       
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
    {
        path: 'viewMothers',
        component:ViewMothersComponent,
        children: [
            {
                path: 'addMother',
                component: AddMotherComponent
            },
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

    },
    
    {
         path:'ViewWeightTable',
        component:ViewWeightTableComponent,
        children: [
            {
                path:'AddWeightHeight',
               component:AddWeightHeightComponent
            },
            {
                path:'viewWeightbyId/:babyID',
                component:ViewWeightByIdComponent
            },
            {
                path:'WeightHeightGraph/:babyID',
                component:  WeightHeightGraphbyIdComponent
            }


        ]

    },*/
    

    
]