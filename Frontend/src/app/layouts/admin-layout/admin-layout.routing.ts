import { Routes } from '@angular/router';

import { DashboardComponent } from '../../dashboard/dashboard.component';


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