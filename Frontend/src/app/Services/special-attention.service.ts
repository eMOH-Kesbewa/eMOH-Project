import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { THIS_EXPR } from '@angular/compiler/src/output/output_ast';
import { lowweightDetails } from './Models/lowweightDetails';
import { Weight } from './Models/weight';
@Injectable({
  providedIn: 'root'
})
export class SpecialAttentionService {

  constructor(private http: HttpClient) { }

  getLowWeightBabies(months){            
    let uri = `http://localhost:3000/specialAttention/lowWeightFirstYear/${months}`
    return this.http.get<Weight>(uri)
   }

   getEyeProblemBabies(problemType){          
    let uri = `http://localhost:3000/specialAttention/eyeProblems/${problemType}`
    return this.http.get<any>(uri)
   }

   getHearingProblemBabies(problemType){          
    let uri = `http://localhost:3000/specialAttention/hearingProblems/${problemType}`
    return this.http.get<any>(uri)
   }

   getDentalProblemsBabies(problemType){          
    let uri = `http://localhost:3000/specialAttention/dental/${problemType}`
    return this.http.get<any>(uri)
   }

   getHeartProblemsBabies(problemType){          
    let uri = `http://localhost:3000/specialAttention/heart/${problemType}`
    return this.http.get<any>(uri)
   }

  
}
