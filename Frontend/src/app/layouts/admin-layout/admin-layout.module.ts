import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { AdminLayoutRoutes } from './admin-layout.routing';
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
import { AddClinicComponent } from 'app/MOHComponents/add-clinic/add-clinic.component';
import { ClinicRecordsComponent } from 'app/MOHComponents/clinic-records/clinic-records.component';
import { UpdateBabyBookComponent } from 'app/MOHComponents/update-baby-book/update-baby-book.component';
import { ViewBabybyIDComponent } from 'app/MOHComponents/view-babyby-id/view-babyby-id.component';
import { AddWeightHeightComponent } from 'app/MOHComponents/add-weight-height/add-weight-height.component';
import {MatSnackBarModule} from '@angular/material/snack-bar';
import {
  MatButtonModule,
  MatInputModule,
  MatRippleModule,
  MatFormFieldModule,
  MatTooltipModule,
  MatSelectModule,
  MatRadioModule,
  MatDatepickerModule,MatNativeDateModule

} from '@angular/material';
import {MatSlideToggleModule} from '@angular/material/slide-toggle';
import { ViewFamilybyIdComponent } from 'app/MOHComponents/view-familyby-id/view-familyby-id.component';
import { AddMotherComponent } from 'app/MOHComponents/add-mother/add-mother.component';
import { ViewMothersComponent } from 'app/MOHComponents/view-mothers/view-mothers.component';




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
    MatSnackBarModule
    
    ],
  declarations: [
    DashboardComponent,
    UserProfileComponent,
    TableListComponent,
    TypographyComponent,
    IconsComponent,
    MapsComponent,
    NotificationsComponent,
    UpgradeComponent,
    ViewApprovedFamiliesComponent,
    AddApprovedFamiliesComponent,
    ViewBabiesofAreaComponent,
    AddmotherbabyjoineddataComponent,
    ClinicNotificationsComponent,
    ClinicRecordsComponent,
    AddClinicComponent,
    UpdateBabyBookComponent,
    ViewBabybyIDComponent,
    ViewFamilybyIdComponent,
    AddWeightHeightComponent,
    AddMotherComponent,
    ViewMothersComponent
  ]
})

export class AdminLayoutModule {}
