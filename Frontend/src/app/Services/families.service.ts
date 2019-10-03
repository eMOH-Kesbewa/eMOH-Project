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

  
  register(userData){
    let _url= 'http://localhost:3000/add';
    return this.http.post<any>(_url , userData);
   }
  
   getfamilydataById(familyId){
    //console.log(`http://localhost:3000/families/viewbyid/${familyId}`);
    let uri = `http://localhost:3000/families/viewbyid/${familyId}`;
    return this.http.get<Family>(uri)
    /*this.http.get(uri).toPromise().then(data=>{
      //console.log(data);

      for(let key in data){
        if(data.hasOwnProperty(key))
          this.families.push(data[key]);
      }
    });
    return this.families;*/

   }

}
