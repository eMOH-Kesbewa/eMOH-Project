import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Family } from './Models/family';
import { THIS_EXPR } from '@angular/compiler/src/output/output_ast';
@Injectable({
  providedIn: 'root'
})
export class FamiliesService {

  families : any = [] 
  constructor(private http: HttpClient) { }

  getfamilydata():Observable<Family>{
    let uri = "http://localhost:3000/families/view";
    return this.http.get<Family>(uri);
  }

  register(userData,familyId){          //Update the approved family details
    let _url= `http://localhost:3000/families/update/?Identity_number=${familyId}`;
    console.log(userData)
    return this.http.put<Family>(_url , userData, {observe: 'response'})
   }

   
    __url= "http://localhost:3000/families/add";
   add(userData){                                   //Post the approved family details
    console.log(userData)
    return this.http.post<any>(this.__url,userData);
   }
  

   getfamilydataById(familyId){             //Selecting a record by familyId
    let uri = `http://localhost:3000/families/viewbyid/${familyId}`;
    return this.http.get<Family>(uri)
   }

   searchfamilydataById(familyId){             //Selecting a record by familyId
    let uri = `http://localhost:3000/families/searchbyid/${familyId}`;
    return this.http.get<Family>(uri,{observe: 'response'})
   }
   
   getModernContraceptiveMethods(){             //Selecting a record by familyId
    let uri = `http://localhost:3000/families/getModernContraceptiveMethods`;
    return this.http.get<any>(uri)
   }

}
