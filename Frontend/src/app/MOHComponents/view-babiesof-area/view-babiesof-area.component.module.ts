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
import { Babies } from "./view-babiesof-area.component.routing";
import { ViewBabiesofAreaComponent } from "./view-babiesof-area.component";
import { AddmotherbabyjoineddataComponent } from "../addmotherbabyjoineddata/addmotherbabyjoineddata.component";
import { UpdateBabyBookComponent } from "../update-baby-book/update-baby-book.component";
import { ViewBabybyIDComponent } from "../view-babyby-id/view-babyby-id.component";
import { AddWeightHeightComponent } from "../add-weight-height/add-weight-height.component";

@NgModule({
    declarations:[ViewBabiesofAreaComponent,AddmotherbabyjoineddataComponent,UpdateBabyBookComponent,ViewBabybyIDComponent],
    imports:[
        Babies,
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
    ],
    

})


export class BabiesModule {}