import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { AuthService } from 'app/Services/auth.service';
import { Router } from '@angular/router';
import { MatSnackBar } from '@angular/material';
import { concat } from 'rxjs';

@Component({
  selector: 'app-reg-mother',
  templateUrl: './reg-mother.component.html',
  styleUrls: ['./reg-mother.component.scss']
})
export class RegMotherComponent implements OnInit {
  
  passwordType = "password";
  regMotherForm: FormGroup;
  generatedPassword;
  constructor(private formBuilder: FormBuilder,private authService : AuthService, private router: Router,private snackBar : MatSnackBar) { }

  ngOnInit() {
    if(localStorage.getItem('role')=="mother") this.router.navigate([''])
    this.generatedPassword = this.generatePassword()
    this.regMotherForm = this.formBuilder.group({
      username : ['', Validators.email],
      userid : ['', Validators.required],
      password: [this.generatedPassword, Validators.required],
      villageId:['', Validators.required],
      role:['Mother']
  })
  

  this.authService.getPreviousUserId(localStorage.getItem('userid').substr(0,1)).subscribe(
    data => {
    console.log(data[0]);
    this.regMotherForm.patchValue({
      userid : this.generaterUserId(data[0]['userid']),
 


})
  })
  
  }
  generaterUserId(userid){
    console.log(userid.substr(1,1))
    console.log(userid.substr(3,))
    var motherNo = parseInt(userid.substr(3,))
    return (userid.substr(1,1).concat(motherNo+1))
  }


  generatePassword(){
    var length = 8;
    var result           = '';
    var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    var charactersLength = characters.length;
    for ( var i = 0; i < length; i++ ) {
      result += characters.charAt(Math.floor(Math.random() * charactersLength));
    }
    return result;
  }

  onSubmit(){
    console.log(this.regMotherForm.value['villageId']);
    console.log(this.regMotherForm.value['userid'])
    this.regMotherForm.value['userid'] = this.regMotherForm.value['villageId'].concat(this.regMotherForm.value['userid'])
    console.log(this.regMotherForm.value)
    this.authService.registerUser(this.regMotherForm.value).subscribe(
      res=> console.log(res),    
      err=> console.log(err)
    )
  }

  showPassword(){
    if(this.passwordType=="text") this.passwordType = "password"
    else this.passwordType="text"
  }
}
