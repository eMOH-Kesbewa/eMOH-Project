import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Pregnantmother } from 'app/Services/Models/pregnantmother';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class MotherfordocService {

  mothers : any = [] 
  constructor(private http: HttpClient) { }

  getdata():Observable<Pregnantmother>{
    let uri = "http://localhost:3000/mothers/motherfordoc/view";
    return this.http.get<Pregnantmother>(uri);
  }

//   __url= "http://localhost:3000/mothers/addmotherfordoc";
//   add(userData){                                   
//    console.log(userData)
//    return this.http.post<any>(this.__url,userData);
//   }
  
  // __url= "http://localhost:3000/families/add";
  //  add(userData){                                   //Post the approved family details
  //   console.log(userData)
  //   return this.http.post<any>(this.__url,userData);
  //  }
  
}
