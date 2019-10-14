import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Mother } from './Models/mother';
import { THIS_EXPR } from '@angular/compiler/src/output/output_ast';

@Injectable({
  providedIn: 'root'
})
export class MotherService {

  constructor(private http: HttpClient) { }

  getdata():Observable<Mother>{
    let uri = "http://localhost:3000/mothers/mother/view";
    return this.http.get<Mother>(uri);
  }

  __url= "http://localhost:3000/mothers/register";
  add(userData){                                   
   console.log(userData)
   return this.http.post<any>(this.__url,userData);
  }

  getmothersdataById(motherId){             
    let uri = `http://localhost:3000/mothers/viewbyid/${motherId}`;
    return this.http.get<Mother>(uri)
   }


   //update
   register(userData,motherId){        
    let _url = `http://localhost:3000/mothers/update/mother?mother_id=${motherId}`
    console.log(userData)
    return this.http.put<Mother>(_url , userData);
   }
}
