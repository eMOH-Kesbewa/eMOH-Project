import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  constructor(private http: HttpClient) { }

  loginUser(userCredentials){
    let _loginUrl = "http://localhost:3000/users/login";
    return this.http.post<any>(_loginUrl,userCredentials);
  }

  registerUser(UserDetails){
    let _regUrl = "http://localhost:3000/users/reguser";
    return this.http.post<any>(_regUrl,UserDetails)
  }

  loggedIn(){
    return !!localStorage.getItem('token');
  }

  getPreviousUserId(areaId){
    let url = `http://localhost:3000/users/generateUserId/${areaId}`;
    return this.http.get<any>(url);
  }
}
