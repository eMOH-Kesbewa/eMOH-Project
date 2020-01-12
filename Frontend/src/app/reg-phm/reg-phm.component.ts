import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { AuthService } from 'app/Services/auth.service';
import { Router } from '@angular/router';
import { MatSnackBar } from '@angular/material';

@Component({
  selector: 'app-reg-phm',
  templateUrl: './reg-phm.component.html',
  styleUrls: ['./reg-phm.component.scss']
})
export class RegPHMComponent implements OnInit {

  regPHMform: FormGroup;
  generatedPassword;
  constructor(private formBuilder: FormBuilder,private authService : AuthService, private router: Router,private snackBar : MatSnackBar) { }

  ngOnInit() {
    this.generatedPassword = this.generatePassword()
    this.regPHMform = this.formBuilder.group({
      username : ['', Validators.email],
      userid : ['', Validators.required],
      password: [this.generatedPassword, Validators.required],
      areaId:['', Validators.required],
      role:['PHM']
  })
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
    console.log(this.regPHMform.value)
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
}



