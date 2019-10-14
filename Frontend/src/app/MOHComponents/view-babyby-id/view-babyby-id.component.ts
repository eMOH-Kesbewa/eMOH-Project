import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { MotherbabyjoinedService } from 'app/Services/motherbabyjoined.service';
import { FormBuilder, FormGroup, FormControl, Validators } from '@angular/forms';
import { motherbabyjoined } from 'app/Services/Models/motherbabyjoined';

@Component({
  selector: 'app-view-babyby-id',
  templateUrl: './view-babyby-id.component.html',
  styleUrls: ['./view-babyby-id.component.scss']
})
export class ViewBabybyIDComponent implements OnInit {

  constructor(private motherbabyjoinedservice : MotherbabyjoinedService,private router: Router,private activeroute: ActivatedRoute,private formBuilder: FormBuilder) { }

  motherbabyjoineddata : motherbabyjoined;
  addmotherbabyForm: FormGroup;
  autoRenew : FormControl;
  public babyId

  ngOnInit() {
    this.babyId = this.activeroute.snapshot.paramMap.get('babyId');
    this.addmotherbabyForm=this.formBuilder.group({
      mother_id: ['', Validators.required],
      child_name: ['', Validators.required],
      mothers_name: ['', Validators.required],
      address: ['', Validators.required],
      sex: ['', Validators.required],
      date_of_birth: ['', Validators.required],
      birth_weight: ['', Validators.required],
      registration_date: ['', Validators.required],
      registration_category: ['', Validators.required],
      immunization__BGC: [''],
      immunization__scar: [false],
      immunization__pentavalent__first: [''],
      immunization__pentavalent__second: [''],
      immunization__pentavalent__third: [''],
      immunization__polio__opv__first: [''],
      immunization__polio__opv__second: [''],
      immunization__polio__opv__third: [''],
      immunization__polio__fipv__two_m: [''],
      immunization__polio__fipv__foru_m: [''],
      immunization__japanese_encephalitis: [''],
      immunization__measles_mumps_rubella_mmr_1: [''],
      immunization__diptheria_pertusis_tetanus_4: [''],
      immunization__polio_4: [''],
      immunization__measles_mumps_rubella_mmr_2: [''],
      immunization__diptheria_tetanus_5: [''],
      immunization__diptheria_tetanus_6: [''],
      vitamin_a_mega_dose__postnatal_mothers: [''],
      vitamin_a_mega_dose__at_sixth_month: [''],
      vitamin_a_mega_dose__at_first_year: [''],
      vitamin_a_mega_dose__at_one_and_half_yr: [''],
      vitamin_a_mega_dose__at_year_two: [''],
      vitamin_a_mega_dose__at_year_two_and_half: [''],
      vitamin_a_mega_dose__at_year_three: [''],
      vitamin_a_mega_dose__at_year_three_and_half: [''],
      vitamin_a_mega_dose__at_year_four: [''],
      vitamin_a_mega_dose__at_year_four_and_half: [''],
      vitamin_a_mega_dose__at_year_nine: [''],
      vitamin_a_mega_dose__at_year_twelve: [''],
      remarks: ['']
      });
  
      //this.motherbabyjoinedservice.getmotherbabyjoineddataById(this.babyId)
    
      this.motherbabyjoinedservice.getmotherbabyjoineddataById(this.babyId).subscribe(data => {
          this.addmotherbabyForm.patchValue({
          mother_id: data[0]['mother_id'],
          child_name: data[0]['child_name'],
          mothers_name: data[0]['mothers_name'],
          address: data[0]['address'],
          sex: data[0]['sex'],
          date_of_birth: this.dateconverter(data[0]['date_of_birth']),
          birth_weight: data[0]['birth_weight'],
          registration_date: this.dateconverter(data[0]['registration_date']),
          registration_category: data[0]['registration_category'],
          immunization__BGC: this.dateconverter(data[0]['immunization__BGC']),
          immunization__scar: data[0]['immunization__scar'],
          immunization__pentavalent__first: this.dateconverter(data[0]['immunization__pentavalent__first']),
          immunization__pentavalent__second: this.dateconverter(data[0]['immunization__pentavalent__second']),
          immunization__pentavalent__third: this.dateconverter(data[0]['villimmunization__pentavalent__thirdage_id']),
          immunization__polio__opv__first: this.dateconverter(data[0]['immunization__polio__opv__first']),
          immunization__polio__opv__second: this.dateconverter(data[0]['immunization__polio__opv__second']),
          immunization__polio__opv__third: this.dateconverter(data[0]['immunization__polio__opv__third']),
          immunization__polio__fipv__two_m: this.dateconverter(data[0]['immunization__polio__fipv__two_m']),
          immunization__polio__fipv__foru_m: this.dateconverter(data[0]['immunization__polio__fipv__foru_m']),
          immunization__japanese_encephalitis: this.dateconverter(data[0]['immunization__japanese_encephalitis']),
          immunization__measles_mumps_rubella_mmr_1: this.dateconverter(data[0]['immunization__measles_mumps_rubella_mmr_1']),
          immunization__diptheria_pertusis_tetanus_4: this.dateconverter(data[0]['immunization__diptheria_pertusis_tetanus_4']),
          immunization__polio_4: this.dateconverter(data[0]['immunization__polio_4']),
          immunization__measles_mumps_rubella_mmr_2: this.dateconverter(data[0]['immunization__measles_mumps_rubella_mmr_2']),
          immunization__diptheria_tetanus_5: this.dateconverter(data[0]['immunization__diptheria_tetanus_5']),
          immunization__diptheria_tetanus_6: this.dateconverter(data[0]['immunization__diptheria_tetanus_6']),
          vitamin_a_mega_dose__postnatal_mothers: this.dateconverter(data[0]['vitamin_a_mega_dose__postnatal_mothers']),
          vitamin_a_mega_dose__at_sixth_month: this.dateconverter(data[0]['vitamin_a_mega_dose__at_sixth_month']),
          vitamin_a_mega_dose__at_first_year: this.dateconverter(data[0]['vitamin_a_mega_dose__at_first_year']),
          vitamin_a_mega_dose__at_one_and_half_yr: this.dateconverter(data[0]['vitamin_a_mega_dose__at_one_and_half_yr']),
          vitamin_a_mega_dose__at_year_two: this.dateconverter(data[0]['vitamin_a_mega_dose__at_year_two']),
          vitamin_a_mega_dose__at_year_two_and_half: this.dateconverter(data[0]['vitamin_a_mega_dose__at_year_two_and_half']),
          vitamin_a_mega_dose__at_year_three: this.dateconverter(data[0]['vitamin_a_mega_dose__at_year_three']),
          vitamin_a_mega_dose__at_year_three_and_half: this.dateconverter(data[0]['vitamin_a_mega_dose__at_year_three_and_half']),
          vitamin_a_mega_dose__at_year_four: this.dateconverter(data[0]['vitamin_a_mega_dose__at_year_four']),
          vitamin_a_mega_dose__at_year_four_and_half: this.dateconverter(data[0]['vitamin_a_mega_dose__at_year_four_and_half']),
          vitamin_a_mega_dose__at_year_nine: this.dateconverter(data[0]['villavitamin_a_mega_dose__at_year_ninege_id']),
          vitamin_a_mega_dose__at_year_twelve: this.dateconverter(data[0]['vitamin_a_mega_dose__at_year_twelve']),
          remarks: data[0]['remarks']
        });
    });

    this.addmotherbabyForm.valueChanges.subscribe(console.log)
    this.autoRenew = new FormControl();
    this.onChange();
    
  }

  onSubmit() {
 
    if (this.addmotherbabyForm.invalid) {
        return;
    }
    
    this.motherbabyjoinedservice.register(this.addmotherbabyForm.value,this.babyId)
      .subscribe(
        response=>console.log('Success!',response),
        error=>{
          if(error) console.log("Failure") 
          else console.log("Success No Errors")
        })
    
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

    onClickMe(){
      console.log(this.babyId);
      this.router.navigate(["viewApprovedFamilies/",'AddMother',this.babyId])
      
    }

    goToBabyBook(){
      console.log(this.babyId);
      this.router.navigate(["viewBabies/",'UpdateBabyBook',this.babyId])
      
    }

   

}

