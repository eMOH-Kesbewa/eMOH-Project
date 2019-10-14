import { Routes } from '@angular/router';

import { DashboardComponent } from '../../dashboard/dashboard.component';
import { UserProfileComponent } from '../../user-profile/user-profile.component';
import { TableListComponent } from '../../table-list/table-list.component';
import { TypographyComponent } from '../../typography/typography.component';
import { IconsComponent } from '../../icons/icons.component';
import { MapsComponent } from '../../maps/maps.component';
import { NotificationsComponent } from '../../notifications/notifications.component';
import { UpgradeComponent } from '../../upgrade/upgrade.component';
import { ViewApprovedFamiliesComponent } from 'app/MOHComponents/view-approved-families/view-approved-families.component';
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

export const AdminLayoutRoutes: Routes = [
    // {
    //   path: '',
    //   children: [ {
    //     path: 'dashboard',
    //     component: DashboardComponent
    // }]}, {
    // path: '',
    // children: [ {
    //   path: 'userprofile',
    //   component: UserProfileComponent
    // }]
    // }, {
    //   path: '',
    //   children: [ {
    //     path: 'icons',
    //     component: IconsComponent
    //     }]
    // }, {
    //     path: '',
    //     children: [ {
    //         path: 'notifications',
    //         component: NotificationsComponent
    //     }]
    // }, {
    //     path: '',
    //     children: [ {
    //         path: 'maps',
    //         component: MapsComponent
    //     }]
    // }, {
    //     path: '',
    //     children: [ {
    //         path: 'typography',
    //         component: TypographyComponent
    //     }]
    // }, {
    //     path: '',
    //     children: [ {
    //         path: 'upgrade',
    //         component: UpgradeComponent
    //     }]
    // }
    { path: 'dashboard',      component: DashboardComponent },
    { path: 'user-profile',   component: UserProfileComponent },
    { path: 'table-list',     component: TableListComponent },
    { path: 'typography',     component: TypographyComponent },
    { path: 'icons',          component: IconsComponent },
    { path: 'maps',           component: MapsComponent },
    { path: 'notifications',  component: NotificationsComponent },
    { path: 'upgrade',        component: UpgradeComponent },
    {
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
            // {
            //     path: "AddPregnancyForm",
            //     component:PregnancyFormComponent
            // }


        ]
    },
    {
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
           },
           {
               path:'ViewWeightTable',
               component:ViewWeightTableComponent
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
<<<<<<< HEAD
                path:"ViewPregnantMothers",
                component:ViewPregnantMothersComponent
=======
                path: 'viewMother/:motherId',
                component: ViewMotherByIDComponent
>>>>>>> 0d1fd493431196fe6854693285de63cbf0f96e08
            }


        ]

    }
    
]