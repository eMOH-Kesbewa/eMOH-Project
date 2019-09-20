import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AddApprovedFamiliesComponent } from './add-approved-families.component';

describe('AddApprovedFamiliesComponent', () => {
  let component: AddApprovedFamiliesComponent;
  let fixture: ComponentFixture<AddApprovedFamiliesComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AddApprovedFamiliesComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AddApprovedFamiliesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
