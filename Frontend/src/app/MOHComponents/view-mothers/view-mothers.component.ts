import { Component, OnInit } from '@angular/core';
import { MotherService } from 'app/Services/mother.service';
import { Router } from '@angular/router';
import { Mother } from 'app/Services/Models/mother';

@Component({
  selector: 'app-view-mothers',
  templateUrl: './view-mothers.component.html',
  styleUrls: ['./view-mothers.component.scss']
})
export class ViewMothersComponent implements OnInit {

  constructor(private motherService: MotherService, private router: Router) { }

  mother: Mother;
  showTable : Boolean = false;

  ngOnInit() {
    this.motherService.getdata().subscribe(data=> this.mother=data);
  }

  onClickMe(motherID){
    console.log(motherID);
    console.log(this.router.url);
    this.router.navigate([this.router.url,'viewMotherbyId',motherID])
  }

  onKey(event: any){
    console.log(event.target.value)
    this.motherService.searchmotherdataById(event.target.value).subscribe(
      data=>{
        
        this.mother = data.body;
        if(!event.target.value){
          this.showTable = false
          
        }else{
          this.showTable = true;
        }
      }
    )
}

}
