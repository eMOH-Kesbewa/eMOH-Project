import { Component, OnInit } from '@angular/core';
import { FormGroup, Validators, FormControl } from '@angular/forms';
import { AuthService } from 'src/app/service/auth.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-request-reset',
  templateUrl: './request-reset.component.html',
  styleUrls: ['./request-reset.component.css']
})
export class RequestResetComponent implements OnInit {
  RequestResetForm: FormGroup;
  forbiddenEmails: any;
  errorMessage: string;
  successMessage: string;
  IsvalidForm = true;

  constructor(
    private authService: AuthService,
    private router: Router,
    // private formBuilder: FormBuilder,
  ) { }

  ngOnInit() {
    // this.RequestResetForm = this.formBuilder.group({
    //   username :['', Validators.required ,]
    // });
    this.RequestResetForm = new FormGroup({
      'username' : new FormControl(null, [Validators.required, Validators.email],this.forbiddenEmails),
    });
  }
  RequestResetUser(form){
    console.log(form)
    if(form.valid) {
      this.IsvalidForm =true;

    this.authService.requestReset(this.RequestResetForm.value).subscribe(
      data=> {
        this.RequestResetForm.reset();
        this.successMessage = "Reset password link send to email sucessfully.";
        setTimeout(()=>{
          this.successMessage = null;
          this.router.navigate(['user/login']);
        },3000);
      },
      err => {
        if(err.error.message){
          this.errorMessage = err.error.message;
        }
      }
    );
    }else{
      this.IsvalidForm = false;
    }
  }

}
