import { Component, OnInit } from '@angular/core';
import { WeightService } from 'app/Services/weight.service';
import { ActivatedRoute } from '@angular/router';
import {Weight} from 'app/Services/Models/weight';
import { Router } from '@angular/router';
import { FormBuilder, FormGroup, Validators,FormControl } from '@angular/forms';

@Component({
  selector: 'app-view-weight-by-id',
  templateUrl: './view-weight-by-id.component.html',
  styleUrls: ['./view-weight-by-id.component.scss']
})
export class ViewWeightByIdComponent implements OnInit {

  constructor(private weightService: WeightService, private router: Router, private activeroute: ActivatedRoute, private formBuilder: FormBuilder) { }

  hide=true;
  success=false;
  


  weights : Weight;
  addWeightForm: FormGroup;
  autoRenew : FormControl;
  public babyId

  ngOnInit() {
    this.babyId = this.activeroute.snapshot.paramMap.get('babyId');
    this.addWeightForm = this.formBuilder.group({

      baby_id:[''],
      batch_no:[''],
      name_of_child:[''],
      sex:[''],
      Date_of_birth:[''],
      weight_of_birth:[''],
	    height_of_birth:[''],
      other_details:[''],

      first_yearone: [''],
      first_yeartwo: [''],
      first_yearthree: [''],
      first_yearfour: [''],
      first_yearfive: [''],
      first_yearsix: [''],
      first_yearseven: [''],
      first_yeareight: [''],
      first_yearnine: [''],
      first_yearten: [''],
      first_yeareleven: [''],
      first_yeartwelve: [''],

      sec_yearone: [''],
      sec_yeartwo: [''],
      sec_yearthree: [''],
      sec_yearfour: [''],
      sec_yearfive: [''],
      sec_yearsix: [''],
      sec_yearseven: [''],
      sec_yeareight: [''],
      sec_yearnine: [''],
      sec_yearten: [''],
      sec_yeareleven: [''],
      sec_yeartwelve: [''],

      third_yearone: [''],
      third_yeartwo: [''],
      third_yearthree: [''],
      third_yearfour: [''],
      third_yearfive: [''],
      third_yearsix: [''],
      third_yearseven: [''],
      third_yeareight: [''],
      third_yearnine: [''],
      third_yearten: [''],
      third_yeareleven: [''],
      third_yeartwelve: [''],

      four_yearone: [''],
      four_yeartwo: [''],
      four_yearthree: [''],
      four_yearfour: [''],
      four_yearfive: [''],
      four_yearsix: [''],
      four_yearseven: [''],
      four_yeareight: [''],
      four_yearnine: [''],
      four_yearten: [''],
      four_yeareleven: [''],
      four_yeartwelve: [''],

      five_yearone: [''],
      five_yeartwo: [''],
      five_yearthree: [''],
      five_yearfour: [''],
      five_yearfive: [''],
      five_yearsix: [''],
      five_yearseven: [''],
      five_yeareight: [''],
      five_yearnine: [''],
      five_yearten: [''],
      five_yeareleven: [''],
      five_yeartwelve: [''],

      //height
      oneyeardate:[''],
      twoyeardate:[''],
      threeyeardate:[''],
      foueyeardate:[''],
      fiveyeardate:[''],
      oneyearheight:[''],
      twoyearheight:[''],
      threeyearheight:[''],
      foueyearheight:[''],
      fiveyearheight:['']

    });

    this.weightService.getbabyweightById(this.babyId).subscribe(data => {
      this.addWeightForm.patchValue({
        
          baby_id:data[0] ['baby_id'] ,
          batch_no:data[0] ['batch_no'],
          name_of_child:data[0] ['name_of_child'],
          sex:data[0] ['sex'],
          Date_of_birth:this.dateconverter(data[0] ['Date_of_birth']),
          weight_of_birth:data[0] ['weight_of_birth'],
          height_of_birth:data[0] ['height_of_birth'],
          other_details:data[0] ['other_details'],

          first_yearone: data[0] ['first_yearone'],
          first_yeartwo: data[0] ['first_yeartwo'],
          first_yearthree: data[0] ['first_yearthree'],
          first_yearfour: data[0] ['first_yearfour'],
          first_yearfive: data[0] ['first_yearfive'],
          first_yearsix: data[0] ['first_yearsix'],
          first_yearseven: data[0] ['first_yearseven'],
          first_yeareight: data[0] ['first_yeareight'],
          first_yearnine: data[0] ['first_yearnine'],
          first_yearten: data[0] ['first_yearten'],
          first_yeareleven: data[0] ['first_yeareleven'],
          first_yeartwelve: data[0] ['first_yeartwelve'],

          sec_yearone: data[0] ['sec_yearone'],
          sec_yeartwo: data[0] ['sec_yeartwo'],
          sec_yearthree: data[0] ['sec_yearthree'],
          sec_yearfour: data[0] ['sec_yearfour'],
          sec_yearfive: data[0] ['sec_yearfive'],
          sec_yearsix: data[0] ['sec_yearsix'],
          sec_yearseven: data[0] ['sec_yearseven'],
          sec_yeareight: data[0] ['sec_yeareight'],
          sec_yearnine: data[0] ['sec_yearnine'],
          sec_yearten: data[0] ['sec_yearten'],
          sec_yeareleven: data[0] ['sec_yeareleven'],
          sec_yeartwelve: data[0] ['sec_yeartwelve'],

          third_yearone: data[0] ['third_yearone'],
          third_yeartwo: data[0] ['third_yeartwo'],
          third_yearthree: data[0] ['third_yearthree'],
          third_yearfour: data[0] ['third_yearfour'],
          third_yearfive: data[0] ['third_yearfive'],
          third_yearsix: data[0] ['third_yearsix'],
          third_yearseven: data[0] ['third_yearseven'],
          third_yeareight: data[0] ['third_yeareight'],
          third_yearnine: data[0] ['third_yearnine'],
          third_yearten: data[0] ['third_yearten'],
          third_yeareleven: data[0] ['third_yeareleven'],
          third_yeartwelve: data[0] ['third_yeartwelve'],

          four_yearone: data[0] ['four_yearone'],
          four_yeartwo: data[0] ['four_yeartwo'],
          four_yearthree: data[0] ['four_yearthree'],
          four_yearfour: data[0] ['four_yearfour'],
          four_yearfive: data[0] ['four_yearfive'],
          four_yearsix: data[0] ['four_yearsix'],
          four_yearseven: data[0] ['four_yearseven'],
          four_yeareight: data[0] ['four_yeareight'],
          four_yearnine: data[0] ['four_yearnine'],
          four_yearten: data[0] ['four_yearten'],
          four_yeareleven: data[0] ['four_yeareleven'],
          four_yeartwelve: data[0] ['four_yeartwelve'],

          five_yearone: data[0] ['five_yearone'],
          five_yeartwo: data[0] ['five_yeartwo'],
          five_yearthree: data[0] ['five_yearthree'],
          five_yearfour: data[0] ['five_yearfour'],
          five_yearfive: data[0] ['five_yearfive'],
          five_yearsix: data[0] ['five_yearsix'],
          five_yearseven: data[0] ['five_yearseven'],
          five_yeareight: data[0] ['five_yeareight'],
          five_yearnine: data[0] ['five_yearnine'],
          five_yearten: data[0] ['five_yearten'],
          five_yeareleven: data[0] ['five_yeareleven'],
          five_yeartwelve: data[0] ['five_yeartwelve'],

          //height
          oneyeardate:this.dateconverter(data[0] ['oneyeardate']),
          twoyeardate:this.dateconverter(data[0] ['twoyeardate']),
          threeyeardate:this.dateconverter(data[0] ['threeyeardate']),
          foueyeardate:this.dateconverter(data[0] ['foueyeardate']),
          fiveyeardate:this.dateconverter(data[0] ['fiveyeardate']),
          oneyearheight:data[0] ['oneyearheight'],
          twoyearheight:data[0] ['twoyearheight'],
          threeyearheight:data[0] ['threeyearheight'],
          foueyearheight:data[0] ['foueyearheight'],
          fiveyearheight:data[0] ['fiveyearheight']
      });

    });

    this.addWeightForm.valueChanges.subscribe(console.log)
    this.autoRenew = new FormControl();
    this.onChange();

  }
  onSubmit() {
  
    if (this.addWeightForm.invalid) {
        return;
    }

    this.success = true;
    this.weightService.add(this.addWeightForm.value)
      .subscribe(
        response=>console.log('Success!',response),
        error=>{
          if(error) console.log("Failure") 
          else console.log("Success No Errors")
        }
    );

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

}
