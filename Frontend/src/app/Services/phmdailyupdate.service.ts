import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

import { THIS_EXPR } from '@angular/compiler/src/output/output_ast';

@Injectable({
  providedIn: 'root'
})
export class PhmdailyupdateService {

  
  constructor(private http: HttpClient) { }

  __url= "http://localhost:3000/phms/add";
   add(userData){                                   //Post the approved family details
    console.log(userData)
    return this.http.post<any>(this.__url,userData);
   }

   Monthlyreport(year,month){             //monthly report
    console.log(year,month)
    let uri = `http://localhost:3000/phms/MonthlyReport/${year}/${month}`;
    return this.http.get<any>(uri)
   }
}
