import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewMotherByIDComponent } from './view-mother-by-id.component';

describe('ViewMotherByIDComponent', () => {
  let component: ViewMotherByIDComponent;
  let fixture: ComponentFixture<ViewMotherByIDComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ViewMotherByIDComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewMotherByIDComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
