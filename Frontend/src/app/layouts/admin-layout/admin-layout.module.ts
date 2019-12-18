import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { AdminLayoutRoutes } from './admin-layout.routing';
import { DashboardComponent } from '../../dashboard/dashboard.component';

import { ViewApprovedFamiliesComponent } from 'app/MOHComponents/view-approved-families/view-approved-families.component';
import { AddApprovedFamiliesComponent } from 'app/MOHComponents/add-approved-families/add-approved-families.component';
import { ViewBabiesofAreaComponent } from 'app/MOHComponents/view-babiesof-area/view-babiesof-area.component';
import { AddmotherbabyjoineddataComponent } from 'app/MOHComponents/addmotherbabyjoineddata/addmotherbabyjoineddata.component';
import { ClinicNotificationsComponent } from 'app/MOHComponents/clinic-notifications/clinic-notifications.component';
import { AddClinicComponent } from 'app/MOHComponents/add-clinic/add-clinic.component';
import { ClinicRecordsComponent } from 'app/MOHComponents/clinic-records/clinic-records.component';
import { UpdateBabyBookComponent } from 'app/MOHComponents/update-baby-book/update-baby-book.component';
import { ViewBabybyIDComponent } from 'app/MOHComponents/view-babyby-id/view-babyby-id.component';
import { ViewMotherByIDComponent } from 'app/MOHComponents/view-mother-by-id/view-mother-by-id.component';
import { AddWeightHeightComponent } from 'app/MOHComponents/add-weight-height/add-weight-height.component';
import { PregnancyFormComponent } from 'app/MOHComponents/pregnancy-form/pregnancy-form.component';
import { ViewPregnantMothersComponent } from 'app/MOHComponents/view-pregnant-mothers/view-pregnant-mothers.component';
import { ViewWeightTableComponent } from 'app/MOHComponents/view-weight-table/view-weight-table.component';
import { ViewWeightByIdComponent } from 'app/MOHComponents/view-weight-by-id/view-weight-by-id.component';
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
import { ViewFamilybyIdComponent } from 'app/MOHComponents/view-familyby-id/view-familyby-id.component';
import { AddMotherComponent } from 'app/MOHComponents/add-mother/add-mother.component';
import { ViewMothersComponent } from 'app/MOHComponents/view-mothers/view-mothers.component';
import { from } from 'rxjs';

import { WeightHeightGraphbyIdComponent } from 'app/Graphs/weight-height-graphby-id/weight-height-graphby-id.component';





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
    MatExpansionModule
    
    ],
  declarations: [
    DashboardComponent,
    ViewApprovedFamiliesComponent,
    AddApprovedFamiliesComponent,
    ViewBabiesofAreaComponent,
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

   WeightHeightGraphbyIdComponent
  ]
})

export class AdminLayoutModule {}
