import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ValidatorService {

  constructor(private http: HttpClient) { }

  checkUsername(username){
    let _emailUrl = "http://localhost:3000/validators/usernameValidator";
    return this.http.post<any>(_emailUrl,username);
  }
  checkId(id){
    let _idUrl = "http://localhost:3000/validators/idValidator";
    return this.http.post<any>(_idUrl,id);
  }
  

}
