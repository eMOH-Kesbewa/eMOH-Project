import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewApprovedFamiliesComponent } from './view-approved-families.component';

describe('ViewApprovedFamiliesComponent', () => {
  let component: ViewApprovedFamiliesComponent;
  let fixture: ComponentFixture<ViewApprovedFamiliesComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ViewApprovedFamiliesComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewApprovedFamiliesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
