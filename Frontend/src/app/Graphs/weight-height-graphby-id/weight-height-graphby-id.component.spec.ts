import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { WeightHeightGraphbyIdComponent } from './weight-height-graphby-id.component';

describe('WeightHeightGraphbyIdComponent', () => {
  let component: WeightHeightGraphbyIdComponent;
  let fixture: ComponentFixture<WeightHeightGraphbyIdComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ WeightHeightGraphbyIdComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(WeightHeightGraphbyIdComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
