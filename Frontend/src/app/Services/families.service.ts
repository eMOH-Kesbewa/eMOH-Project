import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Family } from './family';
@Injectable({
  providedIn: 'root'
})
export class FamiliesService {

  constructor(private http: HttpClient) { }

  getfamilydata():Observable<Family>{
    let uri = "http://localhost:3000/families/view";
    return this.http.get<Family>(uri);
  }

  _url= 'http://localhost:3000/add';
  register(userData){
   
    return this.http.post<any>(this._url , userData);
   }
  
}
