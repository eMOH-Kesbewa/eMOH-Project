import { Component, OnInit } from '@angular/core';
import { AuthService } from './service/auth.service';
import { FlashMessagesService } from 'angular2-flash-messages';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit{
  
  username:String;
  password:String;
  
  constructor(
    private authService:AuthService,
    private flashMessages:FlashMessagesService
  ){}

  ngOnInit(){

  }
  title = 'LoginF';
  
  logindata(){
    console.log("correct");
    const user = {
      username:this.username,
      password:this.password
    };
    console.log(user);
    this.authService.logindata(user).subscribe(res=>{
      console.log(res);
     if(res.state){
      this.flashMessages.show("you are login successfully" , {cssClass: 'alert-success',timeout:5000});
     }else{
      this.flashMessages.show("error be found" , {cssClass: 'alert-success',timeout:5000});
     }
     

    })
  }

}
