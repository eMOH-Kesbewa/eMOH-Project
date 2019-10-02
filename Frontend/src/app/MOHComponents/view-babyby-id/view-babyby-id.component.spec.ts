import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewBabybyIDComponent } from './view-babyby-id.component';

describe('ViewBabybyIDComponent', () => {
  let component: ViewBabybyIDComponent;
  let fixture: ComponentFixture<ViewBabybyIDComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ViewBabybyIDComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewBabybyIDComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
