import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewWeightByIdComponent } from './view-weight-by-id.component';

describe('ViewWeightByIdComponent', () => {
  let component: ViewWeightByIdComponent;
  let fixture: ComponentFixture<ViewWeightByIdComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ViewWeightByIdComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewWeightByIdComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
