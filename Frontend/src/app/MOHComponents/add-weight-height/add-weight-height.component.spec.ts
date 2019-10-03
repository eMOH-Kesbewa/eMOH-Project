import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AddWeightHeightComponent } from './add-weight-height.component';

describe('AddWeightHeightComponent', () => {
  let component: AddWeightHeightComponent;
  let fixture: ComponentFixture<AddWeightHeightComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AddWeightHeightComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AddWeightHeightComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
