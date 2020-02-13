//view mother by id.ts
import { Component, OnInit } from '@angular/core';
import { MotherService } from 'app/Services/mother.service';
import { ActivatedRoute } from '@angular/router';
import { Mother } from 'app/Services/Models/mother';
import { Router } from '@angular/router';
import { FormBuilder, FormGroup, Validators,FormControl } from '@angular/forms';
import {MatSnackBar} from '@angular/material/snack-bar';

@Component({
  selector: 'app-view-mother-by-id',
  templateUrl: './view-mother-by-id.component.html',
  styleUrls: ['./view-mother-by-id.component.scss']
})
export class ViewMotherByIDComponent implements OnInit {

  constructor(private motherService: MotherService, private router: Router, private activeroute: ActivatedRoute, private formBuilder: FormBuilder, private _snackBar: MatSnackBar) { }

  
  hide=true;
  success=false;
  


  mothers : Mother;
  addMotherForm: FormGroup;
  autoRenew : FormControl;
  babyList;
  public motherId


  ngOnInit() {
    this.motherId = this.activeroute.snapshot.paramMap.get('motherId');
    this.addMotherForm = this.formBuilder.group({
      mother_id: [''],
      registration_no: [''],
      registration_date: [''],
      mothers_name: [''],
      address: [''],
      age: [''],
      no_of_living_children: [''],
      gravidity: [''],
      POA: [''],
      EDD: [''],
      protection_against_tetanus: [''],
      protection_against_rubella:  [''],
      risk_conditions:  [''],
      blood_sugar__during_first_twelve_weeks: [''],
      blood_sugar__twentyfour_fourtyeight_weeks: [''],
      hemoglobin_level__first_twelve_weeks: [''],
      hemoglobin_level__twentysix_twentyeight_weeks: [''],
      blood_group: [''],
      vdrl_test__before_twelve_weeks: [''],
      vdrl_test__after_twelve_weeks: [''],
      hiv_screening: [''],
      
      mothers_weight__weight_at_first_visit: [''],
      mothers_weight__poa_at_first_visit: [''],
      mothers_weight__weight_at_last_visit: [''],
      mothers_weight__poa_at_last_visit: [''],
      mothers_weight__gained_weight_during_pregnancy: [''],
  
      bmi_before_twelve_weeks: [''],
  
      delivery_informations__date: [''],
      delivery_informations__place: [''],
      delivery_informations__outcome: [''],
      delivery_informations__sex: [''],
      mode_of_delivery: [''],
  
      birth_weight: [''],
  
      postpartum_visits__within_first_five_days: [''],
      postpartum_visits__six_to_ten_days: [''],
      postpartum_visits__late_first_visit_eleven_thirteen_days: [''],
      postpartum_visits__fourteen_twentyone_days: [''],
      postpartum_visits__arround_fourtytwo_days: [''],
  
      registration_no_in_bi_register: [''],
      registration_date_in_bi_register: [''],
      remarks: ['']
    });
    this.motherService.getmothersdataById(this.motherId).subscribe(data => {
      this.addMotherForm.patchValue({
      mother_id: data[0] ['mother_id'],
      registration_no: data[0] ['registration_no'],
      registration_date:this.dateconverter (data[0] ['registration_date']),
      mothers_name: data[0] ['mothers_name'],
      address: data[0] ['address'],
      age: data[0]['age'],
      no_of_living_children:  data[0]['no_of_living_children'],
      gravidity: data[0] ['gravidity'],
      POA: data[0] ['POA'],
      EDD: this.dateconverter(data[0] ['EDD']),
      protection_against_tetanus: data[0]['protection_against_tetanus'],
      protection_against_rubella: data[0]['protection_against_rubella'],
      risk_conditions: data[0]['risk_conditions'],
      blood_sugar__during_first_twelve_weeks: data[0]['blood_sugar__during_first_twelve_weeks'],
      blood_sugar__twentyfour_fourtyeight_weeks: data[0]['blood_sugar__twentyfour_fourtyeight_weeks'],
      hemoglobin_level__first_twelve_weeks: data[0]['hemoglobin_level__first_twelve_weeks'],
      hemoglobin_level__twentysix_twentyeight_weeks: data[0]['hemoglobin_level__twentysix_twentyeight_weeks'],
      blood_group: data[0]['blood_group'],
      vdrl_test__before_twelve_weeks: data[0]['vdrl_test__before_twelve_weeks'],
      vdrl_test__after_twelve_weeks: data[0]['vdrl_test__after_twelve_weeks'],
      hiv_screening: data[0]['hiv_screening'],
      
      mothers_weight__weight_at_first_visit: data[0]['mothers_weight__weight_at_first_visit'],
      mothers_weight__poa_at_first_visit: data[0]['mothers_weight__poa_at_first_visit'],
      mothers_weight__weight_at_last_visit: data[0]['mothers_weight__weight_at_last_visit'],
      mothers_weight__poa_at_last_visit: data[0]['mothers_weight__poa_at_last_visit'],
      mothers_weight__gained_weight_during_pregnancy: data[0]['mothers_weight__gained_weight_during_pregnancy'],

      bmi_before_twelve_weeks: data[0]['bmi_before_twelve_weeks'],

      delivery_informations__date: this.dateconverter(data[0]['delivery_informations__date']),
      delivery_informations__place: data[0]['delivery_informations__place'],
      delivery_informations__outcome: data[0]['delivery_informations__outcome'],
      delivery_informations__sex: data[0]['delivery_informations__sex'],
      mode_of_delivery: data[0]['mode_of_delivery'],

      birth_weight: data[0]['birth_weight'],

      postpartum_visits__within_first_five_days: data[0]['postpartum_visits__within_first_five_days'],
      postpartum_visits__six_to_ten_days: data[0]['postpartum_visits__six_to_ten_days'],
      postpartum_visits__late_first_visit_eleven_thirteen_days: data[0]['postpartum_visits__late_first_visit_eleven_thirteen_days'],
      postpartum_visits__fourteen_twentyone_days: data[0]['postpartum_visits__fourteen_twentyone_days'],
      postpartum_visits__arround_fourtytwo_days: data[0]['postpartum_visits__arround_fourtytwo_days'],

      registration_no_in_bi_register: data[0]['registration_no_in_bi_register'],
      registration_date_in_bi_register: this.dateconverter(data[0]['registration_date_in_bi_register']),
      remarks: data[0]['remarks']
      });
  });
  this.addMotherForm.valueChanges.subscribe(console.log)
  this.autoRenew = new FormControl();
  this.onChange();

  this.motherService.getBabyList(this.motherId).subscribe(
    res=>{
      this.babyList = res;
    }
  )


  }

