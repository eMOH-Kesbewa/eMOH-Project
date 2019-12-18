import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Baby } from './Models/baby';
import { map } from "rxjs/operators";

@Injectable({
  providedIn: 'root'
})
export class BabiesService {
  
  // uri = 'http://localhost:3000/babies/add';
  // headers = new HttpHeaders().set('Content-Type','application/json')
  babies : any = []

  constructor(private http: HttpClient) { }

  __url= "http://localhost:3000/babies/add";
   add(userData){                                   //Post the baby details
    console.log(userData)
    return this.http.post<any>(this.__url,userData);
   }

   

   register(userData,babyId){        
    let _url = `http://localhost:3000/babies/update/babybook?baby_id=${babyId}`
    console.log(userData)
    return this.http.put<Baby>(_url , userData,{observe: 'response'});
   }
   

   getbabydata(babyId){             
    let uri = `http://localhost:3000/babies/viewbybabyid/${babyId}`;
    return this.http.get<Baby>(uri)
   }
  
  
  // addBaby(baby_id, name_of_child, date_of_registered){
  //    const obj={
  //     baby_id: baby_id,
  //     name_of_child: name_of_child,
  //     date_of_registered: date_of_registered
  //    };
  //    console.log(obj);
  //    this.http.post(`${this.uri}/add`,obj)
  //        .subscribe(res=>console.log)
  // }
  // getbabydata():Observable<Baby>{
  //   let uri = "http://localhost:3000/babies/view";
  //   return this.http.get<Baby>(uri);
  // }

  // // _url= 'http://localhost:3000/babies/add';
  // onSubmit(userData){
  //   let headers = new HttpHeaders();
    
  //   headers.append("Content-Type",'application/json');
    
  //   return this.http.post("http://localhost:3000/babies/add",userData).pipe(map((res)=>res));
  //   // return this.http.post<any>(this._url , userData);
  //  }
  //  addbabydata():Observable<Baby>{
  //   let uri = "http://localhost:3000/update";
  //   return this.http.get<Baby>(uri);
  // }
}
