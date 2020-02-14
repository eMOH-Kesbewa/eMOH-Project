import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FamilyReportComponent } from './family-report.component';

describe('FamilyReportComponent', () => {
  let component: FamilyReportComponent;
  let fixture: ComponentFixture<FamilyReportComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FamilyReportComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FamilyReportComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
