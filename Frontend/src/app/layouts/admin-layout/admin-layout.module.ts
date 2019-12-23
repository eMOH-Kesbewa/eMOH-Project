import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { AdminLayoutRoutes } from './admin-layout.routing';
import { DashboardComponent } from '../../dashboard/dashboard.component';
import {MatSnackBarModule} from '@angular/material/snack-bar';
import {
  MatButtonModule,
  MatInputModule,
  MatRippleModule,
  MatFormFieldModule,
  MatTooltipModule,
  MatSelectModule,
  MatRadioModule,
  MatExpansionModule,
  MatDatepickerModule,MatNativeDateModule

} from '@angular/material';
import {MatSlideToggleModule} from '@angular/material/slide-toggle';






@NgModule({
  imports: [
    CommonModule,
    RouterModule.forChild(AdminLayoutRoutes),
    FormsModule,
    ReactiveFormsModule,
    MatButtonModule,
    MatRippleModule,
    MatFormFieldModule,
    MatInputModule,
    MatSelectModule,
    MatTooltipModule,
    MatRadioModule,
    MatDatepickerModule,MatNativeDateModule,
    MatSlideToggleModule,
    MatSnackBarModule,
    MatExpansionModule,
    RouterModule.forChild([
      {
        path:'viewApprovedFamilies',
        loadChildren:()=>import('../../MOHComponents/view-approved-families/view-approved-families.component.module').then(m=>m.ViewApprovedFamiliesModule)
      },
      {
        path:'viewBabies',
        loadChildren:()=>import('../../MOHComponents/view-babiesof-area/view-babiesof-area.component.module').then(m=>m.BabiesModule)
      },
      {
        path:'viewClinics',
        loadChildren:()=>import('../../MOHComponents/clinic-notifications/clinic-notifications.component.module').then(m=>m.ViewNotifications)
      },
      {
        path:'viewMothers',
        loadChildren:()=>import('../../MOHComponents/view-mothers/view-mothers.component.module').then(m=>m.PregnantMothers)
      },
      {
        path:'ViewWeightTable',
        loadChildren:()=>import('../../MOHComponents/view-weight-table/view-weight-table.component.module').then(m=>m.WeightHeights)
      },


    ])
    
    ],
  declarations: [
    DashboardComponent,
    //AddApprovedFamiliesComponent,
   /* ViewBabiesofAreaComponent,
    AddmotherbabyjoineddataComponent,
    ClinicNotificationsComponent,
    ClinicRecordsComponent,
    AddClinicComponent,
    UpdateBabyBookComponent,
    ViewBabybyIDComponent,
    ViewMotherByIDComponent,
    ViewFamilybyIdComponent,
    AddWeightHeightComponent,
    AddMotherComponent,
    ViewMothersComponent,
    PregnancyFormComponent,
    ViewWeightTableComponent,
    ViewPregnantMothersComponent,

    ViewWeightByIdComponent,

   WeightHeightGraphbyIdComponent*/
  ]
})

export class AdminLayoutModule {}
