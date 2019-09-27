import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AddmotherbabyjoineddataComponent } from './addmotherbabyjoineddata.component';

describe('AddmotherbabyjoineddataComponent', () => {
  let component: AddmotherbabyjoineddataComponent;
  let fixture: ComponentFixture<AddmotherbabyjoineddataComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AddmotherbabyjoineddataComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AddmotherbabyjoineddataComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
