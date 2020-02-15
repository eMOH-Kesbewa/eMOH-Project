import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { EyeProblemsComponent } from './eye-problems.component';

describe('EyeProblemsComponent', () => {
  let component: EyeProblemsComponent;
  let fixture: ComponentFixture<EyeProblemsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ EyeProblemsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(EyeProblemsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
