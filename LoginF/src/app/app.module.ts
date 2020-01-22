import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {FormGroup, FormControl, Validators, FormsModule, ReactiveFormsModule} from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { FlashMessagesModule } from 'angular2-flash-messages';
import{Routes, RouterModule} from '@angular/router';


import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LoginComponent } from './components/login/login.component';
import { AuthService } from './service/auth.service';
import { RequestResetComponent } from './request-reset/request-reset.component'

const routes: Routes = [
  {
    path: 'request-reset-password',
    component: RequestResetComponent
  }
];
@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    RequestResetComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormGroup, FormControl, Validators, FormsModule, ReactiveFormsModule,
    HttpClientModule,
    FlashMessagesModule.forRoot(),
    RouterModule.forRoot(routes)

  ],
  providers: [AuthService],
  exports:[RouterModule],
  bootstrap: [AppComponent]
})
export class AppModule { }
