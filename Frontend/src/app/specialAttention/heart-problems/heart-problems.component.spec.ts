import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HeartProblemsComponent } from './heart-problems.component';

describe('HeartProblemsComponent', () => {
  let component: HeartProblemsComponent;
  let fixture: ComponentFixture<HeartProblemsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HeartProblemsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HeartProblemsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
