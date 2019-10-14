import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-view-pregnant-mothers',
  templateUrl: './view-pregnant-mothers.component.html',
  styleUrls: ['./view-pregnant-mothers.component.scss']
})
export class ViewPregnantMothersComponent implements OnInit {

  constructor(private router: Router) { }

  ngOnInit() {
  }

}
