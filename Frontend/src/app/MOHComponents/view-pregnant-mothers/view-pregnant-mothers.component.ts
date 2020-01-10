import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Pdoc } from 'app/Services/Models/pdoc';
import { PdocService } from 'app/Services/pdoc.service';


@Component({
  selector: 'app-view-pregnant-mothers',
  templateUrl: './view-pregnant-mothers.component.html',
  styleUrls: ['./view-pregnant-mothers.component.scss']
})
export class ViewPregnantMothersComponent implements OnInit {

  constructor(private pdocService: PdocService,private router: Router) { }
 
   pdoc : Pdoc;
   showTable : Boolean = false;
  ngOnInit() {
    this.pdocService.getdata().subscribe(data=>this.pdoc = data);
    
  }
  // onClickMe(motherID){
  //   console.log(motherID);
  //   console.log(this.router.url);
  //   this.router.navigate([this.router.url,'viewMotherbyId',motherID])
  // }

}
