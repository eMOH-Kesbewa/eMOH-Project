import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Weight } from './Models/weight';

@Injectable({
  providedIn: 'root'
})
export class WeightService {

  constructor(private http: HttpClient) { }

  getdata():Observable<Weight>{
    let uri = "http://localhost:3000/babies/weight/view";
    return this.http.get<Weight>(uri);
  }

  __url= "http://localhost:3000/addweight";
  add(userData){                                   
   console.log(userData)
   return this.http.post<any>(this.__url,userData);
  }
}