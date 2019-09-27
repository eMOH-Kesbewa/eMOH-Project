import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AddClinicComponent } from './add-clinic.component';

describe('AddClinicComponent', () => {
  let component: AddClinicComponent;
  let fixture: ComponentFixture<AddClinicComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AddClinicComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AddClinicComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
