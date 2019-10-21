import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { map } from "rxjs/operators";

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  url = "http://localhost:3000/user/login";
  user:any;
  constructor(
    private http:HttpClient
  ) { }
 
  logindata(user){

    let headers = new HttpHeaders();
    
    headers.append("Content-Type",'application/json');
    
    // return this.http.post("http://localhost:3000/user/login",user).pipe(map((res)=>res));
    return this.http.post<any>(this.url,user)

  }

}
