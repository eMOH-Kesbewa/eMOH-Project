import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ClinicRecordsComponent } from './clinic-records.component';

describe('ClinicRecordsComponent', () => {
  let component: ClinicRecordsComponent;
  let fixture: ComponentFixture<ClinicRecordsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ClinicRecordsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ClinicRecordsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
