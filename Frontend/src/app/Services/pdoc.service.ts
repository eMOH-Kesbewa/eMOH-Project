import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Pdoc } from 'app/Services/Models/pdoc';

@Injectable({
  providedIn: 'root'
})
export class PdocService {

  mothers : any = [] 
  constructor(private http: HttpClient) { }

  __url= "http://localhost:3000/mothers/addmotherfordoc";
   add(userData){                                   //Post the mothers details
    console.log(userData)
    return this.http.post<any>(this.__url,userData);
   }

   getdata():Observable<Pdoc>{
    let uri = "http://localhost:3000/mothers/motherfordoc/view";
    return this.http.get<Pdoc>(uri);
  }
  

}
