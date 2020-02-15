import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HearingProblemsComponent } from './hearing-problems.component';

describe('HearingProblemsComponent', () => {
  let component: HearingProblemsComponent;
  let fixture: ComponentFixture<HearingProblemsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HearingProblemsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HearingProblemsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
