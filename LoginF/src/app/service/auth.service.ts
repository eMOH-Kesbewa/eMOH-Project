import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable  } from "rxjs";
const BASEURL = 'http://localhost:3000';
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
  
  requestReset(body): Observable<any> {
    return this.http.post(`${BASEURL}/req-reset-password`, body);
  }

}
