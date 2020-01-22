import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PhmDailyReportsComponent } from './phm-daily-reports.component';

describe('PhmDailyReportsComponent', () => {
  let component: PhmDailyReportsComponent;
  let fixture: ComponentFixture<PhmDailyReportsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PhmDailyReportsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PhmDailyReportsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
