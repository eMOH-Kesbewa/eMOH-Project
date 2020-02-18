import { Component, OnInit } from '@angular/core';
import * as JWT from 'jwt-decode';
declare const $: any;
declare interface RouteInfo {
    path: string;
    title: string;
    icon: string;
    class: string;
}
export const ROUTESforDoc: RouteInfo[] = [
    { path: '/dashboard', title: 'Dashboard',  icon: 'dashboard', class: '' },
    { path: '/viewApprovedFamilies', title: 'Approved Families',  icon:'people_outline', class: '' },
    { path: '/viewBabies', title: 'Babies',  icon:'child_care', class: '' },
    { path: '/viewClinics', title: 'Clinics',  icon:'home_work', class: '' },
    { path: '/viewMothers', title: 'Mothers',  icon:'pregnant_woman', class: '' },
    { path:'/ViewWeightTable',title: 'Weight Height', icon:'content_paste',class:''},
    { path:'/specialAttention',title: 'Special Attention', icon:'pan_tool',class:''},
    { path:'/regPHM',title: 'Register New PHM', icon:'add_circle_outline',class:''},
];

export const ROUTESforPHM: RouteInfo[] = [
  { path: '/dashboard', title: 'Dashboard',  icon: 'dashboard', class: '' },
  { path: '/viewApprovedFamilies', title: 'Approved Families',  icon:'people_outline', class: '' },
  { path: '/viewBabies', title: 'Babies',  icon:'child_care', class: '' },
  { path: '/viewClinics', title: 'Clinics',  icon:'home_work', class: '' },
  { path: '/viewMothers', title: 'Mothers',  icon:'pregnant_woman', class: '' },
  { path:'/ViewWeightTable',title: 'Weight Height', icon:'content_paste',class:''},
  { path:'/specialAttention',title: 'Special Attention', icon:'pan_tool',class:''},
  { path:'/ViewWeightTable/phmReports',title: 'PHM Report', icon:'perm_contact_calendar',class:''},
  { path:'/regMother',title: 'Register New Mother', icon:'person_add',class:''}
];

export const ROUTESforMother: RouteInfo[] = [
  
];

@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.css']
})
export class SidebarComponent implements OnInit {
  menuItems: any[];

  constructor() { }

  ngOnInit() {
    //var decoded = jwt_decode(token);
    let decodedToken = JWT(localStorage.getItem('token'));
    let role = decodedToken['role'];

    if(role=="Doctor"){
     this.menuItems = ROUTESforDoc.filter(menuItem => menuItem)
    }
    else if(role=="PHM"){
      this.menuItems = ROUTESforPHM.filter(menuItem => menuItem)
    }
    else if(role=="mother"){
      this.menuItems = ROUTESforMother.filter(menuItem => menuItem)
    }
  }
  isMobileMenu() {
      if ($(window).width() > 991) {
          return false;
      }
      return true;
  };
}
