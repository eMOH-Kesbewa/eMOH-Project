import { Component, OnInit } from '@angular/core';

declare const $: any;
declare interface RouteInfo {
    path: string;
    title: string;
    icon: string;
    class: string;
}
export const ROUTES: RouteInfo[] = [
    { path: '/dashboard', title: 'Dashboard',  icon: 'dashboard', class: '' },
    { path: '/viewApprovedFamilies', title: 'Approved Families',  icon:'people_outline', class: '' },
    { path: '/viewBabies', title: 'Babies',  icon:'child_care', class: '' },
    { path: '/viewClinics', title: 'Clinics',  icon:'home_work', class: '' },
    { path: '/viewMothers', title: 'Mothers',  icon:'pregnant_woman', class: '' },
    { path:'/ViewWeightTable',title: 'Weight Height', icon:'content_paste',class:''}
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
    this.menuItems = ROUTES.filter(menuItem => menuItem);
  }
  isMobileMenu() {
      if ($(window).width() > 991) {
          return false;
      }
      return true;
  };
}
