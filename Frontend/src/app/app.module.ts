import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { RouterModule } from '@angular/router';



import { AppRoutingModule } from './app.routing';
import { ComponentsModule } from './components/components.module';

import { AppComponent } from './app.component';
import { HttpClientModule } from '@angular/common/http'
import { DashboardComponent } from './dashboard/dashboard.component';
import { UserProfileComponent } from './user-profile/user-profile.component';
import { TableListComponent } from './table-list/table-list.component';
import { TypographyComponent } from './typography/typography.component';
import { IconsComponent } from './icons/icons.component';
import { MapsComponent } from './maps/maps.component';
import { NotificationsComponent } from './notifications/notifications.component';
import { UpgradeComponent } from './upgrade/upgrade.component';
import {
  AgmCoreModule
} from '@agm/core';
import { AdminLayoutComponent } from './layouts/admin-layout/admin-layout.component';
import { ViewBabiesofAreaComponent } from './MOHComponents/view-babiesof-area/view-babiesof-area.component';
import { ViewBabybyIDComponent } from './MOHComponents/view-babyby-id/view-babyby-id.component';
import { ClinicNotificationsComponent } from './MOHComponents/clinic-notifications/clinic-notifications.component';
import { UpdateBabyBookComponent } from './MOHComponents/update-baby-book/update-baby-book.component';
import { ViewFamilybyIdComponent } from './MOHComponents/view-familyby-id/view-familyby-id.component';
import { AddWeightHeightComponent } from './MOHComponents/add-weight-height/add-weight-height.component';
import { ViewMothersComponent } from './MOHComponents/view-mothers/view-mothers.component';

@NgModule({
  imports: [
    BrowserAnimationsModule,
    FormsModule,
    ReactiveFormsModule,
    HttpModule,
    HttpClientModule,
    ComponentsModule,
    RouterModule,
    AppRoutingModule,
    AgmCoreModule.forRoot({
      apiKey: 'YOUR_GOOGLE_MAPS_API_KEY'
    })
  ],
  declarations: [
    AppComponent,
    AdminLayoutComponent
    
   
    
  
  

    
 
    
   

  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
