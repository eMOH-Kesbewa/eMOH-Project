import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { motherbabyjoined } from './Models/motherbabyjoined';

@Injectable({
  providedIn: 'root'
})
export class MotherbabyjoinedService {

  constructor(private http: HttpClient) { }

  addnewbaby(userData){
    let _url= 'http://localhost:3000/mothers/update/motherbabyjoined/?mother_id=976650806v';
    console.log(userData);
    return this.http.put<motherbabyjoined>(_url , userData);
   }

  getMotherBabyJoinedData():Observable<motherbabyjoined>{
    let uri = "http://localhost:3000/mothers/view";
    return this.http.get<motherbabyjoined>(uri);
  }

  getmotherbabyjoineddataById(babyId){             //Selecting a record by familyId
    let uri = `http://localhost:3000/mothers/viewmotherbabyjoinedtable/viewbyid/${babyId}`
    return this.http.get<motherbabyjoined>(uri)
   }

   register(userData,babyId){          //Update the approved family details
    let url = `http://localhost:3000/mothers/update/motherbabyjoined?baby_id=${babyId}`;
    console.log(userData)
    return this.http.put<motherbabyjoined>(url , userData,{observe: 'response'});
   }

   searchbabydataById(babyId){             //Selecting a record by motherId
    let uri = `http://localhost:3000/babies/searchbyid/${babyId}`;
    return this.http.get<motherbabyjoined>(uri,{observe: 'response'})
   }
}
