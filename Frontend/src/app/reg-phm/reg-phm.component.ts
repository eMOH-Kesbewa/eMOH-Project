import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { AuthService } from 'app/Services/auth.service';
import { Router } from '@angular/router';
import { MatSnackBar } from '@angular/material';
import * as JWT from 'jwt-decode';
@Component({
  selector: 'app-reg-phm',
  templateUrl: './reg-phm.component.html',
  styleUrls: ['./reg-phm.component.scss']
})
export class RegPHMComponent implements OnInit {

  passwordType = "password";
  regPHMform: FormGroup;
  generatedPassword;
  areaIds=[1,2,3,4,5,6,7,8,9]
  constructor(private formBuilder: FormBuilder,private authService : AuthService, private router: Router,private snackBar : MatSnackBar) { }

  ngOnInit() {
    let decodedToken = JWT(localStorage.getItem('token'));
    let role = decodedToken['role'];
    if(role!="Doctor") this.router.navigate([''])
    this.generatedPassword = this.generatePassword()
    this.regPHMform = this.formBuilder.group({
      username : ['', Validators.email],
      userid : ['', Validators.required],
      password: [this.generatedPassword, Validators.required],
      areaId:['', Validators.required],
      role:['PHM']
  })
}
  //generate password with random letters and numbers
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
  //Submitting the form value
  onSubmit(){
    console.log(this.regPHMform.value)
    let areaId = this.regPHMform.value['areaId'].toString()
    this.regPHMform.value['userid'] = areaId.concat(this.regPHMform.value['userid'])
    this.authService.registerUser(this.regPHMform.value).subscribe(
      res=>{
        console.log(res)
        let snackBarRef = this.snackBar.open('Password is '+this.generatedPassword, 'OK');
        localStorage.setItem('newpassword',this.generatedPassword);
        localStorage.setItem('newusername',this.regPHMform.value['username']);
        this.router.navigate(['']);
      },
      err=>console.log(err)
    )
  }

  showPassword(){
    if(this.passwordType=="text") this.passwordType = "password"
    else this.passwordType="text"
  }
}



