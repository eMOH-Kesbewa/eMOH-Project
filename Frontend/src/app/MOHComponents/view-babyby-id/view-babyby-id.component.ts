import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-view-babyby-id',
  templateUrl: './view-babyby-id.component.html',
  styleUrls: ['./view-babyby-id.component.scss']
})
export class ViewBabybyIDComponent implements OnInit {

  constructor(private route: ActivatedRoute) { }

  ngOnInit() {
    let id = parseInt(this.route.snapshot.paramMap.get('babyId'));
    console.log(id);
  }

 
}
