import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { LowWeightBabiesComponent } from './low-weight-babies.component';

describe('LowWeightBabiesComponent', () => {
  let component: LowWeightBabiesComponent;
  let fixture: ComponentFixture<LowWeightBabiesComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ LowWeightBabiesComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(LowWeightBabiesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
