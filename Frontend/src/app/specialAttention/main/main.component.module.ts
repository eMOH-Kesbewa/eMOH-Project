import { NgModule } from "@angular/core";
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

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

import { TranslateModule, TranslateLoader } from "@ngx-translate/core";
import { HttpLoaderFactory } from "app/app.module";
import { HttpClient } from "@angular/common/http";
import { ModernContraceptiveMethodsComponent } from "app/Graphs/modern-contraceptive-methods/modern-contraceptive-methods.component";
import {MatMenuModule} from '@angular/material/menu';
import { FamilyReportComponent } from 'app/Graphs/family-report/family-report.component';
import { ContraceptivePrevalanceComponent } from "app/Graphs/contraceptive-prevalance/contraceptive-prevalance.component";
import { MainAttentions } from "./main.component.routing";
import { MainComponent } from "./main.component";
import { LowWeightBabiesComponent } from "../low-weight-babies/low-weight-babies.component";
import { EyeProblemsComponent } from "../eye-problems/eye-problems.component";
@NgModule({
    declarations:[MainComponent,LowWeightBabiesComponent,EyeProblemsComponent],
    imports:[
        MainAttentions,
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


export class specialAttentionModule {}