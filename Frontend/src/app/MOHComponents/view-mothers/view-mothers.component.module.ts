import { NgModule } from "@angular/core";
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';


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
import { Mothers } from "./view-mothers.component.routing";
import { ViewPregnantMothersComponent } from "../view-pregnant-mothers/view-pregnant-mothers.component";
import { AddMotherComponent } from "../add-mother/add-mother.component";
// import { PregnancyFormComponent } from "../pregnancy-form/pregnancy-form.component";
import { ViewMothersComponent } from "./view-mothers.component";
import { ViewMotherByIDComponent } from "../view-mother-by-id/view-mother-by-id.component";
import { TranslateModule, TranslateLoader } from "@ngx-translate/core";
import { HttpLoaderFactory } from "app/app.module";
import { HttpClient } from "@angular/common/http";
import { RegPregMothersComponent } from "app/Graphs/reg-preg-mothers/reg-preg-mothers.component";
import {MatMenuModule} from '@angular/material/menu';
import { DeliveryReportComponent } from 'app/Graphs/delivery-report/delivery-report.component';



@NgModule({
    declarations:[ViewMothersComponent,ViewMotherByIDComponent,RegPregMothersComponent,DeliveryReportComponent
    ],
    imports:[
        Mothers,
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
    ]

})


export class PregnantMothers {}