import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class MotherfordocService {

  constructor(private http: HttpClient) { }

  __url= "http://localhost:3000/mothers/addmotherfordoc";
  add(userData){                                   
   console.log(userData)
   return this.http.post<any>(this.__url,userData);
  }
}
