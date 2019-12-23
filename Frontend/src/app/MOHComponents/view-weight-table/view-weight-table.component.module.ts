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
import { WeightHeightsR } from "./view-weight-table.component.routing";
import { WeightHeightGraphbyIdComponent } from "app/Graphs/weight-height-graphby-id/weight-height-graphby-id.component";
import { ViewWeightTableComponent } from "./view-weight-table.component";
import { AddWeightHeightComponent } from "../add-weight-height/add-weight-height.component";
import { ViewWeightByIdComponent } from "../view-weight-by-id/view-weight-by-id.component";



@NgModule({
    declarations:[ViewWeightTableComponent,AddWeightHeightComponent,ViewWeightByIdComponent,WeightHeightGraphbyIdComponent],
    imports:[
        WeightHeightsR,
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
    ]

})


export class WeightHeights {}