  onSubmit() {
 
    if (this.addMotherForm.invalid) {
        return;
    }

    this.success=true;
    this.motherService.register(this.addMotherForm.value,this.motherId)
      .subscribe(
        response=>{
          if(response.status==201){
            this.openSnackBar("Updated Successfully");
            this.router.navigate(["viewMothers/"])
          }else{
            this.openSnackBar("Update is Unsuccessfull, Pls enter it again!");
            this.router.navigate([this.router.url,'viewMotherbyId',this.motherId])
          }
        } 
      )
    }

    openSnackBar(msg) {
      this._snackBar.open(msg,"OK")
    }
  

    onChange(){        //Enabling ReadOnly Attribute when toggle is off
      this.onHidden()
      if(this.autoRenew.value){
        return "false"
      }else{
        return "true"
      }
    }

    onHidden(){      //Hide the submit button when toggle is off and vice versa
      if(this.autoRenew.value){
        return true;
      }else{
        return false;
      }
    }

  
  dateconverter(isodate:String){ //Convert ISOFormat data to yyyy-MM-dd format
    if(isodate){
      if(isodate.length == 0){
        return null
      }else{
        return isodate.substr(0,10)
      }
    }
  }

  onClickMe(babyId){
    this.router.navigate(['viewBabies','ViewMotherBabybyID',babyId]);
  }
  goToAddNewBaby(){
    this.router.navigate(['viewBabies','AddMotherBabyJoined']);
  }
}
