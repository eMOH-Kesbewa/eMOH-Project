import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewFamilybyIdComponent } from './view-familyby-id.component';

describe('ViewFamilybyIdComponent', () => {
  let component: ViewFamilybyIdComponent;
  let fixture: ComponentFixture<ViewFamilybyIdComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ViewFamilybyIdComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewFamilybyIdComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
