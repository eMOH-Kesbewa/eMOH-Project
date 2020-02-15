import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DentalProblemsComponent } from './dental-problems.component';

describe('DentalProblemsComponent', () => {
  let component: DentalProblemsComponent;
  let fixture: ComponentFixture<DentalProblemsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DentalProblemsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DentalProblemsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
