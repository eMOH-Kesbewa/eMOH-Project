import { Component, OnInit } from '@angular/core';
import { FamiliesService } from 'app/Services/families.service';
import { ActivatedRoute } from '@angular/router';
import { Family } from 'app/Services/Models/family';
import { Router } from '@angular/router';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
@Component({
  selector: 'app-view-familyby-id',
  templateUrl: './view-familyby-id.component.html',
  styleUrls: ['./view-familyby-id.component.scss']
})
export class ViewFamilybyIdComponent implements OnInit {

  constructor(private familyservice : FamiliesService,private router: Router,private activeroute: ActivatedRoute,private formBuilder: FormBuilder) { }

  families : Family;
  approvedFamilyForm: FormGroup;
  
  ngOnInit() {
    let familyId = this.activeroute.snapshot.paramMap.get('familyId');
    this.approvedFamilyForm = this.formBuilder.group({
      village_id : [''],
      Approved_family_category: [''],
      Identity_number: [''],
      Date: [''],
      Name_of_wife: [''],
      Name_of_husband: [''],
      address: [''],
      Date_of_birth: [''],
      Age_at_the_time_of_marriage: [''],
      Job_status: [''],
      Education_level: [''],
      Number_of_living_children: [''],
      Pregnancy_details__Pregnancy__Frist: [''],
      Pregnancy_details__Pregnancy__Second: [''],
      Pregnancy_details__Pregnancy__Third: [''],
      Pregnancy_details__Pregnancy__Fourth: [''],
      Pregnancy_details__Pregnancy__Fifth: [''],
      Pregnancy_details__Result__First: [''],
      Pregnancy_details__Result__Second: [''],
      Pregnancy_details__Result__Third: [''],
      Pregnancy_details__Result__Fourth: [''],
      Pregnancy_details__Result__Fifth: [''],
      Family_planning_methods__First__Method: [''],
      Family_planning_methods__First__Date: [''],
      Family_planning_methods__second__Method: [''],
      Family_planning_methods__second__Date: [''],
      Family_planning_methods__third__Method: [''],
      Family_planning_methods__third__Date: [''],
      Family_planning_methods__fourth__Method: [''],
      Family_planning_methods__fourth__Date: [''],
      Safe_for_rubella: [''],
      Date_of_cervical_mucous_test: [''],
      Other_details: [''],
      number_of_young_children: ['']
    });
    this.approvedFamilyForm.valueChanges.subscribe(console.log)
    
    this.familyservice.getfamilydataById(familyId).subscribe(data => {
        console.log(data[0]['Date']);
        this.approvedFamilyForm.patchValue({
          village_id : [data[0]['village_id']],
          Approved_family_category: [data[0]['Approved_family_category']] ,
          Identity_number: [data[0]['Identity_number']],
          Date: [this.dateconverter(data[0]['Date'])],
          Name_of_wife: [data[0]['Name_of_wife']],
          Name_of_husband: [data[0]['Name_of_husband']],
          address: [data[0]['address']],
          Date_of_birth: [this.dateconverter(data[0]['Date_of_birth'])],
          Age_at_the_time_of_marriage: [data[0]['Age_at_the_time_of_marriage']],
          Job_status: [data[0]['Job_status']],
          Education_level: [data[0]['Education_level']],
          Number_of_living_children: [data[0]['Number_of_living_children']],
          Pregnancy_details__Pregnancy__Frist: [data[0]['Pregnancy_details__Pregnancy__Frist']],
          Pregnancy_details__Pregnancy__Second: [data[0]['Pregnancy_details__Pregnancy__Second']],
          Pregnancy_details__Pregnancy__Third: [data[0]['Pregnancy_details__Pregnancy__Third']],
          Pregnancy_details__Pregnancy__Fourth: [data[0]['Pregnancy_details__Pregnancy__Fourth']],
          Pregnancy_details__Pregnancy__Fifth: [data[0]['Pregnancy_details__Pregnancy__Fifth']],
          Pregnancy_details__Result__First: [data[0]['Pregnancy_details__Result__First']],
          Pregnancy_details__Result__Second: [data[0]['Pregnancy_details__Result__Second']],
          Pregnancy_details__Result__Third: [data[0]['Pregnancy_details__Result__Third']],
          Pregnancy_details__Result__Fourth: [data[0]['Pregnancy_details__Result__Fourth']],
          Pregnancy_details__Result__Fifth: [data[0]['Pregnancy_details__Result__Fifth']],
          Family_planning_methods__First__Method: [data[0]['Family_planning_methods__First__Method']],
          Family_planning_methods__First__Date: [this.dateconverter(data[0]['Family_planning_methods__First__Date'])],
          Family_planning_methods__second__Method: [data[0]['Family_planning_methods__second__Method']],
          Family_planning_methods__second__Date: [this.dateconverter(data[0]['Family_planning_methods__second__Date'])],
          Family_planning_methods__third__Method: [data[0]['Family_planning_methods__third__Method']],
          Family_planning_methods__third__Date: [this.dateconverter(data[0]['Family_planning_methods__third__Date'])],
          Family_planning_methods__fourth__Method: [data[0]['Family_planning_methods__fourth__Method']],
          Family_planning_methods__fourth__Date: [this.dateconverter(data[0]['Family_planning_methods__fourth__Date'])],
          Safe_for_rubella: [data[0]['Safe_for_rubella']],
          Date_of_cervical_mucous_test: [data[0]['Date_of_cervical_mucous_test']],
          Other_details: [data[0]['Other_details']],
          number_of_young_children: [data[0]['number_of_young_children']]
        });
    });
  }

  onSubmit() {
 
    if (this.approvedFamilyForm.invalid) {
        return;
    }
    console.log(this.approvedFamilyForm.value)
    this.familyservice.register(this.approvedFamilyForm.value);
    }

    dateconverter(isodate:String){ //Convert ISOFormat data to yyyy-MM-dd format
      if(isodate.length == 0){
        return ""
      }else{
        return isodate.substr(0,10)
      }
    }

}
