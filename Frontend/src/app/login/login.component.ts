import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { AuthService } from 'app/Services/auth.service';
import { Router } from '@angular/router';
import { SimpleSnackBar, MatSnackBar } from '@angular/material';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {

  loginForm: FormGroup;

  constructor(private formBuilder: FormBuilder,private authService : AuthService, private router: Router,private snackbar: MatSnackBar) { }

  ngOnInit() {
    console.log(this.router.url);
    this.loginForm = this.formBuilder.group({
      username : ['', Validators.email],
      password: ['', Validators.required],
  })

  this.loginForm.valueChanges.subscribe(console.log)
}

  onSubmit(){
    console.log(this.loginForm.value)
    this.authService.loginUser(this.loginForm.value).subscribe(
      res=>{
        console.log(res);
        localStorage.setItem('token',res.token);
        localStorage.setItem('userid',res.userid);
        localStorage.setItem('username',res.username);
        localStorage.setItem('role',res.role);
        this.router.navigate(['']);
      },
      err=>{
        console.log(err);
        this.snackbar.open('Your Password Or Email is Invalid, Pls Enter Again', 'OK');
      }
    )
  }
     

}
