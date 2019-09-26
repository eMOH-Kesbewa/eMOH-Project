import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Clinic } from './Models/clinic';

@Injectable({
  providedIn: 'root'
})
export class ClinicsService {

  constructor(private http: HttpClient) { }

  getUpcomingClinicData():Observable<Clinic>{
    let uri = "http://localhost:3000/clinics/viewUpComingClinics";
    return this.http.get<Clinic>(uri);
  }

  _url= 'http://localhost:3000/add';
  register(userData){
    return this.http.post<any>(this._url , userData);
   }
}
