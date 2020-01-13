import { NgModule } from '@angular/core';
import { CommonModule, } from '@angular/common';
import { BrowserModule  } from '@angular/platform-browser';
import { Routes, RouterModule } from '@angular/router';

import { AdminLayoutComponent } from './layouts/admin-layout/admin-layout.component';
import { LoginComponent } from './login/login.component';
import { AuthGuard } from './auth.guard';
import { RegMotherComponent } from './reg-mother/reg-mother.component';
import { RegPHMComponent } from './reg-phm/reg-phm.component';


const routes: Routes =[
  {
    path: '',
    redirectTo: 'dashboard',
    canActivate:[AuthGuard],
    pathMatch: 'full',
  }, {
    path: '',
    component: AdminLayoutComponent,
    canActivate:[AuthGuard],
    children: [{
      path: '',
      loadChildren: './layouts/admin-layout/admin-layout.module#AdminLayoutModule'
    }]
  },{
    path:'login',
    component:LoginComponent
  },{
    path:'regMother',
    component:RegMotherComponent,
    canActivate:[AuthGuard]
  },{
    path:'regPHM',
    component:RegPHMComponent,
    canActivate:[AuthGuard]
  }
  
];

@NgModule({
  imports: [
    CommonModule,
    BrowserModule,
    RouterModule.forRoot(routes,{
       useHash: true
    })
  ],
  exports: [
  ],
})
export class AppRoutingModule { }
