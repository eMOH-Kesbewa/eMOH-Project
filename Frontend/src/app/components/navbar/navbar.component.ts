import { Component, OnInit, ElementRef } from '@angular/core';
import { ROUTESforDoc,ROUTESforPHM,ROUTESforMother } from '../sidebar/sidebar.component';
import {Location, LocationStrategy, PathLocationStrategy} from '@angular/common';
import { ClinicsService } from 'app/Services/clinics.service';
import { Clinic } from 'app/Services/Models/clinic';
import { searchdata } from 'app/Services/Models/searchdata';
import { Router } from '@angular/router';
import { TranslateService } from '@ngx-translate/core';


@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {
    private listTitles: any[];
    location: Location;
      mobile_menu_visible: any = 0;
    private toggleButton: any;
    private sidebarVisible: boolean;
    public nameOftheSearch;
    clinics : Clinic;
    lang;

    constructor(private translate: TranslateService,location: Location,  private element: ElementRef, private router: Router,private clinicService: ClinicsService) {
      this.location = location;
          this.sidebarVisible = false;
    }

    ngOnInit(){
        if(localStorage.getItem('role')=="Doctor"){
            this.listTitles = ROUTESforDoc.filter(listTitle => listTitle);
           }
           else if((localStorage.getItem('role')=="PHM")){
            this.listTitles = ROUTESforPHM.filter(listTitle => listTitle);
           }
           else if((localStorage.getItem('role')=="Mother")){
            this.listTitles = ROUTESforMother.filter(listTitle => listTitle);
           }  
      //this.listTitles = ROUTESforDoc.filter(listTitle => listTitle);
      const navbar: HTMLElement = this.element.nativeElement;
      this.toggleButton = navbar.getElementsByClassName('navbar-toggler')[0];
      this.router.events.subscribe((event) => {
        this.sidebarClose();
         var $layer: any = document.getElementsByClassName('close-layer')[0];
         if ($layer) {
           $layer.remove();
           this.mobile_menu_visible = 0;
         }
     });
     //MYCode
     this.clinicService.getUpcomingClinicData().subscribe(data => this.clinics = data);
     this.translate.setDefaultLang('en');
     
    }

    sidebarOpen() {
        const toggleButton = this.toggleButton;
        const body = document.getElementsByTagName('body')[0];
        setTimeout(function(){
            toggleButton.classList.add('toggled');
        }, 500);

        body.classList.add('nav-open');

        this.sidebarVisible = true;
    };
    sidebarClose() {
        const body = document.getElementsByTagName('body')[0];
        this.toggleButton.classList.remove('toggled');
        this.sidebarVisible = false;
        body.classList.remove('nav-open');
    };
    sidebarToggle() {
        // const toggleButton = this.toggleButton;
        // const body = document.getElementsByTagName('body')[0];
        var $toggle = document.getElementsByClassName('navbar-toggler')[0];

        if (this.sidebarVisible === false) {
            this.sidebarOpen();
        } else {
            this.sidebarClose();
        }
        const body = document.getElementsByTagName('body')[0];

        if (this.mobile_menu_visible == 1) {
            // $('html').removeClass('nav-open');
            body.classList.remove('nav-open');
            if ($layer) {
                $layer.remove();
            }
            setTimeout(function() {
                $toggle.classList.remove('toggled');
            }, 400);

            this.mobile_menu_visible = 0;
        } else {
            setTimeout(function() {
                $toggle.classList.add('toggled');
            }, 430);

            var $layer = document.createElement('div');
            $layer.setAttribute('class', 'close-layer');


            if (body.querySelectorAll('.main-panel')) {
                document.getElementsByClassName('main-panel')[0].appendChild($layer);
            }else if (body.classList.contains('off-canvas-sidebar')) {
                document.getElementsByClassName('wrapper-full-page')[0].appendChild($layer);
            }

            setTimeout(function() {
                $layer.classList.add('visible');
            }, 100);

            $layer.onclick = function() { //asign a function
              body.classList.remove('nav-open');
              this.mobile_menu_visible = 0;
              $layer.classList.remove('visible');
              setTimeout(function() {
                  $layer.remove();
                  $toggle.classList.remove('toggled');
              }, 400);
            }.bind(this);

            body.classList.add('nav-open');
            this.mobile_menu_visible = 1;

        }
    };

    changeLanguage(e){
        console.log(e)
        localStorage.setItem('lang',e);
        this.translate.setDefaultLang(e);
    }

    getTitle(){
        /* 
      var titlee = this.location.prepareExternalUrl(this.location.path());
      if(titlee.charAt(0) === '#'){
          titlee = titlee.slice( 1 );
      }

      for(var item = 0; item < this.listTitles.length; item++){
          if(this.listTitles[item].path === titlee){
              return this.listTitles[item].title;
          }
      }
      return 'Dashboard';
    }*/
    var routeurl = this.router.url;
    var urlarray = routeurl.split("/");
    var currentroute = urlarray[urlarray.length - 1];
    if(currentroute == "viewApprovedFamilies") return "View Approved Families";
    else if(currentroute == "AddApprovedFamilies") return "Add Approved Families";
    else return currentroute.toString();
    }

    Display(){
       
        var routeurl = this.router.url;
        var urlarray = routeurl.split("/");
        var currentroute = urlarray[urlarray.length - 1];
        if(currentroute == "viewBabies"){
            this.nameOftheSearch = "Search by Baby Id";
            return true;
        }else if(currentroute == "viewApprovedFamilies"){
            this.nameOftheSearch = "Search by Family Id";
            return true;
        }
        else return false;
        
    }

    searchEnterdData = new searchdata('');

    onSubmit(){
        console.log(this.searchEnterdData.data);
        console.log(this.router.url);
        if(this.router.url=="/viewBabies"){
            this.router.navigate([this.router.url,'ViewMotherBabybyID',this.searchEnterdData.data])
        }else if(this.router.url=="/viewApprovedFamilies") {
            this.router.navigate([this.router.url,'ViewFamilesById',this.searchEnterdData.data])
        }
    }

    logOut(){
        localStorage.clear();
        this.router.navigate(['/login']);
    }
    
}
