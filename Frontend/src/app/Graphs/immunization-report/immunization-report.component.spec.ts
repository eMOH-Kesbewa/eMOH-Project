import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ImmunizationReportComponent } from './immunization-report.component';

describe('ImmunizationReportComponent', () => {
  let component: ImmunizationReportComponent;
  let fixture: ComponentFixture<ImmunizationReportComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ImmunizationReportComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ImmunizationReportComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
