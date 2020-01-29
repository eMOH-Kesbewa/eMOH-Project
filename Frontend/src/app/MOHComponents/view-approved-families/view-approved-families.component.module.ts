import { NgModule } from "@angular/core";
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { ViewApprovedFamiliesComponent } from "./view-approved-families.component";
import { RouterModule } from "@angular/router";
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
import { AddApprovedFamiliesComponent } from "../add-approved-families/add-approved-families.component";
import { ApprovedFamilies } from "./view-approved-families.component.routing";
import { ViewFamilybyIdComponent } from "../view-familyby-id/view-familyby-id.component";
import { AddMotherComponent } from "../add-mother/add-mother.component";
import { PregnantMothers } from "../view-mothers/view-mothers.component.module";
import { TranslateModule, TranslateLoader } from "@ngx-translate/core";
import { HttpLoaderFactory } from "app/app.module";
import { HttpClient } from "@angular/common/http";
import { ModernContraceptiveMethodsComponent } from "app/Graphs/modern-contraceptive-methods/modern-contraceptive-methods.component";
import {MatMenuModule} from '@angular/material/menu';
import { ContraceptivePrevalanceComponent } from "app/Graphs/contraceptive-prevalance/contraceptive-prevalance.component";
@NgModule({
    declarations:[ViewApprovedFamiliesComponent,AddApprovedFamiliesComponent,ViewFamilybyIdComponent,AddMotherComponent,ModernContraceptiveMethodsComponent,ContraceptivePrevalanceComponent],
    imports:[
        ApprovedFamilies,
        CommonModule,
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
        MatMenuModule,
        TranslateModule.forChild({
          loader: {
            provide: TranslateLoader,
            useFactory: HttpLoaderFactory,
            deps: [HttpClient]
          }
        })

    ],
    

})


export class ViewApprovedFamiliesModule {}