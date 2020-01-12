import { Injectable } from '@angular/core';
import { CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot, UrlTree,Router } from '@angular/router';
import { Observable } from 'rxjs';
import { AuthService } from './Services/auth.service';

@Injectable()
export class AuthGuard implements CanActivate {
  constructor(private authService : AuthService,private router:Router){}
  

  canActivate():boolean{
    if(this.authService.loggedIn()){
      //console.log("Logged In")
      return true
    }else{
      //console.log("Not Logged In")
      this.router.navigate(['/login']);
      return false;
    }
  }
}
